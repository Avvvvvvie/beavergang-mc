
execute store result score _model beavergang run data get entity @s item.components."minecraft:custom_model_data".floats[0]
data modify entity @s item.components."minecraft:custom_model_data".floats set value [0.0f]
data modify entity @s item.components."minecraft:custom_model_data".floats[0] set from entity @s item.components."minecraft:custom_data".hidden
execute store result entity @s item.components."minecraft:custom_data".hidden int 1 run scoreboard players get _model beavergang