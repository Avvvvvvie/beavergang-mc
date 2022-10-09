# 1.18 28.12.21 avvvvvvie

scoreboard players add raycast2 deck 1
execute as @e[type=minecraft:item_frame,tag=card,tag=!shuffle,distance=..0.9,limit=1,tag=turned] run tag @s add shuffle
execute unless score raycast2 deck matches 9.. unless entity @e[tag=shuffle] positioned ^ ^ ^0.9 run function gang:shuffle/raycast2
