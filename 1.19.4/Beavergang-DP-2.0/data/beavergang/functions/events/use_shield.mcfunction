
advancement revoke @s only beavergang:use_shield

execute unless score @s bgcooldown matches 1.. unless predicate beavergang:is_sneaking run function beavergang:events/place/floor/start
execute unless score @s bgcooldown matches 1.. if predicate beavergang:is_sneaking run function beavergang:events/swap/path

scoreboard players set @s bgcooldown 4