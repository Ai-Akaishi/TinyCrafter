### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# カスタム処理を使って纏める方法もあります。詳しくは5alt.mcfunctionを参照。

## 未使用のダイヤモンド斧 or ダイヤモンドツルハシ
## -> ダイヤモンド x3 + 棒 x2
data modify storage pretty_crafter: recipe.tags set value [{tag:"#diamond_axe_or_pickaxe",ids:["minecraft:diamond_pickaxe","minecraft:diamond_axe"]}]
data modify storage pretty_crafter: recipe.items.0.0 set value {id:"#diamond_axe_or_pickaxe"}
data modify storage pretty_crafter: recipe.result set value [{id:"minecraft:diamond",Count:3b},{id:"minecraft:stick",Count:2b}]
data modify storage pretty_crafter: recipe.category set value {Name:"Sample"}

data modify storage pretty_crafter: recipe_space set value {Name:"TinyCrafter"}
function #pretty_crafter:add


## 未使用のダイヤモンドクワ
## -> ダイヤモンド x2 + 棒 x2
data modify storage pretty_crafter: recipe.items.0.0 set value {id:"minecraft:diamond_hoe"}
data modify storage pretty_crafter: recipe.result set value [{id:"minecraft:diamond",Count:2b},{id:"minecraft:stick",Count:2b}]
data modify storage pretty_crafter: recipe.category set value {Name:"Sample"}

data modify storage pretty_crafter: recipe_space set value {Name:"TinyCrafter"}
function #pretty_crafter:add


## 未使用のダイヤモンドシャベル
## -> ダイヤモンド x2 + 棒 x2
data modify storage pretty_crafter: recipe.items.0.0 set value {id:"minecraft:diamond_shovel"}
data modify storage pretty_crafter: recipe.result set value [{id:"minecraft:diamond"},{id:"minecraft:stick",Count:2b}]
data modify storage pretty_crafter: recipe.category set value {Name:"Sample"}

data modify storage pretty_crafter: recipe_space set value {Name:"TinyCrafter"}
function #pretty_crafter:add


## 未使用のダイヤモンド剣
## -> ダイヤモンド x2 + 棒 x1
data modify storage pretty_crafter: recipe.items.0.0 set value {id:"minecraft:diamond_sword",tag:{Damage:0}}
data modify storage pretty_crafter: recipe.result set value [{id:"minecraft:diamond",Count:2b},{id:"minecraft:stick"}]
data modify storage pretty_crafter: recipe.category set value {Name:"Sample"}

data modify storage pretty_crafter: recipe_space set value {Name:"TinyCrafter"}
function #pretty_crafter:add
