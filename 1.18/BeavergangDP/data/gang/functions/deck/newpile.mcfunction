# 1.18 28.12.21 avvvvvvie

execute store result entity @s Item.tag.Deck int 1 run scoreboard players get maxID deck
data modify storage gang:deck piles prepend value {ID:0,Cards:[]}
execute store result storage gang:deck piles[0].ID int 1 run scoreboard players get maxID deck
scoreboard players operation deckdata deck = maxID deck

scoreboard players add maxID deck 1
