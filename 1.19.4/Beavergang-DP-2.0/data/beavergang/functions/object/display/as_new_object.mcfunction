execute store result entity @s item.tag.CustomModelData int 1 run scoreboard players get _model beavergang
execute store result entity @s item.tag.type int 1 run scoreboard players get _type beavergang
execute store result entity @s item.tag.hidden int 1 run scoreboard players get _hidden beavergang
execute store result entity @s Rotation[0] float 1 run scoreboard players get _rotationX beavergang
data modify entity @s transformation.scale set from storage beavergang:temp scale
data modify entity @s transformation.translation set from storage beavergang:temp translation
function beavergang:object/interaction/start