data modify entity @s item.components."minecraft:custom_model_data".floats set value [0.0f]
execute store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players get _model beavergang
execute store result entity @s item.components."minecraft:custom_data".type int 1 run scoreboard players get _type beavergang
execute store result entity @s item.components."minecraft:custom_data".hidden float 1 run scoreboard players get _hidden beavergang
