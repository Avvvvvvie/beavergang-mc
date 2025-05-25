
#tellraw @s [{"text": "Nearest Display: "},{"text": "\ntags: "},{"nbt": "", "entity": "@e[type=minecraft:item_display,limit=1,sort=nearest]","color": "green"}]
tellraw @a [{"text":"score of nearest intem display on beavergang: "},{"score":{"objective":"beavergang","name":"@e[type=minecraft:item_display,limit=1,sort=nearest]"}}]