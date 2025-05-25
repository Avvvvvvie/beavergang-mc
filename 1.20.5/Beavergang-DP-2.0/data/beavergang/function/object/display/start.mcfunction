# summon item: at @s, with model of _model, with type of _type
# afterwards, run: tag @s/... remove newObject
summon item_display ~ ~ ~ {Tags:[newObject,beavergang],item:{"id":"minecraft:shield",Count:1b},Rotation:[0.0f,0.0f],item_display:"head"}
execute as @e[tag=newObject, limit=1] run function beavergang:object/display/as_new_object