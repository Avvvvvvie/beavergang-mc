# 1.18 28.12.21 avvvvvvie

summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{EntityTag:{Tags:["beavergang"]}}},Tags:["newbeavercard"]}
execute if score @s takeHidden matches 1 run function gang:turn/takehidden
execute store result entity @e[type=item,distance=0,tag=newbeavercard,limit=1] Item.tag.CustomModelData int 1 run scoreboard players get tempcard deck
