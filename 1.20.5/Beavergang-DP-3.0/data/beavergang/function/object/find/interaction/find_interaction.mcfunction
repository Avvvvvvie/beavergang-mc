
execute store result score _current beavergang run data get entity @s interaction.timestamp
execute if score _timestamp beavergang = _current beavergang run tag @s add this_interaction

data modify storage beavergang:temp owner set from storage beavergang:temp player
execute store success score _owner beavergang run data modify storage beavergang:temp owner set from entity @s interaction.player

execute unless score _owner beavergang matches 0 run tag @s remove this_interaction

# tellraw @a [{"score":{"objective":"beavergang","name":"_current"}}]
# tellraw @a [{"score":{"objective":"beavergang","name":"_owner"}}]