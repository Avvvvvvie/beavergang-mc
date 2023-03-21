# 1.18 28.12.21 avvvvvvie

execute store result score deckdata deck run data get entity @s Item.tag.Deck
function gang:storage/finddeckstorage
execute store result score tempcard deck run data get storage gang:deck decks[0].Cards[0]
data remove storage gang:deck decks[0].Cards[0]

scoreboard players operation tempcard deck += 10000110 deck

execute as @p[advancements={gang:interact_with_itemframe=true},distance=..6,predicate=gang:look_at_deck] at @s run function gang:turn/summoncard
