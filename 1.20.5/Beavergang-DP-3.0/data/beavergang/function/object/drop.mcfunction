# run as destroyed item at desired drop location

execute store result score _model beavergang run data get entity @s item.components."minecraft:custom_model_data".floats[0]
execute store result score _type beavergang run data get entity @s item.components."minecraft:custom_data".type
execute store result score _hidden beavergang run data get entity @s item.components."minecraft:custom_data".hidden

function beavergang:object/item/start