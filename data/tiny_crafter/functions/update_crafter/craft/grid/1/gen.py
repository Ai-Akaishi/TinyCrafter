#!/usr/bin/env python
# -*- coding: utf-8 -*-

import codecs

template = '''### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage pretty_crafter: items.0.0 set from entity @s Inventory[{Slot:$1b}]
'''

t1 = ['9','10','11','12','13','14','15','16','18','27']
slots = ['10','11','12','13','14','15','16','17','19','28']

for i, name in enumerate(slots):
    # path = os.path.join(os.path.dirname(__file__), name)
    path = os.path.dirname(__file__)
    os.makedirs(path, exist_ok=True)
    with codecs.open(os.path.join(path, name + '.mcfunction'), 'w', 'utf_8') as f:
        f.write(template.replace('$0', name).replace('$1', t1[i]))
