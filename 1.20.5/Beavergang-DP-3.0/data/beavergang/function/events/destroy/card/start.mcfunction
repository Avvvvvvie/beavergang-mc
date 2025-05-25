
execute as @e[tag=this_display] run function beavergang:events/destroy/card/as_display

data modify entity @e[type=item,tag=newObject,limit=1] Owner set from entity @s UUID
tag @e[type=item,tag=newObject] remove newObject