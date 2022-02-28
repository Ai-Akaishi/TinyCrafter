### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 4のレシピを削除
data modify storage pretty_crafter: recipe.items set value [{id:"minecraft:paper"},{id:"minecraft:string"}]
data modify storage pretty_crafter: recipe.category set value {Name:"Sample"}

data modify storage pretty_crafter: recipe_space set value {Name:"TinyCrafter"}
function #pretty_crafter:remove
