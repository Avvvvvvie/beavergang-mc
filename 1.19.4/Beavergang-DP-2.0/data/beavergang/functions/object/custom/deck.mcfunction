# summon item at @s with model of _model

execute store result score _rotation beavergang run data get entity @s Rotation[0]
scoreboard players operation _rotation beavergang += 90 beavergang

scoreboard players set _id beavergang 0
scoreboard players operation _id beavergang = @e[type=item_display,tag=this_display,scores={beavergang=1..},limit=1] beavergang
execute unless score _id beavergang matches 1.. run function beavergang:object/custom/deck_new

scoreboard players set _width beavergang 50
scoreboard players set _height beavergang 3
scoreboard players set _type beavergang 1
data modify storage beavergang:temp translation set value [0.0f,-0.026f,0.0f]
data modify storage beavergang:temp scale set value [0.4f,0.2f,0.4f]

data modify storage beavergang:temp cards set from entity @s SelectedItem.tag.cards
execute store result score _loop beavergang run data get entity @s SelectedItem.tag.cards
function beavergang:object/custom/deck_card