### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## Spigotは空気を許容しないので処理を変える
execute if data entity @s bukkit run function tiny_crafter:enable_crafter/spigot
execute unless data entity @s bukkit run function tiny_crafter:enable_crafter/vanilla

## トリガーの再有効化
advancement revoke @s only tiny_crafter:enable_crafter
