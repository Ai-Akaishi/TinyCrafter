#!/usr/bin/env python
# -*- coding: utf-8 -*-

import codecs

template = '''### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 0.0 0.1
## 1.0 1.1
data modify storage pretty_crafter: items.0.0 set from entity @s Inventory[{Slot:$1b}]
data modify storage pretty_crafter: items.0.1 set from entity @s Inventory[{Slot:$2b}]
data modify storage pretty_crafter: items.1.0 set from entity @s Inventory[{Slot:$3b}]
data modify storage pretty_crafter: items.1.1 set from entity @s Inventory[{Slot:$4b}]
'''

t1 = ['9','10','11','12','13','14','15','18']
t2 = ['10','11','12','13','14','15','16','19']
t3 = ['18','19','20','21','22','23','24','27']
t4 = ['19','20','21','22','23','24','25','28']
slots = ['20','21','22','23','24','25','26','29']

for i, name in enumerate(slots):
    # path = os.path.join(os.path.dirname(__file__), name)
    path = os.path.dirname(__file__)
    os.makedirs(path, exist_ok=True)
    with codecs.open(os.path.join(path, name + '.mcfunction'), 'w', 'utf_8') as f:
        f.write(template.replace('$0', name).replace('$1', t1[i]).replace('$2', t2[i]).replace('$3', t3[i]).replace('$4', t4[i]))
