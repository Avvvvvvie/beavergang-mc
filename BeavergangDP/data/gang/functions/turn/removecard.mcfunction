# 1.18 28.12.21 avvvvvvie

item modify entity @s weapon.mainhand gang:remove1
scoreboard players operation modeldata deck = @s deck
scoreboard players operation modeldata deck -= 10000010 deck
execute if score modeldata deck matches 100.. run scoreboard players remove modeldata deck 100
