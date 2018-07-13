#!/usr/bin/env python3
import sys
import datetime
import signal
import pigpio

CurrentStrike = None

def OnStrike(gpio, level, tick):
    global CurrentStrike
    utc = datetime.datetime.utcnow()
    # print('{0} {1} {2}'.format(gpio, level, tick))
    if level == 0:
        CurrentStrike = { 'utc': utc, 'tick': tick }
    else:
        with open('strike.log', 'at') as logfile:
            utcDelta = (utc - CurrentStrike['utc']).total_seconds()
            tickDelta = tick - CurrentStrike['tick']
            logfile.write('{0} {1:0.6f} {2:10d} {3:4d}\n'.format(CurrentStrike['utc'], utcDelta, tick, tickDelta))
        CurrentStrike = None

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
            signal.pause()
        except (KeyboardInterrupt, SystemExit):
            pass

    pins.stop()
    sys.exit(0)
