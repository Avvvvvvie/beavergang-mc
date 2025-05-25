
tag @s add current
execute as @e[tag=beavergang_settings] if score @s beavergang = @p[tag=current] beavergang run kill @s

execute unless score @s beavergang matches 1.. run function beavergang:settings/new_id
summon interaction ^0.5 ^-0.4 ^1.5 {height: 1f, width: 0.5f, Tags:[beavergang_settings,newInteraction,place],Passengers:[{id:"minecraft:text_display",text:{"text":"dynamic","italic":"true"},Tags:[beavergang_settings,translate2, newInteraction,neg,place],Passengers:[{id:"minecraft:text_display",text:{"text":"Place:"},Tags:[beavergang_settings,newInteraction,translate,neg]}]}]}
summon interaction ^-0.5 ^-0.4 ^1.5 {height: 1f, width: 0.5f, Tags:[beavergang_settings,newInteraction,take],Passengers:[{id:"minecraft:text_display",text:{"text":"dynamic","italic":"true"},Tags:[beavergang_settings,translate2, newInteraction,pos,take],Passengers:[{id:"minecraft:text_display",text:{"text":"Take:"},Tags:[beavergang_settings,newInteraction,translate,pos]}]}]}

scoreboard players operation @e[tag=newInteraction] beavergang = @s beavergang
execute as @e[tag=translate,tag=newInteraction] run data modify entity @s transformation.translation[1] set value -0.4f
execute as @e[tag=translate2,tag=newInteraction] run data modify entity @s transformation.translation[1] set value -0.7f
execute store result score _rotationX beavergang run data get entity @s Rotation[0]
scoreboard players operation _rotationX beavergang += 200 beavergang
execute as @e[tag=pos,tag=newInteraction] store result entity @s Rotation[0] float 1 run scoreboard players get _rotationX beavergang
scoreboard players operation _rotationX beavergang -= 40 beavergang
execute as @e[tag=neg,tag=newInteraction] store result entity @s Rotation[0] float 1 run scoreboard players get _rotationX beavergang

execute store result score _rotationY beavergang run data get entity @s Rotation[1]
scoreboard players operation _rotationY beavergang *= -1 beavergang
execute as @e[type=text_display,tag=newInteraction] store result entity @s Rotation[1] float 1 run scoreboard players get _rotationY beavergang

function beavergang:settings/update_take
function beavergang:settings/update_place
tag @s remove current

tag @e[tag=newInteraction] remove newInteraction
tag @s add uses_settings
tag @s add uses_settings_1
tag @s remove uses_settings_2

title @s actionbar "shift to choose deck"