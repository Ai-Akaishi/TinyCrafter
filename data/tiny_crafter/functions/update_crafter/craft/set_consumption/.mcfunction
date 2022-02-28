### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 定型レシピのとき
execute if data storage pretty_crafter: found.items{} run function tiny_crafter:update_crafter/craft/set_consumption/shaped/
## 不定形レシピのとき
execute if data storage pretty_crafter: found.items[0] run function tiny_crafter:update_crafter/craft/set_consumption/shapeless/
