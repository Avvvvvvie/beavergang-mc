# 1.18 28.12.21 avvvvvvie

execute store result entity @s Item.tag.Deck int 1 run scoreboard players get deckdata deck
execute if score deckdata deck matches 0 run function gang:deck/newpile

function gang:storage/findpiletorage

data modify entity @s Item.tag.Cards set from storage gang:deck decks[0]
data modify entity @s Item.tag.isPile set value 1b
data merge entity @s {CustomName:'{"text":"Place Card"}',CustomNameVisible:1}
tag @s add pile
