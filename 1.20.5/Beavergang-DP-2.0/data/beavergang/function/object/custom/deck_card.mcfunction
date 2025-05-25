# put 1 to nolimit on beavergang scoreboard for very high pile

execute store result score _model beavergang run data get storage beavergang:temp cards[0][0]
execute store result score _hidden beavergang run data get storage beavergang:temp cards[0][1]

execute unless score nolimit beavergang matches 1 run data remove storage beavergang:temp cards[0]

scoreboard players operation _rotationX beavergang = _rotation beavergang
execute store result score _variation beavergang run data get entity @e[limit=1,sort=random] Rotation[0]

scoreboard players operation _variation beavergang %= 10 beavergang
scoreboard players operation _variation beavergang -= 5 beavergang
scoreboard players operation _rotationX beavergang += _variation beavergang

function beavergang:object/display/start

scoreboard players operation @e[type=item_display,tag=newObject,limit=1] beavergang = _id beavergang

execute unless score first beavergang matches 1 run tag @e[tag=newObject] add base
execute unless score first beavergang matches 1 run scoreboard players set first beavergang 1
tag @e[type=item_display,tag=newObject] remove newObject

execute unless score nolimit beavergang matches 1 run scoreboard players remove _loop beavergang 1

execute unless score _loop beavergang matches ..0 positioned ~ ~0.01 ~ run function beavergang:object/custom/deck_card