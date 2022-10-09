# 1.18 28.12.21 avvvvvvie

tag @s add haddeck
execute store success score hasEmptyPile deck run clear @s minecraft:item_frame{CustomModelData:10000450} 0
execute if score hasEmptyPile deck matches 1 run function gang:piledeck/deck
