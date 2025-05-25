
scoreboard players remove _raycast beavergang 1
execute unless score _raycast beavergang matches ..0 positioned ^ ^ ^0.3 if block ~ ~ ~ #beavergang:nonsolid run function beavergang:events/place/floor/raycast
execute unless block ^ ^ ^0.3 #beavergang:nonsolid positioned ^ ^ ^0.3 run function beavergang:events/place/floor/place_floor