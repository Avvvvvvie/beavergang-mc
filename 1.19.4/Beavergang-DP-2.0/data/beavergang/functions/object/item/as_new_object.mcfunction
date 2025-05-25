
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get _model beavergang
execute store result entity @s Item.tag.hidden int 1 run scoreboard players get _hidden beavergang
execute store result entity @s Item.tag.type int 1 run scoreboard players get _type beavergang
data modify entity @s Item.tag.display.Name set from storage beavergang:temp itemName