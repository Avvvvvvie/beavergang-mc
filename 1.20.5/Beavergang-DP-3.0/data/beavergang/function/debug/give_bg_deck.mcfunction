
scoreboard players set _model beavergang 1999996
scoreboard players set _hidden beavergang 1999996
scoreboard players set _type beavergang 2
function beavergang:object/item/start

execute unless score @s bgs_get matches 1.. run data modify entity @e[type=item,tag=newObject,limit=1] Item.components."minecraft:custom_data".cards set from storage beavergang:temp deckTemplates.beavergang
execute if score @s bgs_get matches ..1 run data modify entity @e[type=item,tag=newObject,limit=1] Item.components."minecraft:custom_data".cards set from storage beavergang:temp deckTemplates.beavergang
execute if score @s bgs_get matches 2 run data modify entity @e[type=item,tag=newObject,limit=1] Item.components."minecraft:custom_data".cards set from storage beavergang:temp deckTemplates.frenchdeck
execute if score @s bgs_get matches 3 run data modify entity @e[type=item,tag=newObject,limit=1] Item.components."minecraft:custom_data".cards set from storage beavergang:temp deckTemplates.frenchdeck_joker
execute if score @s bgs_get matches 4.. run data modify entity @e[type=item,tag=newObject,limit=1] Item.components."minecraft:custom_data".cards set from storage beavergang:temp deckTemplates.swissdeck

tag @e[type=item,tag=newObject] remove newObject