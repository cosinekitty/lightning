#!/usr/bin/env python3
import sys
import datetime
import signal
import pigpio

CurrentStrike = None

def OnStrike(gpio, level, tick):
    global CurrentStrike
    utc = datetime.datetime.utcnow()
    if level == 0:
        CurrentStrike = { 'utc': utc, 'tick': tick }
    else:
        with open('strike.log', 'at') as logfile:
            utcDelta = (utc - CurrentStrike['utc']).total_seconds()
            tickDelta = tick - CurrentStrike['tick']
            logfile.write('{0} {1:0.6f} {2:10d} {3:6d}\n'.format(CurrentStrike['utc'], utcDelta, tick, tickDelta))
        CurrentStrike = None

LIDETPIN = 21

if __name__ == '__main__':
    pins = pigpio.pi()
    pins.set_mode(LIDETPIN, pigpio.INPUT)
    pins.set_pull_up_down(LIDETPIN, pigpio.PUD_UP)
    pins.callback(LIDETPIN, pigpio.EITHER_EDGE, OnStrike)

    try:
        signal.pause()
    except (KeyboardInterrupt, SystemExit):
        pass

    pins.stop()
    sys.exit(0)
