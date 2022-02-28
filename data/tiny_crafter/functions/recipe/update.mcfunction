### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## TinyCrafterのスペース指定があれば保存する
execute if data storage pretty_crafter: recipe_space{Name:"TinyCrafter"} run data modify storage tiny_crafter: recipes set from storage pretty_crafter: recipes
