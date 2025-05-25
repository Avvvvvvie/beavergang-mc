
scoreboard players set placed_card beavergang 0
execute if data entity @e[type=item_display,tag=this_display,limit=1] {item:{components:{"minecraft:custom_data":{type:1}}}} run function beavergang:events/interaction_paths/display_card
execute if score placed_card beavergang matches 0 run function beavergang:events/place/floor/start