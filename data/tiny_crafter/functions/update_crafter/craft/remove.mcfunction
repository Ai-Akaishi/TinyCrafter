### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## アイテムを１つ取り出して渡す
summon minecraft:item ~ 1000 ~ {Item:{id:"minecraft:music_disc_wait",Count:1b}}
data modify storage tiny_crafter: spawn.Item set from storage player_item_tuner: to.tag.Items[-1]
data modify storage tiny_crafter: spawn.Pos set from entity @s Pos
data modify storage tiny_crafter: spawn.Owner set from entity @s UUID
execute positioned ~ 1000 ~ as @e[distance=0,type=item,limit=1] run data modify entity @s {} merge from storage tiny_crafter: spawn

## アイテムが残っていたら繰り返し
data remove storage player_item_tuner: to.tag.Items[-1]
execute if data storage player_item_tuner: to.tag.Items[0] run function tiny_crafter:update_crafter/craft/shaped/remove/
