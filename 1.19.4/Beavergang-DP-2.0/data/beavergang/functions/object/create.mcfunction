# run as player with item in hand, at desired position
# afterwards: tag @e[tag=newObject] remove newObject

execute store result score _model beavergang run data get entity @s SelectedItem.tag.CustomModelData
execute store result score _type beavergang run data get entity @s SelectedItem.tag.type
execute store result score _hidden beavergang run data get entity @s SelectedItem.tag.hidden

function beavergang:object/check/place

execute if score _type beavergang matches 1 run function beavergang:object/custom/card
execute if score _type beavergang matches 2 run function beavergang:object/custom/deck
execute if score _type beavergang matches 3 run function beavergang:object/custom/pillow