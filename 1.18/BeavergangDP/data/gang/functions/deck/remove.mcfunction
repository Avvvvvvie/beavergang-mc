# 1.18 28.12.21 avvvvvvie

advancement revoke @s only gang:removedeck
execute at @s as @e[type=item_frame,distance=..6,tag=card] unless data entity @s Item.tag.CustomModelData run kill @s
