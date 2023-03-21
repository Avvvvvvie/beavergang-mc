# 1.18 28.12.21 avvvvvvie

data remove storage gang:deck decks
data remove storage gang:deck piles
# data remove storage gang:deck set
# data merge storage gang:deck {decks:[{ID:0, Cards:[0,0,0]}]}
# data remove storage gang:temp temp
# data remove storage gang:temp Set
scoreboard players set maxID deck 1
clear @a
give @s minecraft:item_frame{CustomModelData:10000301,isDeck:1b,EntityTag:{Tags:["beavergang"]}} 5
give @s minecraft:item_frame{CustomModelData:10000450,isPile:1b,EntityTag:{Tags:["beavergang"]}} 5
give @s minecraft:item_frame{CustomModelData:10000011,EntityTag:{Tags:["beavergang"]}}
execute as @e[type=minecraft:item_frame] if data entity @s Item.tag.isDeck run kill @s
execute as @e[type=minecraft:item] if data entity @s Item.tag.isDeck run kill @s
execute as @e[type=minecraft:item_frame] if data entity @s Item.tag.isPile run kill @s
execute as @e[type=minecraft:item] if data entity @s Item.tag.isPile run kill @s
give @a minecraft:slime_spawn_egg{CustomModelData:10000001,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999}],DeathLootTable:"gang:air",EntityTag:{Tags:["settings","weak","beaver1"],NoAI:1,Size:0,Invisible:0b,CustomNameVisible:1,CustomName:'[{"text":"Settings","color":"yellow"}]'}}
tag @a remove sneakingdeck
