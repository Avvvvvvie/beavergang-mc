# 1.18 28.12.21 avvvvvvie


scoreboard players set raycast2 deck 0
execute as @p[distance=0] at @s anchored eyes run function gang:shuffle/raycast2

execute as @s[tag=shuffle] run function gang:shuffle/getdata
