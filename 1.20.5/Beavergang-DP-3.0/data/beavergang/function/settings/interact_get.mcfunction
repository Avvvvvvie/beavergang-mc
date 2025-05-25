advancement revoke @s only beavergang:interact_settings_get

scoreboard players add @s bgs_get 1
execute if score @s bgs_get matches 5.. run scoreboard players set @s bgs_get 1

tag @s add current
function beavergang:settings/update_get
tag @s remove current

title @s actionbar "hit to get deck"