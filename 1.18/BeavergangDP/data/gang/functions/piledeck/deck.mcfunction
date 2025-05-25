# 1.18 28.12.21 avvvvvvie

tag @s add sneakingdeck
scoreboard players operation deckdata deck = @s cardnumber
function gang:storage/finddeckstorage

clear @s minecraft:item_frame{CustomModelData:10000450} 1

data modify storage gang:deck piles prepend from storage gang:deck decks[0]
data remove storage gang:deck decks[0]

# get heighttemp and get value on top of pile
execute store result score heighttemp deck run data get storage gang:deck piles[0].height
execute store result score piletoptemp deck run data get storage gang:deck piles[0].Cards[0]

execute if score heighttemp deck matches 0 run scoreboard players set modeldata deck 10000450
execute if score heighttemp deck matches 1..8 run scoreboard players set modeldata deck 10000500
# 500-512 size 1_X

execute if score heighttemp deck matches 9..17 run scoreboard players set modeldata deck 10000550
# 550-562 size 2_X

execute if score heighttemp deck matches 18..26 run scoreboard players set modeldata deck 10000600
# 600-612 size 3_X

execute if score heighttemp deck matches 27..35 run scoreboard players set modeldata deck 10000650
# 650-662 size 4_X

execute if score heighttemp deck matches 36..44 run scoreboard players set modeldata deck 10000700
# 700-712 size 5_X

execute if score heighttemp deck matches 45..54 run scoreboard players set modeldata deck 10000750
# 750-762 size 6_X

execute if score heighttemp deck matches 55..65 run scoreboard players set modeldata deck 10000800
# 800-850 size 7_X

execute if score heighttemp deck matches 66.. run scoreboard players set modeldata deck 10000850
# 850-862 size 8_X

scoreboard players operation modeldata deck += piletoptemp deck


# tellraw @a [{"text":"heighttemp: "},{"score":{"objective":"deck","name":"heighttemp"}}]
# tellraw @a [{"text":"piletoptemp: "},{"score":{"objective":"deck","name":"piletoptemp"}}]
# tellraw @a [{"text":"modeldata: "},{"score":{"objective":"deck","name":"modeldata"}}]

item modify entity @s weapon.mainhand gang:remove1
execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{isPile:1b,EntityTag:{Tags:["beavergang"]}}},Tags:["piletodeck"]}
execute at @s store result entity @e[tag=piletodeck,type=minecraft:item,sort=nearest,limit=1] Item.tag.CustomModelData int 1 run scoreboard players get modeldata deck
execute at @s store result entity @e[tag=piletodeck,type=minecraft:item,sort=nearest,limit=1] Item.tag.Deck int 1 run scoreboard players get deckdata deck


scoreboard players set @s countdown 1
function gang:piledeck/cooldown


# height  - deck              - pile      - cards taken  - deckmodeldata 300000XX
# 0       - not possible      - size 0_X  - 66-...       -  /
# 1-8     - size 8            - size 1_X  - 58-65        -
# 9-17    - size 7            - size 2_X  - 49-57        -
# 18-26   - size 6            - size 3_X  - 40-48        -
# 27-35   - size 5            - size 4_X  - 31-39        -
# 36-44   - size 4            - size 5_X  - 22-30        -  27-35
# 45-54   - size 3            - size 6_X  - 12-21        -  18-26
# 55-65   - size 2            - size 7_X  - 1-11         -  9-17
# 66-...  - size 1            - size 8_X  - ...-0        -  1

# 66 cards -> height = 66, deck model: 10000301, 0 taken    / pile model size 8_X
# 65 cards -> height = 65, deck model: 10000302, 1 taken    / pile model size 8_X
# 2 cards ->  height = 2, deck model:  10000365, 65 taken   / pile model size 1_X
# 1 card   -> height = 1, deck model:  10000366, 65 taken   / pile model size 0_X

# height 0 -> size 0_X      500-512
# height 1-8 -> size 1_X    550-562
# height 55-65 -> size 2_X  800-812
# height 66+ -> size 8_X    850-862




# only if empty pile thing in inventory
# execute store success score hasEmptyPile deck run clear @s minecraft:item_frame{CustomModelData:10000450} 0
# remove 1 empty pile thing from inventory
# clear @s minecraft:item_frame{CustomModelData:10000450} 1
