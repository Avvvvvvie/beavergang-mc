# run as destroyed item at desired drop location

execute store result score _model beavergang run data get entity @s item.tag.CustomModelData
execute store result score _type beavergang run data get entity @s item.tag.type
execute store result score _hidden beavergang run data get entity @s item.tag.hidden

function beavergang:object/item/start