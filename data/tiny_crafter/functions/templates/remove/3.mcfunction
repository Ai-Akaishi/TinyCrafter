### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 3のレシピを削除
data modify storage pretty_crafter: recipe.items.0.1 set value {id:"#any_planks"}
data modify storage pretty_crafter: recipe.items.1.0 set value {id:"#any_planks"}
data modify storage pretty_crafter: recipe.items.1.1 set value {id:"minecraft:heart_of_the_sea"}
data modify storage pretty_crafter: recipe.items.1.2 set value {id:"#any_planks"}
data modify storage pretty_crafter: recipe.items.2.1 set value {id:"#any_planks"}
data modify storage pretty_crafter: recipe.category set value {Name:"Sample"}

data modify storage pretty_crafter: recipe_space set value {Name:"TinyCrafter"}
function #pretty_crafter:remove
