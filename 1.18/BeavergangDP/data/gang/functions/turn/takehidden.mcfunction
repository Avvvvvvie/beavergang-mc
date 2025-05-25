# 1.18 28.12.21 avvvvvvie

scoreboard players operation tempcard2 deck = tempcard deck
scoreboard players set tempcard deck 10000101
execute store result entity @e[type=item,distance=0,tag=newbeavercard,limit=1] Item.tag.hiddenValue int 1 run scoreboard players get tempcard2 deck
