### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 5のレシピを削除
data modify storage pretty_crafter: recipe.items.0.0 set value {id:"#diamond_axe_or_pickaxe",tag:{Damage:0}}
data modify storage pretty_crafter: recipe.category set value {Name:"Sample"}

data modify storage pretty_crafter: recipe_space set value {Name:"TinyCrafter"}
function #pretty_crafter:remove


data modify storage pretty_crafter: recipe.items.0.0 set value {id:"minecraft:diamond_hoe",tag:{Damage:0}}
data modify storage pretty_crafter: recipe.category set value {Name:"Sample"}

data modify storage pretty_crafter: recipe_space set value {Name:"TinyCrafter"}
function #pretty_crafter:remove


data modify storage pretty_crafter: recipe.items.0.0 set value {id:"minecraft:diamond_shovel",tag:{Damage:0}}
data modify storage pretty_crafter: recipe.category set value {Name:"Sample"}

data modify storage pretty_crafter: recipe_space set value {Name:"TinyCrafter"}
function #pretty_crafter:remove


data modify storage pretty_crafter: recipe.items.0.0 set value {id:"minecraft:diamond_sword",tag:{Damage:0}}
data modify storage pretty_crafter: recipe.category set value {Name:"Sample"}

data modify storage pretty_crafter: recipe_space set value {Name:"TinyCrafter"}
function #pretty_crafter:remove
