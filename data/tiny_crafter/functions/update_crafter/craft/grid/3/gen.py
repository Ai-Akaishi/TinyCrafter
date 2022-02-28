#!/usr/bin/env python
# -*- coding: utf-8 -*-

import codecs

template = '''### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 0.0 0.1 0.2
## 1.0 1.1 1.2
## 2.0 2.1 2.2
data modify storage pretty_crafter: items.0.0 set from entity @s Inventory[{Slot:$1b}]
data modify storage pretty_crafter: items.0.1 set from entity @s Inventory[{Slot:$2b}]
data modify storage pretty_crafter: items.0.2 set from entity @s Inventory[{Slot:$3b}]
data modify storage pretty_crafter: items.1.0 set from entity @s Inventory[{Slot:$4b}]
data modify storage pretty_crafter: items.1.1 set from entity @s Inventory[{Slot:$5b}]
data modify storage pretty_crafter: items.1.2 set from entity @s Inventory[{Slot:$6b}]
data modify storage pretty_crafter: items.2.0 set from entity @s Inventory[{Slot:$7b}]
data modify storage pretty_crafter: items.2.1 set from entity @s Inventory[{Slot:$8b}]
data modify storage pretty_crafter: items.2.2 set from entity @s Inventory[{Slot:$9b}]
'''

t1 = ['9','10','11','12','13','14']
t2 = ['10','11','12','13','14','15']
t3 = ['11','12','13','14','15','16']
t4 = ['18','19','20','21','22','23']
t5 = ['19','20','21','22','23','24']
t6 = ['20','21','22','23','24','25']
t7 = ['27','28','29','30','31','32']
t8 = ['28','29','30','31','32','33']
t9 = ['29','30','31','32','33','34']
slots = ['30','31','32','33','34','35']

for i, name in enumerate(slots):
    # path = os.path.join(os.path.dirname(__file__), name)
    path = os.path.dirname(__file__)
    os.makedirs(path, exist_ok=True)
    with codecs.open(os.path.join(path, name + '.mcfunction'), 'w', 'utf_8') as f:
        f.write(template.replace('$0', name).replace('$1', t1[i]).replace('$2', t2[i]).replace('$3', t3[i]).replace('$4', t4[i]).replace('$5', t5[i]).replace('$6', t6[i]).replace('$7', t7[i]).replace('$8', t8[i]).replace('$9', t9[i]))
