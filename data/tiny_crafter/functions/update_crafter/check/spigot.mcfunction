### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## スロットの更新があるかチェック
execute store result storage tiny_crafter: slot_updated byte 1 run data modify storage player_item_tuner: from.tag.TinyCrafter.Slot set from storage player_item_tuner: from.Slot

## 中身があるかどうか
execute store result storage tiny_crafter: has_content byte 1 if data storage player_item_tuner: from.tag.Items[0]
## 一つ目のアイテムがウーパーバケツかどうか
execute store result storage tiny_crafter: has_axolotl byte 1 if data storage player_item_tuner: from.tag{Items:[{id:"minecraft:axolotl_bucket"}]}


## 更新が必要ならデータコピー
execute store result storage tiny_crafter: need_update byte 1 unless data storage tiny_crafter: {slot_updated:false,has_content:false}
execute if data storage tiny_crafter: {need_update:true} run data modify storage player_item_tuner: to set from storage player_item_tuner: from
## 更新検知用フラグ
execute if data storage tiny_crafter: {need_update:true} store result storage player_item_tuner: to.tag.TinyCrafter.toggle byte 1 unless data storage player_item_tuner: to.tag.TinyCrafter{toggle:true}

## クラフト
execute if data storage tiny_crafter: {has_axolotl:true} run function tiny_crafter:update_crafter/craft/

## 有効化タグの削除
execute if data storage tiny_crafter: {has_content:true,has_axolotl:false} run data remove storage player_item_tuner: to.tag.TinyCrafter
execute if data storage tiny_crafter: {has_content:true,has_axolotl:false} run data remove storage player_item_tuner: to.tag.CustomModelData

## スロットのアップデートがあったらスロットを書き換える
execute if data storage tiny_crafter: {slot_updated:true} run function tiny_crafter:update_crafter/update
