data modify storage beavergang:temp card set value []
data modify storage beavergang:temp card append from entity @s item.tag.CustomModelData
data modify storage beavergang:temp card append from entity @s item.tag.hidden
data modify entity @e[type=item,tag=newObject,limit=1] Item.tag.cards append from storage beavergang:temp card
execute at @s run kill @e[type=interaction,distance=..0.1, sort=nearest,limit=1]
kill @s