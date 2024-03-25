scoreboard players set add beavergang 0
execute unless score nolimit beavergang matches 1 run scoreboard players set add beavergang 1
execute if score nolimit beavergang matches 1 run scoreboard players set nolimit beavergang 0
execute if score add beavergang matches 1 run scoreboard players set nolimit beavergang 1
tellraw @a [{"text":"nolimit is: "},{"score":{"objective":"beavergang","name":"nolimit"}}]