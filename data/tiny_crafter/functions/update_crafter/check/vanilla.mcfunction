### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## スロットの更新があるかチェック
execute store result storage tiny_crafter: slot_updated byte 1 run data modify storage player_item_tuner: from.tag.TinyCrafter.Slot set from storage player_item_tuner: from.Slot
## アイテム個数チェック
execute store result storage tiny_crafter: used_count int 1 if data storage player_item_tuner: from.tag.Items[]
execute store result storage tiny_crafter: picked_up int 1 if data storage player_item_tuner: from.tag.TinyCrafter.LastItems[]
execute store result storage tiny_crafter: picked_up byte 1 run data modify storage tiny_crafter: picked_up set from storage tiny_crafter: used_count
## バニラバグチェック(TOPが空気&TinyCrafterDetectorじゃないなら修正が必要)
data modify storage tiny_crafter: top_item set from storage player_item_tuner: from.tag.Items[0]
data modify storage tiny_crafter: need_restore set value false
execute if data storage tiny_crafter: top_item{id:"minecraft:air"} unless data storage tiny_crafter: top_item.tag.TinyCrafterDetector run data modify storage tiny_crafter: need_restore set value true
execute if data storage tiny_crafter: {need_restore:true} run data modify storage tiny_crafter: picked_up set value false

## 更新が必要ならデータコピー
execute store result storage tiny_crafter: need_update byte 1 unless data storage tiny_crafter: {slot_updated:false,picked_up:false,need_restore:false}
execute if data storage tiny_crafter: {used_count:0} run data modify storage tiny_crafter: need_update set value true
execute if data storage tiny_crafter: {need_update:true} run data modify storage player_item_tuner: to set from storage player_item_tuner: from
## 更新検知用フラグ
execute if data storage tiny_crafter: {need_update:true} store result storage player_item_tuner: to.tag.TinyCrafter.toggle byte 1 unless data storage player_item_tuner: to.tag.TinyCrafter{toggle:true}

## スロットのアップデートがあったらスロットを書き換える
execute if data storage tiny_crafter: {slot_updated:true} run function tiny_crafter:update_crafter/update
## アイテムの取り出し(残り0)があれば解除
execute if data storage tiny_crafter: {used_count:0} run data remove storage player_item_tuner: to.tag.TinyCrafter
execute if data storage tiny_crafter: {used_count:0} run data remove storage player_item_tuner: to.tag.CustomModelData
## アイテムの取り出し(残り1)があればクラフト
execute if data storage tiny_crafter: {picked_up:true,used_count:1} run function tiny_crafter:update_crafter/craft/
## アイテムの取り出し(残り>1)があれば記録
execute if data storage tiny_crafter: {picked_up:true,need_restore:false} unless data storage tiny_crafter: {used_count:0} unless data storage tiny_crafter: {used_count:1} run data modify storage player_item_tuner: to.tag.TinyCrafter.LastItems set from storage player_item_tuner: to.tag.Items
## 修復が必要なときは修復
execute if data storage tiny_crafter: {need_restore:true} run data modify storage player_item_tuner: to.tag.Items set from storage player_item_tuner: to.tag.TinyCrafter.LastItems
## 修復した時もクラフト
execute if data storage tiny_crafter: {need_restore:true} run function tiny_crafter:update_crafter/craft/

# execute if data storage tiny_crafter: {need_restore:true} run say 修復
# execute if data storage tiny_crafter: {picked_up:true} run say 取り出し
# tellraw @s {"nbt":"used_count","storage":"tiny_crafter:"}
