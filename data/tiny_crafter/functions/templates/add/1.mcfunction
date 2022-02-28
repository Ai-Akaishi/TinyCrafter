### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## オークの苗木
## -> リンゴ x3
data modify storage pretty_crafter: recipe.items.0.0 set value {id:"minecraft:oak_sapling"}
data modify storage pretty_crafter: recipe.result set value {id:"minecraft:apple",Count:3b}
data modify storage pretty_crafter: recipe.category set value {Name:"Sample"}

data modify storage pretty_crafter: recipe_space set value {Name:"TinyCrafter"}
function #pretty_crafter:add
