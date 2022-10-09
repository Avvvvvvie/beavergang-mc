# 1.18 28.12.21 avvvvvvie

recipe take @s gang:deck
advancement revoke @s only gang:crafted_deck
give @s minecraft:item_frame{CustomModelData:10000301,isDeck:1b,EntityTag:{Tags:["beavergang"]}}
clear @s minecraft:knowledge_book
