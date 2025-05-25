# summon item at @s with model of _model

execute store result score _rotationX beavergang run data get entity @s Rotation[0]
scoreboard players operation _rotationX beavergang += 90 beavergang
scoreboard players set _width beavergang 70
scoreboard players set _height beavergang 2
data modify storage beavergang:temp translation set value [0.0f,0.42f,0.0f]
data modify storage beavergang:temp scale set value [0.8f,0.8f,0.8f]

function beavergang:object/display/start