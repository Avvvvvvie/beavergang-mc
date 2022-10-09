# 1.18 28.12.21 avvvvvvie

# execute if score rotating deck matches 2 at @s run tellraw @a[distance=..20] "[shuffling cards]"
scoreboard players set rotating deck 1
scoreboard players remove cardrotate deck 1
data modify storage gang:deck temp.Cards append from storage gang:deck temp.Cards[0]
data remove storage gang:deck temp.Cards[0]
execute unless score cardrotate deck matches -1 if predicate gang:1-2chance run function gang:shuffle/rotate
