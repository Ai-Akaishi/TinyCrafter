### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 消費アイテムをリセット
data modify storage tiny_crafter: consumed set value []

## チューナー呼び出し
data modify storage player_item_tuner: custom set value {tiny_crafter:update_crafter}
function #player_item_tuner:custom/inventory

## トリガーリセット
advancement revoke @s only tiny_crafter:update_crafter
