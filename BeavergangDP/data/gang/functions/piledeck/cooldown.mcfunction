# 1.18 28.12.21 avvvvvvie

scoreboard players add @a[scores={countdown=1..20}] countdown 1
tag @a[scores={countdown=21..}] remove sneakingdeck
execute if entity @a[scores={countdown=1..20}] run schedule function gang:piledeck/cooldown 1t
scoreboard players reset @a[scores={countdown=21..}] countdown
