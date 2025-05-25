
execute as @e[type=item_display] if score @s beavergang = @e[type=item_display,tag=this_display,limit=1] beavergang run tag @s add curr_deck

scoreboard players set _model beavergang 1999996
scoreboard players set _hidden beavergang 1999996
scoreboard players set _type beavergang 2
function beavergang:object/item/start

execute at @e[type=item_display,tag=base, tag=curr_deck,limit=1] as @e[type=item_display,tag=curr_deck,sort=nearest] run function beavergang:events/destroy/deck/as_card

tag @e[type=item,tag=newObject] remove newObject