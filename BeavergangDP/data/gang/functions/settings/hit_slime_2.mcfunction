
advancement revoke @s only gang:hit_slime_2


execute if score @s decktype matches 0 run scoreboard players set @s decktype -1
execute if score @s decktype matches 1 run scoreboard players set @s decktype -2
execute if score @s decktype matches 2 run scoreboard players set @s decktype -3
execute if score @s decktype matches 3 run scoreboard players set @s decktype 0
scoreboard players operation @s decktype *= -1 deck

execute if score @s decktype matches 0 run title @s actionbar [{"text":"beavergang"}]
execute if score @s decktype matches 1 run title @s actionbar [{"text":"french deck with joker"}]
execute if score @s decktype matches 2 run title @s actionbar [{"text":"french deck without joker"}]
execute if score @s decktype matches 3 run title @s actionbar [{"text":"swiss deck"}]

data modify entity @s Health set value 1000.0f
