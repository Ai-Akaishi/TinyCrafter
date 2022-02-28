### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## キーアイテム退避
data modify storage tiny_crafter: key set from storage player_item_tuner: to.tag.Items[-1]
data remove storage player_item_tuner: to.tag.Items[-1]
## 前回の完成品が残っていたら取り出す
execute if data storage player_item_tuner: to.tag.Items[0] run function tiny_crafter:update_crafter/craft/remove

## 完成品を入れる
execute if data storage pretty_crafter: found.recipe.result{} run data modify storage player_item_tuner: to.tag.Items append from storage pretty_crafter: found.recipe.result
execute unless data storage pretty_crafter: found.recipe.result{} run data modify storage player_item_tuner: to.tag.Items set from storage pretty_crafter: found.recipe.result
## キーアイテムを戻す
data modify storage player_item_tuner: to.tag.Items append from storage tiny_crafter: key

## バニラバグ回避のため前回の状態を記録する(2以上の時だけ)
execute if data storage player_item_tuner: to.tag.Items[1] run data modify storage player_item_tuner: to.tag.TinyCrafter.LastItems set from storage player_item_tuner: to.tag.Items
