# summon item at @s with model of _model

execute store result score _rotationX beavergang run data get entity @s Rotation[0]
scoreboard players operation _rotationX beavergang += 90 beavergang
scoreboard players set _width beavergang 50
scoreboard players set _height beavergang 3
data modify storage beavergang:temp translation set value [0.0f,0.0f,0.0f]
data modify storage beavergang:temp scale set value [0.4f,0.2f,0.4f]

function beavergang:object/display/start