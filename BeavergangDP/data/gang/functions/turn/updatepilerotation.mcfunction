# 1.18 28.12.21 avvvvvvie

scoreboard players operation @s ItemRotation -= 1 ItemRotation
execute store result entity @s ItemRotation byte 1 run scoreboard players get @s ItemRotation

execute store result score @s ItemRotation run data get entity @s ItemRotation
scoreboard players operation @s NextRotation = @s ItemRotation
scoreboard players operation @s NextRotation += 1 ItemRotation
execute unless score @s NextRotation >= 0 ItemRotation run scoreboard players set @s NextRotation 1
