# 1.18 28.12.21 avvvvvvie

execute store result score deckdata deck run data get entity @s Item.tag.Deck
function gang:storage/finddeckstorage

execute store result score modeldata deck run data get entity @s Item.tag.CustomModelData
scoreboard players operation modeldata deck -= 10000301 deck
scoreboard players set cardsleft deck 66
scoreboard players operation cardsleft deck -= modeldata deck

data modify storage gang:deck temp set from storage gang:deck decks[0]
data modify storage gang:deck decks[0].Cards set value []

function gang:shuffle/shuffle

data remove storage gang:deck temp
scoreboard players set rotating deck 2


# 10000301 =  0     66-0  =  66
# 10000366 =  65    65-65 =  1
# 10000367 =  66    66-66 =  0
