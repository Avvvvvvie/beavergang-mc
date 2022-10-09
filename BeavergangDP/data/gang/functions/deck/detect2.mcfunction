# 1.18 28.12.21 avvvvvvie
# very short raycast

# particle minecraft:flame ~ ~ ~
scoreboard players add raycast deck 1
execute as @e[type=minecraft:item_frame,tag=!card,tag=beavergang,distance=..0.9,limit=1] run function gang:deck/create
execute unless score raycast deck matches 9.. positioned ^ ^ ^0.9 run function gang:deck/detect2
