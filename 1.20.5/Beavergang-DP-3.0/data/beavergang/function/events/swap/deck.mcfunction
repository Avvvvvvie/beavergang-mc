
data modify storage beavergang:temp cards set from entity @s SelectedItem.components."minecraft:custom_data".cards
execute store result score _loop beavergang run data get storage beavergang:temp cards

execute store result score __model beavergang run data get storage beavergang:temp cards[0][0]
execute store result score __hidden beavergang run data get storage beavergang:temp cards[0][1]

data modify storage beavergang:temp cardsNew set value []
execute if score __model beavergang <= __hidden beavergang run function beavergang:events/swap/deck_loop_show
execute if score __model beavergang > __hidden beavergang run function beavergang:events/swap/deck_loop_hide

function beavergang:events/swap/deck_loop

item modify entity @s weapon.mainhand beavergang:swap/storage

execute if score __model beavergang <= __hidden beavergang run title @s actionbar "all cards are now shown"
execute if score __model beavergang > __hidden beavergang run title @s actionbar "all cards are now hidden"
