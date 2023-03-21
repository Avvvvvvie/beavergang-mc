# 1.18 28.12.21 avvvvvvie

advancement revoke @s only gang:placedeck
scoreboard players reset raycast deck

scoreboard players operation modeldata deck = @s deck
scoreboard players operation deckdata deck = @s cardnumber
scoreboard players operation isDeck deck = @s ItemRotation
scoreboard players operation isPile deck = @s NextRotation
scoreboard players operation hiddenValue deck = @s hiddenValue
scoreboard players operation decktype deck = @s decktype

scoreboard players operation placeHidden deck = @s placeHidden
execute at @s anchored eyes positioned ^ ^ ^0.5 run function gang:deck/detect2
