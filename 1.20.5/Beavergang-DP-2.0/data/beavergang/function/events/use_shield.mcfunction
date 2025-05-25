
advancement revoke @s only beavergang:use_shield
execute unless data entity @s SelectedItem.components."minecraft:custom_data".beavergang run return fail

execute unless score @s bgcooldown matches 1.. unless predicate beavergang:is_sneaking run function beavergang:events/place/floor/start
execute unless score @s bgcooldown matches 1.. if predicate beavergang:is_sneaking run function beavergang:events/swap/path

execute unless score @s bgcooldown matches 1.. run scoreboard players set @s bgcooldown 4