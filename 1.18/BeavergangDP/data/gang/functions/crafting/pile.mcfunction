# 1.18 28.12.21 avvvvvvie

recipe take @s gang:pile
advancement revoke @s only gang:crafted_pile
give @s minecraft:item_frame{CustomModelData:10000450,isPile:1b,EntityTag:{Tags:["beavergang"]}}
clear @s minecraft:knowledge_book
