# run at dropping location, have a display tagged with this_display (known from find interaction)
execute as @e[type=item_display] if score @s beavergang = @e[tag=this_display,limit=1] beavergang run tag @s add curr_deck
execute at @e[type=item_display,tag=base, tag=curr_deck] as @e[type=item_display,tag=curr_deck,limit=1,sort=furthest] run tag @s add furthest
# preserve player location
execute as @e[type=item_display,tag=furthest] run function beavergang:events/destroy/card/kill
tag @e[type=item_display,tag=curr_deck] remove curr_deck