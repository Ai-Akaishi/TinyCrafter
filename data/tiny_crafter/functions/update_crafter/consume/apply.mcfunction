### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 減らす準備
data modify storage player_item_tuner: to set from storage player_item_tuner: from
## １減らす
execute store result storage player_item_tuner: to.Count byte 1 run data get storage player_item_tuner: to.Count 0.9999999999
## 消費リストの最後を消す
data remove storage tiny_crafter: consumed[-1]
