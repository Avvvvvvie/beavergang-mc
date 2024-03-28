
execute as @e[type=item_display,tag=curr_deck,limit=1,sort=random] run function beavergang:events/shuffle/deck/copy
scoreboard players remove _loop beavergang 1
execute at @s run particle minecraft:enchant ~ ~0.75 ~ .01 .01 .01 1 1
execute unless score _loop beavergang matches ..0 run function beavergang:events/shuffle/deck/loop