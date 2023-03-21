

scoreboard players reset @s beavertrigger1

execute if score @s placeHidden matches 0 run scoreboard players set @s placeHidden -1
execute if score @s placeHidden matches 1 run scoreboard players set @s placeHidden -2
execute if score @s placeHidden matches 2 run scoreboard players set @s placeHidden 0
scoreboard players operation @s placeHidden *= -1 deck

function gang:info
