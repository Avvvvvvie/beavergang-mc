# 1.18 28.12.21 avvvvvvie

execute store result entity @s Item.tag.Deck int 1 run scoreboard players get maxID deck
execute if score decktype deck matches ..1 run data modify storage gang:deck decks prepend value {ID:0,height:66,Cards:[0,0,0,0,1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,9,9,9,9,10,10,10,10,10,10,10,11,11,11,11,11,11,12,12,12,12,12,12,12,12,12]}
execute if score decktype deck matches 2 run data modify storage gang:deck decks prepend value {ID:0,height:56,Cards:[2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,13,13,13,13,14,14,14,14,15,15,15,15,16,16,16,16,27,27,27,27,28,28,28,28]}
execute if score decktype deck matches 3 run data modify storage gang:deck decks prepend value {ID:0,height:52,Cards:[2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,13,13,13,13,14,14,14,14,15,15,15,15,16,16,16,16,27,27,27,27]}
execute if score decktype deck matches 4.. run data modify storage gang:deck decks prepend value {ID:0,height:36,Cards:[6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,13,13,13,13,14,14,14,14,15,15,15,15,16,16,16,16,27,27,27,27]}

execute store result storage gang:deck decks[0].ID int 1 run scoreboard players get maxID deck
scoreboard players operation deckdata deck = maxID deck

scoreboard players add maxID deck 1

execute if score decktype deck matches ..1 run data modify entity @s Item.tag.CustomModelData set value 10000301
execute if score decktype deck matches 2 run data modify entity @s Item.tag.CustomModelData set value 10000311
execute if score decktype deck matches 3 run data modify entity @s Item.tag.CustomModelData set value 10000315
execute if score decktype deck matches 4.. run data modify entity @s Item.tag.CustomModelData set value 10000331

# cards:
# 10000010 = 0
# 10000011 = 1
# ...19 = 9
# 20 = look card
# 21 = exchange card
# 22 = take two cards card

# plan:
# 23 10
# 24 jack
# 25 queen
# 26 king
# 27 ace (=1)
# 28 joker

# decktype= 1 -> beavergang deck
# decktype= 2 -> french deck with joker
# decktype= 3 -> french deck without joker
# decktype= 4 -> swiss deck (but with french cards lol)
