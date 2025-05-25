
advancement revoke @s only beavergang:interact
# scoreboard players set @s beavergang 0

function beavergang:object/find/interaction/start
execute if predicate beavergang:is_sneaking run function beavergang:events/interaction_paths/sneak
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{beavergang:1b}}}} unless predicate beavergang:is_sneaking run function beavergang:events/interaction_paths/no_sneak

tag @e[type=interaction,tag=this_interaction] remove this_interaction
tag @e[type=item_display,tag=this_display] remove this_display