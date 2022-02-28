### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 確認中のアイテムのスロットを取得
data modify storage tiny_crafter: is_not_consumed set from storage player_item_tuner: from.Slot
## 消費アイテムのスロットを取得
execute store result storage tiny_crafter: is_not_consumed byte 1 run data modify storage tiny_crafter: is_not_consumed set from storage tiny_crafter: consumed[-1]
## 消費したスロットだったら消費
execute if data storage tiny_crafter: {is_not_consumed:false} run function tiny_crafter:update_crafter/consume/apply
