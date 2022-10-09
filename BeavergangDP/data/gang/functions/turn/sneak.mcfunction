# 1.18 28.12.21 avvvvvvie

tag @s add turned
scoreboard players operation @s NextRotation = @s ItemRotation
scoreboard players operation @s NextRotation += 1 ItemRotation
execute if score @s NextRotation matches 8 run scoreboard players set @s NextRotation 0

execute if data entity @s Item.tag.isDeck if entity @a[distance=..6,tag=interacted,predicate=gang:look_at_deck] run function gang:shuffle/raycast1
scoreboard players set @s[tag=shuffle] countdown 1
execute as @s[tag=shuffle] at @s run function gang:shuffle/particle
tag @s[tag=shuffle] remove shuffle
tag @s remove turned
