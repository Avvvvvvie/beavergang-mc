
advancement revoke @s only gang:hit_slime_1

give @s minecraft:slime_spawn_egg{CustomModelData:10000001,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999}],DeathLootTable:"gang:air",EntityTag:{Tags:["settings","weak","beaver1"],NoAI:1,Size:0,Invisible:0b,CustomNameVisible:1,CustomName:'[{"text":"Settings","color":"yellow"}]'}}
execute as @e[type=slime,predicate=!gang:not_hurt] at @s positioned ~-0.5 ~ ~-0.5 run tp @e[tag=beaver2,dy=3] ~ ~-200 ~
execute as @e[type=slime,predicate=!gang:not_hurt] at @s positioned ~-0.5 ~ ~-0.5 run tp @e[tag=beaver3,dy=3] ~ ~-200 ~
execute as @e[type=slime,predicate=!gang:not_hurt] at @s positioned ~-0.5 ~ ~-0.5 run tp @e[tag=beaver4,dy=3] ~ ~-200 ~
execute as @e[type=slime,predicate=!gang:not_hurt] at @s positioned ~-0.5 ~ ~-0.5 run tp @e[tag=beaver5,dy=3] ~ ~-200 ~
execute as @e[type=slime,predicate=!gang:not_hurt] at @s run tp @s ~ ~-200 ~
