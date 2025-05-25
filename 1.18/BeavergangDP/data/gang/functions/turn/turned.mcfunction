# 1.18 28.12.21 avvvvvvie

execute store result score modeldata2 deck run data get entity @s Item.tag.CustomModelData
execute if score modeldata2 deck >= 10000450 deck if score modeldata2 deck < 10000900 deck at @s run function gang:turn/hascard
execute if score modeldata2 deck > 10000300 deck if score modeldata2 deck < 10000450 deck at @s run function gang:turn/takecard
execute if score modeldata2 deck < 10000300 deck at @s run function gang:turn/flip
