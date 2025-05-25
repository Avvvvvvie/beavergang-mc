# 1.18 28.12.21 avvvvvvie
# tellraw @a [{"text":"left: "},{"score":{"objective":"deck","name":"cardsleft"}}]

scoreboard players operation cardrotate deck = cardsleft deck
function gang:shuffle/rotate

data modify storage gang:deck decks[0].Cards prepend from storage gang:deck temp.Cards[0]
data remove storage gang:deck temp.Cards[0]
# rotatio a random amount of times (with limit of cardsleft)
# pick cart and put into set
# repeat until no card left

scoreboard players remove cardsleft deck 1
execute unless score cardsleft deck matches -1 run function gang:shuffle/shuffle
