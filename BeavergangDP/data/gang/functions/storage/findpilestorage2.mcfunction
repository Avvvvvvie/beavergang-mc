# 1.18 28.12.21 avvvvvvie

data modify storage gang:deck piles append from storage gang:deck piles[0]
data remove storage gang:deck piles[0]

execute unless score tempnumber deck = deckdata deck run function gang:storage/findpilestorage
