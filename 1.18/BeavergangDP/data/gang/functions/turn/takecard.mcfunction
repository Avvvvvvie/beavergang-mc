# 1.18 28.12.21 avvvvvvie

scoreboard players operation @s ItemRotation -= 1 ItemRotation
execute store result entity @s ItemRotation byte 1 run scoreboard players get @s ItemRotation

execute store result score @s ItemRotation run data get entity @s ItemRotation
scoreboard players operation @s NextRotation = @s ItemRotation
scoreboard players operation @s NextRotation += 1 ItemRotation
execute unless score @s NextRotation >= 0 ItemRotation run scoreboard players set @s NextRotation 1

execute store result score modeldata2 deck run data get entity @s Item.tag.CustomModelData
scoreboard players operation modeldata2 deck += 1 deck
execute if score modeldata2 deck matches 10000367.. run scoreboard players set modeldata2 deck 10000367
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get modeldata2 deck


execute store result score deckdata deck run data get entity @s Item.tag.Deck
function gang:storage/finddeckstorage
execute store result score heighttemp deck run data get storage gang:deck decks[0].height
scoreboard players remove heighttemp deck 1
execute store result storage gang:deck decks[0].height int 1 run scoreboard players get heighttemp deck

execute if entity @a[advancements={gang:interact_with_itemframe=true},distance=..6,predicate=gang:look_at_deck] run function gang:turn/getcard

execute unless data storage gang:deck decks[0].Cards[] run function gang:turn/killdeck
