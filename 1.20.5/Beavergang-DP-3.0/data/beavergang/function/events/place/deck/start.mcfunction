# run as player with item in hand, have a card in deck tagged with this_display (known from find interaction)

execute as @e[type=item_display,tag=this_display] unless score @s beavergang matches 1.. run function beavergang:events/place/deck/new_id
execute as @e[type=item_display] if score @s beavergang = @e[type=item_display,tag=this_display,limit=1] beavergang run tag @s add curr_deck
execute at @e[type=item_display,tag=base,tag=curr_deck] at @e[type=item_display,tag=curr_deck,limit=1,sort=furthest] positioned ~ ~0.01 ~ run function beavergang:object/create

scoreboard players operation @e[type=item_display,tag=newObject] beavergang = @e[type=item_display,tag=base] beavergang
tag @e[type=item_display,tag=newObject] remove newObject
tag @e[type=item_display,tag=curr_deck] remove curr_deck
item modify entity @s weapon.mainhand beavergang:remove