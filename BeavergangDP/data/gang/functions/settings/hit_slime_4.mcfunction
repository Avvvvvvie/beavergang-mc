
advancement revoke @s only gang:hit_slime_4

execute if score @s placeHidden matches 0 run scoreboard players set @s placeHidden -1
execute if score @s placeHidden matches 1 run scoreboard players set @s placeHidden -2
execute if score @s placeHidden matches 2 run scoreboard players set @s placeHidden 0
scoreboard players operation @s placeHidden *= -1 deck

execute if score @s placeHidden matches 0 run title @s actionbar [{"text":"place dynamically"}]
execute if score @s placeHidden matches 1 run title @s actionbar [{"text":"place hidden"}]
execute if score @s placeHidden matches 2 run title @s actionbar [{"text":"place open"}]

data modify entity @s Health set value 1000.0f
