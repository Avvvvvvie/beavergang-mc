# 1.18 28.12.21 avvvvvvie

scoreboard players add @e[scores={countdown=1..8}] countdown 1
scoreboard players reset @e[scores={countdown=9..}] countdown
execute at @e[scores={countdown=1..8}] run particle minecraft:enchant ~ ~0.75 ~

execute as @e[scores={countdown=1..8}] run schedule function gang:shuffle/particle 3t
