# run at desired positionto drop item: scores: _model, _type
# afterwards: tag @e[tag=newObject] remove newObject
execute as @a[tag=destroyer,limit=1] run function beavergang:object/check/take
function beavergang:object/item/name
summon item ~ ~ ~ {Item:{id:"minecraft:shield",Count:1b,tag:{beavergang:1b}},Tags:[newObject]}
execute as @e[type=item,tag=newObject, limit=1] run function beavergang:object/item/as_new_object