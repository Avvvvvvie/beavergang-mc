
tag @s add current
execute as @e[tag=beavergang_settings] if score @s beavergang = @p[tag=current] beavergang run kill @s

execute positioned ^ ^-0.2 ^1.4 run summon interaction ~ ~ ~ {height: 1f, width: 0.5f, Tags:[beavergang_settings,newInteraction,get],Passengers:[{id:"minecraft:text_display",text:'{"text":"beavergang","italic":"true"}',Tags:[beavergang_settings,newInteraction,get],Passengers:[{id:"minecraft:text_display",text:'{"text":"get deck:"}',Tags:[beavergang_settings,newInteraction,translate]}]}]}

scoreboard players operation @e[tag=newInteraction] beavergang = @s beavergang

execute as @e[tag=translate,tag=newInteraction] run data modify entity @s transformation.translation[1] set value 0.4f

execute store result score _rotationX beavergang run data get entity @s Rotation[0]
scoreboard players operation _rotationX beavergang += 180 beavergang
execute as @e[type=text_display,tag=newInteraction] store result entity @s Rotation[0] float 1 run scoreboard players get _rotationX beavergang

execute store result score _rotationY beavergang run data get entity @s Rotation[1]
scoreboard players operation _rotationY beavergang *= -1 beavergang
execute as @e[type=text_display,tag=newInteraction] store result entity @s Rotation[1] float 1 run scoreboard players get _rotationY beavergang

function beavergang:settings/update_get
tag @e[tag=newInteraction] remove newInteraction
tag @s remove current

tag @s add uses_settings_2
tag @s add uses_settings
tag @s remove uses_settings_1