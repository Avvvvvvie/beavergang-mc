
advancement revoke @s only beavergang:hurt_interaction
# scoreboard players set @s beavergang 0
tag @s add destroyer
function beavergang:object/find/attack/start

execute unless predicate beavergang:is_sneaking at @s anchored eyes positioned ^ ^ ^1 run function beavergang:events/destroy/card/start
execute if predicate beavergang:is_sneaking unless entity @e[type=item_display,tag=this_display, scores={beavergang=1..}] at @s anchored eyes positioned ^ ^ ^1 run function beavergang:events/destroy/card/start
execute if predicate beavergang:is_sneaking at @s anchored eyes positioned ^ ^ ^1 as @e[type=item_display,tag=this_display, scores={beavergang=1..}] run function beavergang:events/destroy/deck/start

tag @s remove destroyer
tag @e[type=interaction,tag=this_interaction] remove this_interaction
tag @e[type=item_display,tag=this_display] remove this_display