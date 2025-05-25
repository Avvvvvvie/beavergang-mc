scoreboard players remove @a[scores={bgcooldown=1..}] bgcooldown 1

execute as @a[tag=uses_settings] run function beavergang:settings/path
execute as @a[tag=!uses_settings] if predicate beavergang:uses_settings at @s anchored eyes run function beavergang:settings/open