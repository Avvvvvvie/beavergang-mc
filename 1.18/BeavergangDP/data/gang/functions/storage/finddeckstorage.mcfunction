# 1.18 28.12.21 avvvvvvie
# needs deckdata deck score

# tellraw @a [{"text":"deckdata: "},{"score":{"objective":"deck","name":"deckdata"}}]

execute store result score tempnumber deck run data get storage gang:deck decks[0].ID

execute unless score tempnumber deck = deckdata deck run function gang:storage/finddeckstorage2
