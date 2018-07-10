#!/usr/bin/env python3
import datetime
import signal
import pigpio

def OnStrike(gpio, level, tick):
    with open('strike.log', 'at') as logfile:
        logfile.write('{0} {1} {2}\n'.format(datetime.datetime.utcnow(), tick, level))

LIDETPIN = 21

pins = pigpio.pi()
pins.set_mode(LIDETPIN, pigpio.INPUT)
pins.set_pull_up_down(LIDETPIN, pigpio.PUD_UP)
pins.callback(LIDETPIN, pigpio.EITHER_EDGE, OnStrike)

print('Ready.')
signal.pause()

pins.stop()
