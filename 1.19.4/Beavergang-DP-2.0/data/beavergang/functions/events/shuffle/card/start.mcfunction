
execute store result score _model beavergang run data get entity @s item.tag.CustomModelData
data modify entity @s item.tag.CustomModelData set from entity @s item.tag.hidden
execute store result entity @s item.tag.hidden int 1 run scoreboard players get _model beavergang