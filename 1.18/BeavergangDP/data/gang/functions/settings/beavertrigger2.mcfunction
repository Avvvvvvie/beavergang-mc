

scoreboard players reset @s beavertrigger2

execute if score @s takeHidden matches 0 run scoreboard players set @s takeHidden -1
execute if score @s takeHidden matches 1 run scoreboard players set @s takeHidden 0
scoreboard players operation @s takeHidden *= -1 deck

function gang:info
