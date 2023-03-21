# 1.18 28.12.21 avvvvvvie

execute store result score deckdata deck run data get entity @s Item.tag.Deck
function gang:storage/findpilestorage
execute at @p[advancements={gang:interact_with_itemframe=true},distance=..6,scores={deck=0}] run summon minecraft:item


execute store result score tempcard deck run data get storage gang:deck piles[0].Cards[0]
data remove storage gang:deck piles[0].Cards[0]

scoreboard players operation tempcard deck += 10000010 deck

execute as @p[advancements={gang:interact_with_itemframe=true},distance=..6,scores={deck=0},predicate=gang:look_at_pile] at @s run function gang:turn/summoncard


# get model with new card on top
execute store result score modeldata deck run data get storage gang:deck piles[0].Cards[0]

execute store result score pileheight deck run data get storage gang:deck piles[0].height
scoreboard players remove pileheight deck 1
execute store result storage gang:deck piles[0].height int 1 run scoreboard players get pileheight deck

execute if score pileheight deck matches 0 run scoreboard players add modeldata deck 10000450

execute if score pileheight deck matches 1..8 run scoreboard players add modeldata deck 10000500
# 500-512 size 1_X

execute if score pileheight deck matches 9..17 run scoreboard players add modeldata deck 10000550
# 550-562 size 2_X

execute if score pileheight deck matches 18..26 run scoreboard players add modeldata deck 10000600
# 600-612 size 3_X

execute if score pileheight deck matches 27..35 run scoreboard players add modeldata deck 10000650
# 650-662 size 4_X

execute if score pileheight deck matches 36..44 run scoreboard players add modeldata deck 10000700
# 700-712 size 5_X

execute if score pileheight deck matches 45..54 run scoreboard players add modeldata deck 10000750
# 750-762 size 6_X

execute if score pileheight deck matches 55..65 run scoreboard players add modeldata deck 10000800
# 800-850 size 7_X

execute if score pileheight deck matches 66.. run scoreboard players add modeldata deck 10000850
# 850-862 size 8_X


execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get modeldata deck
