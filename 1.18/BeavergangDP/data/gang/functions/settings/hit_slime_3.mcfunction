
advancement revoke @s only gang:hit_slime_3


execute if score @s takeHidden matches 0 run scoreboard players set @s takeHidden -1
execute if score @s takeHidden matches 1 run scoreboard players set @s takeHidden 0
scoreboard players operation @s takeHidden *= -1 deck

execute if score @s takeHidden matches 0 run title @s actionbar [{"text":"take shown"}]
execute if score @s takeHidden matches 1 run title @s actionbar [{"text":"take hidden"}]

data modify entity @s Health set value 1000.0f
