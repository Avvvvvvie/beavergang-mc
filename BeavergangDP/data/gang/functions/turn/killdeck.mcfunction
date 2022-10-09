# 1.18 28.12.21 avvvvvvie

execute store result score deckdata deck run data get entity @s Item.tag.Deck
function gang:storage/finddeckstorage
data remove storage gang:deck decks[0]


kill @s
