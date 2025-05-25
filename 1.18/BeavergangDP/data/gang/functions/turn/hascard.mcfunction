# 1.18 28.12.21 avvvvvvie

function gang:turn/updatepilerotation
execute as @p[advancements={gang:interact_with_itemframe=true},distance=..6] store result score @s deck run data get entity @s SelectedItem.tag.CustomModelData
execute at @s if entity @p[advancements={gang:interact_with_itemframe=true},distance=..6,scores={deck=10000010..10000199},predicate=gang:look_at_pile] unless score @p[advancements={gang:interact_with_itemframe=true},distance=..6,scores={deck=10000010..10000199},predicate=gang:look_at_pile] deck matches 10000101 run function gang:turn/placecard
execute at @s if entity @p[advancements={gang:interact_with_itemframe=true},distance=..6,scores={deck=0},predicate=gang:look_at_pile] run function gang:turn/getcardfrompile
