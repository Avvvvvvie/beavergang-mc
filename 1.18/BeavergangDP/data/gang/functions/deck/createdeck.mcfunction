# 1.18 28.12.21 avvvvvvie

execute store result entity @s Item.tag.Deck int 1 run scoreboard players get deckdata deck
execute if score deckdata deck matches 0 run function gang:deck/newdeck

function gang:storage/finddeckstorage

# data modify entity @s Item.tag.Cards set from storage gang:deck decks[0]
data modify entity @s Item.tag.isDeck set value 1b
# data merge entity @s {CustomName:"\"Take Card\"",CustomNameVisible:1} :((
tag @s add deck
