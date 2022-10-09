# 1.18 28.12.21 avvvvvvie

# tellraw @a [{"score":{"objective":"deck","name":"deckdata"}}]

data modify storage gang:deck decks append from storage gang:deck decks[0]
data remove storage gang:deck decks[0]

execute unless score tempnumber deck = deckdata deck run function gang:storage/finddeckstorage
