
execute store result score _model beavergang run data get entity @s item.tag.CustomModelData
execute store result score _type beavergang run data get entity @s item.tag.type
execute store result score _hidden beavergang run data get entity @s item.tag.hidden

tag @e[type=item_display,tag=curr_deck,limit=1,sort=random] add target
data modify entity @s item.tag.CustomModelData set from entity @e[type=item_display,tag=target,limit=1] item.tag.CustomModelData
data modify entity @s item.tag.type set from entity @e[type=item_display,tag=target,limit=1] item.tag.type
data modify entity @s item.tag.hidden set from entity @e[type=item_display,tag=target,limit=1] item.tag.hidden
execute as @e[type=item_display,tag=target,limit=1] run function beavergang:events/shuffle/deck/copy2