### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 定型レシピのとき
## スロットが昇順ならfalseになる
execute store result storage tiny_crafter: _ byte 1 run data get storage pretty_crafter: found.items.0.1.Slot 0.9999999999
execute store result storage tiny_crafter: _ byte 1 run data modify storage tiny_crafter: _ set from storage pretty_crafter: found.items.0.0.Slot

## 昇順
execute if data storage tiny_crafter: {_:false} run function tiny_crafter:update_crafter/craft/set_consumption/shaped/ascending
## 降順
execute if data storage tiny_crafter: {_:true} run function tiny_crafter:update_crafter/craft/set_consumption/shaped/descending
