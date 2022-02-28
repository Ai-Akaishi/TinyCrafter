### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store success storage pretty_crafter: _ int 1 run function pretty_crafter:define
execute if data storage pretty_crafter: {_:0} run tellraw @a {"translate":"[Datapack Warning] \"%2$s\" depends on \"%1$s\", but \"%1$s\" is not found.\nMake sure \"%1$s\" is included in the Datapack folder and enabled.","color":"yellow","with":[{"text":"Pretty Crafter","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Ai-Akaishi"}},{"text":"Tiny Crafter","color":"green"}]}

execute store success storage pretty_crafter: _ int 1 run function player_item_tuner:define
execute if data storage pretty_crafter: {_:0} run tellraw @a {"translate":"[Datapack Warning] \"%2$s\" depends on \"%1$s\", but \"%1$s\" is not found.\nMake sure \"%1$s\" is included in the Datapack folder and enabled.","color":"yellow","with":[{"text":"Player Item Tuner","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Ai-Akaishi/PlayerItemTuner"}},{"text":"Tiny Crafter","color":"green"}]}

data remove storage pretty_crafter: _
