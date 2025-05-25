# run as display at dropping location
function beavergang:object/drop
execute at @s run kill @e[type=interaction,distance=..0.1, sort=nearest,limit=1]
kill @s