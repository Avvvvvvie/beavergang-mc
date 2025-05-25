# 1.18 28.12.21 avvvvvvie
# needs deckdata deck score

execute store result score tempnumber deck run data get storage gang:deck piles[0].ID

execute unless score tempnumber deck = deckdata deck run function gang:storage/findpilestorage2
