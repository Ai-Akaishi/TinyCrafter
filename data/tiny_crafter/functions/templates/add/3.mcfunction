### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## ＿		板材		＿
## 板材		海洋の心	板材
## ＿		板材		＿
## -> 不死のトーテム
data modify storage pretty_crafter: recipe.tags set value [{tag:"#any_planks",ids:["minecraft:oak_planks","minecraft:spruce_planks","minecraft:birch_planks","minecraft:jungle_planks","minecraft:acacia_planks","minecraft:dark_oak_planks","minecraft:crimson_planks","minecraft:warped_planks"]}]
data modify storage pretty_crafter: recipe.items.0.1 set value {id:"#any_planks"}
data modify storage pretty_crafter: recipe.items.1.0 set value {id:"#any_planks"}
data modify storage pretty_crafter: recipe.items.1.1 set value {id:"minecraft:heart_of_the_sea"}
data modify storage pretty_crafter: recipe.items.1.2 set value {id:"#any_planks"}
data modify storage pretty_crafter: recipe.items.2.1 set value {id:"#any_planks"}
data modify storage pretty_crafter: recipe.result set value {id:"minecraft:totem_of_undying"}
data modify storage pretty_crafter: recipe.category set value {Name:"Sample"}

data modify storage pretty_crafter: recipe_space set value {Name:"TinyCrafter"}
function #pretty_crafter:add
