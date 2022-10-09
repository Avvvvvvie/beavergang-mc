# 1.18 28.12.21 avvvvvvie
#  execute at @a as @e[type=minecraft:item_frame,distance=..4] if data entity @s Item.tag.CustomModelData run

execute store result score @s ItemRotation run data get entity @s ItemRotation
execute if score @s ItemRotation = @s NextRotation unless entity @p[predicate=gang:is_sneaking,predicate=gang:look_at_card] run function gang:turn/turned
execute if score @s ItemRotation = @s NextRotation if entity @p[predicate=gang:is_sneaking,predicate=gang:look_at_card] run function gang:turn/sneak
# scoreboard players reset @a beaversneak
execute unless score @s NextRotation >= 0 ItemRotation run scoreboard players set @s NextRotation 1
