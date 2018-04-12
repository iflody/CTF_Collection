#!/usr/bin/python

import string
import random
import _7amebox_patched
from hashlib import sha1

# proof of work
print """
------------------------------------------------------------------------------------
if not (answer.startswith(prefix) and sha1(answer).hexdigest().endswith('000000')):
    print 'nope'
    exit(-1)
------------------------------------------------------------------------------------
"""
prefix = ''.join(random.sample(string.letters + string.digits, 6))
print 'prefix : {}'.format(prefix)
answer = raw_input('answer : ')
if not (answer.startswith(prefix) and sha1(answer).hexdigest().endswith('000000')):
    print 'nope'
    exit(-1)

firmware = 'tiny_adventure.firm'

emu = _7amebox_patched.EMU()
emu.filesystem.load_file('flag')
emu.filesystem.load_file('stage.map')
emu.register.init_register()
emu.init_pipeline()
emu.set_mitigation(nx=True)
emu.load_firmware(firmware)
emu.set_timeout(220)
emu.execute()
