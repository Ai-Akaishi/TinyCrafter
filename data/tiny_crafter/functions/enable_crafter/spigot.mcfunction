### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## うぱバケツを返す
data modify storage tiny_crafter: Items set value []
data modify storage tiny_crafter: Items append from entity @s Inventory[{id:"minecraft:bundle",tag:{Items:[{id:"minecraft:axolotl_bucket"}]}}]
data remove storage tiny_crafter: Items[{tag:{TinyCrafter:{}}}]
data modify storage player_item_tuner: to.tag.Items set value []
data modify storage player_item_tuner: to.tag.Items append from storage tiny_crafter: Items[].tag.Items[]
execute if data storage player_item_tuner: to.tag.Items[0] run function tiny_crafter:update_crafter/craft/shaped/remove/
data remove storage player_item_tuner: to

## Slot:-128b＆空で初期化
data modify storage tiny_crafter: init set value -128b
data modify storage tiny_crafter: Items set value []
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:-106b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:-106b}].tag{TinyCrafter:{}} run item modify entity @s weapon.offhand tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:0b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:0b}].tag{TinyCrafter:{}} run item modify entity @s container.0 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:1b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:1b}].tag{TinyCrafter:{}} run item modify entity @s container.1 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:2b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:2b}].tag{TinyCrafter:{}} run item modify entity @s container.2 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:3b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:3b}].tag{TinyCrafter:{}} run item modify entity @s container.3 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:4b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:4b}].tag{TinyCrafter:{}} run item modify entity @s container.4 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:5b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:5b}].tag{TinyCrafter:{}} run item modify entity @s container.5 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:6b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:6b}].tag{TinyCrafter:{}} run item modify entity @s container.6 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:7b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:7b}].tag{TinyCrafter:{}} run item modify entity @s container.7 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:8b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:8b}].tag{TinyCrafter:{}} run item modify entity @s container.8 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:9b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:9b}].tag{TinyCrafter:{}} run item modify entity @s container.9 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:10b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:10b}].tag{TinyCrafter:{}} run item modify entity @s container.10 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:11b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:11b}].tag{TinyCrafter:{}} run item modify entity @s container.11 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:12b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:12b}].tag{TinyCrafter:{}} run item modify entity @s container.12 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:13b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:13b}].tag{TinyCrafter:{}} run item modify entity @s container.13 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:14b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:14b}].tag{TinyCrafter:{}} run item modify entity @s container.14 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:15b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:15b}].tag{TinyCrafter:{}} run item modify entity @s container.15 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:16b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:16b}].tag{TinyCrafter:{}} run item modify entity @s container.16 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:17b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:17b}].tag{TinyCrafter:{}} run item modify entity @s container.17 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:18b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:18b}].tag{TinyCrafter:{}} run item modify entity @s container.18 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:19b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:19b}].tag{TinyCrafter:{}} run item modify entity @s container.19 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:20b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:20b}].tag{TinyCrafter:{}} run item modify entity @s container.20 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:21b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:21b}].tag{TinyCrafter:{}} run item modify entity @s container.21 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:22b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:22b}].tag{TinyCrafter:{}} run item modify entity @s container.22 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:23b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:23b}].tag{TinyCrafter:{}} run item modify entity @s container.23 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:24b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:24b}].tag{TinyCrafter:{}} run item modify entity @s container.24 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:25b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:25b}].tag{TinyCrafter:{}} run item modify entity @s container.25 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:26b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:26b}].tag{TinyCrafter:{}} run item modify entity @s container.26 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:27b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:27b}].tag{TinyCrafter:{}} run item modify entity @s container.27 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:28b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:28b}].tag{TinyCrafter:{}} run item modify entity @s container.28 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:29b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:29b}].tag{TinyCrafter:{}} run item modify entity @s container.29 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:30b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:30b}].tag{TinyCrafter:{}} run item modify entity @s container.30 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:31b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:31b}].tag{TinyCrafter:{}} run item modify entity @s container.31 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:32b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:32b}].tag{TinyCrafter:{}} run item modify entity @s container.32 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:33b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:33b}].tag{TinyCrafter:{}} run item modify entity @s container.33 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:34b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:34b}].tag{TinyCrafter:{}} run item modify entity @s container.34 tiny_crafter:add_tags_spigot
execute if data entity @s Inventory[{id:"minecraft:bundle",Slot:35b}].tag.Items[{id:"minecraft:axolotl_bucket"}] unless data entity @s Inventory[{Slot:35b}].tag{TinyCrafter:{}} run item modify entity @s container.35 tiny_crafter:add_tags_spigot
