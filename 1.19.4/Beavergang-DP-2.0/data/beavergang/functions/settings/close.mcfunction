
tag @s add current
execute as @e[tag=beavergang_settings] if score @s beavergang = @p[tag=current] beavergang run kill @s
tag @s remove uses_settings
tag @s remove current
tag @s remove uses_settings_2