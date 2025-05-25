recipe take @s beavergang:card
advancement revoke @s only beavergang:crafted_card

execute store result score random beavergang run random value 10000000..10000018

scoreboard players operation _model beavergang = random beavergang
scoreboard players set _type beavergang 1
scoreboard players set _hidden beavergang 1999999
execute at @s run function beavergang:object/item/start
tag @e[type=item,tag=newObject] remove newObject

clear @s minecraft:knowledge_book
