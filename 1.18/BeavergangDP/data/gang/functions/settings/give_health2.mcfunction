
attribute @s minecraft:generic.max_health base set 1000
data modify entity @s Health set value 1000.0f
tag @s remove weak
summon slime ~ ~0.6 ~ {Tags:["beaver2"],NoGravity:1,NoAI:1,Attributes:[{Name:"minecraft:generic.max_health",Base:1000.0f}],Health:1000.0f,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
summon slime ~ ~1.2 ~ {Tags:["beaver3"],NoGravity:1,NoAI:1,Attributes:[{Name:"minecraft:generic.max_health",Base:1000.0f}],Health:1000.0f,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
summon slime ~ ~1.8 ~ {Tags:["beaver4"],NoGravity:1,NoAI:1,Attributes:[{Name:"minecraft:generic.max_health",Base:1000.0f}],Health:1000.0f,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
effect give @s minecraft:invisibility 1000000 1 true
summon minecraft:armor_stand ~ ~0.6 ~ {Invisible:1,Small:1,Tags:["beaver5"],NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:paper",Count:1b,tag:{CustomModelData:10000001}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
