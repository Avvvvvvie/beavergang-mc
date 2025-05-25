# as interactor player
# interaction tag -> this_interaction
# display tag -> this_display

execute store result score _timestamp beavergang run time query gametime
data modify storage beavergang:temp player set from entity @s UUID

execute as @e[type=interaction] run function beavergang:object/find/interaction/find_interaction

execute as @e[type=interaction,tag=this_interaction] at @s run tag @e[type=item_display, sort=nearest,limit=1,distance=..0.1] add this_display