#!/usr/bin/env python3
import sys
import time
import datetime
import traceback
import pigpio

CurrentStrike = None
FatalError = False

def OnStrike(gpio, level, tick):
    global CurrentStrike
    global FatalError
    try:
        utc = datetime.datetime.utcnow()
        # print('{0} {1} {2}'.format(gpio, level, tick))
        if level == 0:
            CurrentStrike = { 'utc': utc, 'tick': tick }
        elif CurrentStrike:
            with open('strike.log', 'at') as logfile:
                utcDelta = (utc - CurrentStrike['utc']).total_seconds()
                tickDelta = tick - CurrentStrike['tick']
                logfile.write('{0} {1:0.6f} {2:10d} {3:4d}\n'.format(CurrentStrike['utc'], utcDelta, tick, tickDelta))
            CurrentStrike = None
    except:
        try:
            # This program runs as a cron job, so I don't see any console output.
            # Write the exception stack trace to the logger.log file so I can see it.
            tb = traceback.format_exc()
            now = str(datetime.datetime.now())
            with open('logger.log', 'at') as dumpfile:
                dumpfile.write('{0} *** EXCEPTION in lidet.py: {1}'.format(now, tb))
        except:
            pass    # can't do anything about exceptions in the exception handler!
        FatalError = True

LIDETPIN = 21

if __name__ == '__main__':
    pins = pigpio.pi()
    if not pins.connected:
        sys.exit(9)

    pins.set_mode(LIDETPIN, pigpio.INPUT)
    pins.set_pull_up_down(LIDETPIN, pigpio.PUD_UP)
    pins.callback(LIDETPIN, pigpio.EITHER_EDGE, OnStrike)

    if len(sys.argv) == 2 and sys.argv[1] == 'hack':
        print('Immediate exit hack.')
    else:
        try:
            while True:
                time.sleep(1)
                if FatalError:
                    sys.exit(8)
        except (KeyboardInterrupt, SystemExit):
            pass

    pins.stop()
    sys.exit(0)
