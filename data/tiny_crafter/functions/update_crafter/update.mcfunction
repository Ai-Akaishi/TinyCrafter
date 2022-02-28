### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result storage player_item_tuner: to.tag.CustomModelData int -1 run data get storage player_item_tuner: to.Slot -0.111112
execute if data storage player_item_tuner: to{Slot:-106b} run data modify storage player_item_tuner: to.tag.CustomModelData set value 1
execute if data storage player_item_tuner: to{Slot:0b} run data modify storage player_item_tuner: to.tag.CustomModelData set value 1
execute if data storage player_item_tuner: to{Slot:9b} run data modify storage player_item_tuner: to.tag.CustomModelData set value 1
execute if data storage player_item_tuner: to{Slot:18b} run data modify storage player_item_tuner: to.tag.CustomModelData set value 1
execute if data storage player_item_tuner: to{Slot:19b} run data modify storage player_item_tuner: to.tag.CustomModelData set value 2
execute if data storage player_item_tuner: to{Slot:27b} run data modify storage player_item_tuner: to.tag.CustomModelData set value 1
execute if data storage player_item_tuner: to{Slot:28b} run data modify storage player_item_tuner: to.tag.CustomModelData set value 2
execute if data storage player_item_tuner: to{Slot:29b} run data modify storage player_item_tuner: to.tag.CustomModelData set value 3
execute store result storage player_item_tuner: to.tag.TinyCrafter.GridSize int 1 run data get storage player_item_tuner: to.tag.CustomModelData 0.9999999999
