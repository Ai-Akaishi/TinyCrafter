### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 未使用のダイヤモンドツール
## -> ダイヤモンド x? + 棒 x?
data modify storage pretty_crafter: recipe.tags set value [{tag:"#diamond_tool",ids:["minecraft:diamond_pickaxe","minecraft:diamond_axe","minecraft:diamond_hoe","minecraft:diamond_shovel","minecraft:diamond_sword"]}]
data modify storage pretty_crafter: recipe.items.0.0 set value {id:"#diamond_tool",tag:{Damage:0}}
data modify storage pretty_crafter: recipe.result set value [{id:"minecraft:diamond"},{id:"minecraft:stick"}]
data modify storage pretty_crafter: recipe.category set value {Name:"Sample"}
data modify storage pretty_crafter: recipe.custom set value {Name:"TinyCrafter",Action:"ReverseDiamondTool"}

data modify storage pretty_crafter: recipe_space set value {Name:"TinyCrafter"}
function #pretty_crafter:add


#######################################################################################
## カスタム処理を行うには、例えば以下のように実装します。

# カスタム処理が呼び出されるようにする
# pretty_crafter\tags\functions\custom.json
## {
##   "values":[
##     "tiny_crafter:custom"
##   ]
## }

# 自身のカスタム処理かどうか判定する
# tiny_crafter\functions\custom.mcfunction
## execute if data storage pretty_crafter: found.recipe.custom{Name:"TinyCrafter",Action:"ReverseDiamondTool"} run function tiny_crafter:reverse_diamond_tool

# カスタム処理の内容を決める
# tiny_crafter\functions\reverse_diamond_tool.mcfunction
## execute unless data storage pretty_crafter: found.items.0.0{id:"minecraft:diamond_hoe"} unless data storage pretty_crafter: found.items.0.0{id:"minecraft:diamond_shovel"} unless data storage pretty_crafter: found.items.0.0{id:"minecraft:diamond_sword"} run data modify storage pretty_crafter: found.recipe.result[0].Count set value 3b
## execute unless data storage pretty_crafter: found.items.0.0{id:"minecraft:diamond_pickaxe"} unless data storage pretty_crafter: found.items.0.0{id:"minecraft:diamond_axe"} unless data storage pretty_crafter: found.items.0.0{id:"minecraft:diamond_shovel"} run data modify storage pretty_crafter: found.recipe.result[0].Count set value 2b
## execute unless data storage pretty_crafter: found.items.0.0{id:"minecraft:diamond_sword"} run data modify storage pretty_crafter: found.recipe.result[1].Count set value 2b
