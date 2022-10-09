# 1.18 28.12.21 avvvvvvie
# repeating function

execute at @a as @e[type=minecraft:item_frame,distance=..7] if data entity @s Item.tag.CustomModelData run function gang:turn/detect2
execute at @a[scores={takeHidden=1}] as @e[type=minecraft:item,distance=..7,tag=!hidbyplayer,tag=!newbeavercard] run function gang:turn/hidebyplayer
execute as @a[scores={takeHidden=0}] if data entity @s SelectedItem.tag.hiddenValue unless data entity @s {SelectedItem:{tag:{hiddenValue:0}}} run item modify entity @s weapon.mainhand gang:show_hidden_card

# for deck creation
execute as @a if data entity @s SelectedItem.tag run function gang:deck/selecteddata
execute as @a unless data entity @s SelectedItem.tag run title @s clear

execute as @a[scores={beavertrigger1=1}] run function gang:settings/beavertrigger1
execute as @a[scores={beavertrigger2=1}] run function gang:settings/beavertrigger2

execute as @a[tag=winner] at @s run particle minecraft:totem_of_undying ~ ~0.5 ~ 0 0 0 1 2 normal
