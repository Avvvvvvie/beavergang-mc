# 1.18 28.12.21 avvvvvvie

tag @s add sneakingdeck
scoreboard players operation deckdata deck = @s cardnumber
function gang:storage/findpilestorage

data modify storage gang:deck decks prepend from storage gang:deck piles[0]
data remove storage gang:deck piles[0]

execute store result score heighttemp deck run data get storage gang:deck decks[0].height
# heighttemp

scoreboard players operation heighttemp deck -= 66 deck
scoreboard players operation heighttemp deck *= -1 deck
scoreboard players operation heighttemp deck += 10000301 deck
execute if score heighttemp deck matches ..10000300 run scoreboard players set heighttemp deck 10000301

# tellraw @a [{"text":"heighttemp uwu: "},{"score":{"objective":"deck","name":"heighttemp"}}]

item modify entity @s weapon.mainhand gang:remove1
execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{isDeck:1b,EntityTag:{Tags:["beavergang"]}}},Tags:["piletodeck"]}
execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{isPile:1b,CustomModelData:10000450,EntityTag:{Tags:["beavergang"]}}}}
execute at @s store result entity @e[tag=piletodeck,type=minecraft:item,sort=nearest,limit=1] Item.tag.CustomModelData int 1 run scoreboard players get heighttemp deck
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
