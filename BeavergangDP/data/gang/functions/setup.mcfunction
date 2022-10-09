# 1.18 28.12.21 avvvvvvie
# TODO:

# give different types of decks
# crafting recipes for decks and pile thing

# yukine: 56 cards, jass: 36
#
#
# tellraw @a [{"text":"deckdata: "},{"score":{"objective":"deck","name":"deckdata"}}]


# cards:
# 10000010 = 0
# 10000011 = 1
# ...19 = 9
# 20 = look card
# 21 = exchange card
# 22 = take two cards card

# plan:
# 23 10
# 24 jack
# 25 queen
# 26 king
# 27 ace (=1)
# 28 joker

# every card has following modeldatas:
# shown (10000010-10000100)
# hidden (10000101-10000300)
# pile 2-9_X (10000500-10000549/.../10000850-10000899)

# 10000301-10000449 = decks
# 10000450-10000499 = pile thing


scoreboard objectives add cardnumber dummy
scoreboard players set 100 cardnumber 100
scoreboard players set 10000100 cardnumber 10000100

# scoreboard objectives add beaversneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add ItemRotation dummy
scoreboard players set 1 ItemRotation 1
scoreboard players set 0 ItemRotation 0

scoreboard objectives add NextRotation dummy

execute as @e[type=minecraft:item_frame] if data entity @s Item.tag.CustomModelData run execute store result score @s ItemRotation run data get entity @s ItemRotation
execute as @e[type=minecraft:item_frame] if data entity @s Item.tag.CustomModelData run scoreboard players operation @s NextRotation = @s ItemRotation
execute as @e[type=minecraft:item_frame] if data entity @s Item.tag.CustomModelData run scoreboard players operation @s NextRotation += 1 ItemRotation

# data merge storage gang:deck {decks:[{ID:0, cards:[0,0,0]}]}

scoreboard objectives add deck dummy
scoreboard players set 66 deck 66
scoreboard players set 10000300 deck 10000300
scoreboard players set 10000301 deck 10000301
scoreboard players set 10000450 deck 10000450
scoreboard players set 10000010 deck 10000010
scoreboard players set 10000110 deck 10000110
scoreboard players set 10000900 deck 10000900

scoreboard players set 1 deck 1
scoreboard players set -1 deck -1
scoreboard players set 50 deck 50

scoreboard players set maxID deck 1

# scoreboard objectives add beaverplayer dummy
# scoreboard players set maxID beaverplayer 1
# scoreboard objectives add placeddeck minecraft.used:minecraft.item_frame

scoreboard objectives add placeHidden dummy
scoreboard objectives add countdown dummy
scoreboard objectives add decktype dummy
scoreboard objectives add hiddenValue dummy

scoreboard objectives add takeHidden dummy
scoreboard objectives add beavertrigger1 trigger
scoreboard objectives add beavertrigger2 trigger

# scoreboards:
# cardnumber, ItemRotation, NextRotation, deck, placeHidden, countdown, decktype, hiddenValue, takeHidden, beavertrigger1,-2
