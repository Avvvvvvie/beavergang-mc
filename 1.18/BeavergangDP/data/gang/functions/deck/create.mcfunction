# 1.18 28.12.21 avvvvvvie

data merge entity @s {Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:10000001,EntityTag:{Tags:["beavergang"]}}}}

execute if score hiddenValue deck matches 1.. run scoreboard players operation modeldata deck = hiddenValue deck
execute if score placeHidden deck matches 1 if score modeldata deck < 10000100 cardnumber run scoreboard players operation modeldata deck += 100 cardnumber
execute if score placeHidden deck matches 2 if score modeldata deck > 10000100 cardnumber if score modeldata deck matches ..10000299 run scoreboard players operation modeldata deck -= 100 cardnumber

execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get modeldata deck

data modify entity @s Invisible set value 1b

execute if score isDeck deck matches 1 run function gang:deck/createdeck
execute if score isPile deck matches 1 run function gang:deck/createpile

scoreboard players set raycast deck 20
tag @s add card
