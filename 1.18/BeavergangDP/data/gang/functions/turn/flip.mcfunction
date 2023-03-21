# 1.18 28.12.21 avvvvvvie

execute store result score @s cardnumber run data get entity @s Item.tag.CustomModelData

execute if score @s cardnumber > 10000100 cardnumber run tag @s add temp
scoreboard players operation @s[tag=temp] cardnumber -= 100 cardnumber

execute if score @s[tag=!temp] cardnumber < 10000100 cardnumber run scoreboard players operation @s cardnumber += 100 cardnumber
tag @s remove temp
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get @s cardnumber
scoreboard players operation @s ItemRotation -= 1 ItemRotation
execute store result entity @s ItemRotation byte 1 run scoreboard players get @s ItemRotation
scoreboard players reset @s cardnumber
