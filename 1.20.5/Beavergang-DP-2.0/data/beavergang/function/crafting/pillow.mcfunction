# 1.18 28.12.21 avvvvvvie

recipe take @s beavergang:pillow
advancement revoke @s only beavergang:crafted_pillow

scoreboard players set _model beavergang 1999998
scoreboard players set _type beavergang 3
scoreboard players set _hidden beavergang 1999998
function beavergang:object/item/start
tag @e[type=item,tag=newObject] remove newObject

clear @s minecraft:knowledge_book
