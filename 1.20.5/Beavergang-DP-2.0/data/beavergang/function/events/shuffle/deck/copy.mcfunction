
execute store result score _model beavergang run data get entity @s item.components."minecraft:custom_model_data".floats[0]
execute store result score _type beavergang run data get entity @s item.components."minecraft:custom_data".type
execute store result score _hidden beavergang run data get entity @s item.components."minecraft:custom_data".hidden

tag @e[type=item_display,tag=curr_deck,limit=1,sort=random] add target
data modify entity @s item.components."minecraft:custom_model_data".floats set value [0.0f]
data modify entity @s item.components."minecraft:custom_model_data".floats[0] set from entity @e[type=item_display,tag=target,limit=1] item.components."minecraft:custom_model_data".floats[0]
data modify entity @s item.components."minecraft:custom_data".type set from entity @e[type=item_display,tag=target,limit=1] item.components."minecraft:custom_data".type
data modify entity @s item.components."minecraft:custom_data".hidden set from entity @e[type=item_display,tag=target,limit=1] item.components."minecraft:custom_data".hidden
execute as @e[type=item_display,tag=target,limit=1] run function beavergang:events/shuffle/deck/copy2