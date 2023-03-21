# 1.18 28.12.21 avvvvvvie

# execute Cat @s as @p[advancements={gang:interact_with_itemframe=true},distance=..6] if score @s deck matches 10000010.. if score @s deck matches ..10000199 run function gang:turn/removecard
# modeldata = card value (10-22)

# execute store result score deckdata deck run data get entity @s Item.tag.Deck
# function gang:storage/findpilestorage

execute store result storage gang:deck pilecardtemp int 1 run scoreboard players get modeldata deck
data modify storage gang:deck piles[0].Cards prepend from storage gang:deck pilecardtemp


# execute unless data storage gang:deck piles[0].height run data modify storage gang:deck piles[0].height set value 0
execute store result score pileheight deck run data get storage gang:deck piles[0].height
scoreboard players add pileheight deck 1
execute store result storage gang:deck piles[0].height int 1 run scoreboard players get pileheight deck
# pileheight=1 -> 1 card on pile


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
scoreboard players set pilechange deck 0

# 10000011 -> 10000401 / 10000451 / 10000501 / ...
# 10000111 -> 10000401 / ...

# height  - deck              - pile      - cards taken  - deckmodeldata 300000XX
# 0       - not possible      - size 0_X  - 66-...       -  /
# 1-8     - size 8            - size 1_X  - 58-65        -  1-8
# 9-17    - size 7            - size 2_X  - 49-57        -  9-17
# 18-26   - size 6            - size 3_X  - 40-48        -  18-26
# 27-35   - size 5            - size 4_X  - 31-39        .  ...
# 36-44   - size 4            - size 5_X  - 22-30
# 45-54   - size 3            - size 6_X  - 12-21
# 55-65   - size 2            - size 7_X  - 1-11
# 66-...  - size 1            - size 8_X  - ...-0
