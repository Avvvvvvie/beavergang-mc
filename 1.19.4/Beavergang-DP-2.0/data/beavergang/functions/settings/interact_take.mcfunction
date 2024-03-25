advancement revoke @s only beavergang:interact_settings_take

scoreboard players add @s bgs_take 1
execute if score @s bgs_take matches 4.. run scoreboard players set @s bgs_take 1

tag @s add current
function beavergang:settings/update_take
tag @s remove current