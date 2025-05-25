advancement revoke @s only beavergang:interact_settings_place

scoreboard players add @s bgs_place 1
execute if score @s bgs_place matches 4.. run scoreboard players set @s bgs_place 1

tag @s add current
function beavergang:settings/update_place
tag @s remove current