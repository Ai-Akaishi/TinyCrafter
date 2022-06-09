### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 紙 + 糸
## -> 名札
# data modify storage pretty_crafter: recipe.items set value [{id:"minecraft:paper"},{id:"minecraft:string"},{id:"minecraft:string"},{id:"minecraft:string"}]
# data modify storage pretty_crafter: recipe.items set value [{id:"minecraft:string"},{id:"minecraft:string"},{id:"minecraft:string"},{id:"minecraft:paper"}]
data modify storage pretty_crafter: recipe.items set value [{id:"minecraft:string"},{id:"minecraft:string"},{id:"minecraft:paper"},{id:"minecraft:string"}]
data modify storage pretty_crafter: recipe.result set value {id:"minecraft:name_tag",Count:3b}
data modify storage pretty_crafter: recipe.category set value {Name:"Sample"}

data modify storage pretty_crafter: recipe_space set value {Name:"TinyCrafter"}
function #pretty_crafter:add
