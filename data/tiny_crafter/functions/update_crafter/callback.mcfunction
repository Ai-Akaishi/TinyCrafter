### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 素材になったスロットならチェックする
## 消費したアイテム
## data modify storage tiny_crafter: consumed set value []
## 消費したアイテムが存在するとき、消費を確認する
execute if data storage player_item_tuner: custom{tiny_crafter:"update_crafter"} if data storage tiny_crafter: consumed[0] run function tiny_crafter:update_crafter/consume/

## タグ付きバンドルで、消費したアイテムが残っていないならクラフトチェックする
execute if data storage player_item_tuner: custom{tiny_crafter:"update_crafter"} if data storage player_item_tuner: from{id:"minecraft:bundle"}.tag.TinyCrafter unless data storage tiny_crafter: consumed[0] run function tiny_crafter:update_crafter/check/
