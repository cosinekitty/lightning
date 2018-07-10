#!/usr/bin/env python3
import pigpio
import signal

def OnStrike(gpio, level, tick):
    print('Lightning! gpio={0}, level={1}, tick={2}'.format(gpio, level, tick))

LIDETPIN = 21

pins = pigpio.pi()
pins.set_mode(LIDETPIN, pigpio.INPUT)
pins.set_pull_up_down(LIDETPIN, pigpio.PUD_UP)
pins.callback(LIDETPIN, pigpio.EITHER_EDGE, OnStrike)

print('Ready.')
signal.pause()

pins.stop()
