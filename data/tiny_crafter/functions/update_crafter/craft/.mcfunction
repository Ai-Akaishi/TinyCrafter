### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## グリッドサイズに応じて素材を設定
execute if data storage player_item_tuner: to.tag.TinyCrafter{GridSize:1} run function tiny_crafter:update_crafter/craft/grid/1/
execute if data storage player_item_tuner: to.tag.TinyCrafter{GridSize:2} run function tiny_crafter:update_crafter/craft/grid/2/
execute if data storage player_item_tuner: to.tag.TinyCrafter{GridSize:3} run function tiny_crafter:update_crafter/craft/grid/3/

## 素材が設定されていたらレシピ検索
data modify storage pretty_crafter: recipe_space set value {Name:"TinyCrafter"}
function #pretty_crafter:find

## レシピが見つかっていたら完成品/消耗品を設定
execute if data storage pretty_crafter: found run function tiny_crafter:update_crafter/craft/set_result/
execute if data storage pretty_crafter: found run function tiny_crafter:update_crafter/craft/set_consumption/

## (Spigot)バンドルの中に完成品とウパが入ってるので取り出す
execute if data entity @s bukkit run function tiny_crafter:update_crafter/craft/remove
## (Vanilla)キーアイテムだけなら空気を補填
execute unless data entity @s bukkit unless data storage player_item_tuner: to.tag.Items[1] run data modify storage player_item_tuner: to.tag.Items prepend value {id:"minecraft:air",Count:1b,tag:{TinyCrafterDetector:true}}

playsound minecraft:entity.axolotl.idle_air master @s ~ ~ ~ 1 1 1
playsound minecraft:entity.axolotl.idle_air master @s ~ ~ ~ 1 1 1
playsound minecraft:entity.axolotl.idle_air master @s ~ ~ ~ 1 1 1
