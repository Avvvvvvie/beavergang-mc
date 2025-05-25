
execute as @e[type=item_display] if score @s beavergang = @e[type=item_display,tag=this_display,limit=1] beavergang run tag @s add curr_deck

# swap two cards for amount of cards
execute store result score _loop beavergang if entity @e[tag=curr_deck]
function beavergang:events/shuffle/deck/loop
tag @e[type=item_display,tag=curr_deck] remove curr_deck