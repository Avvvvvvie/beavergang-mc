
execute store result score _model beavergang run data get storage beavergang:temp cards[0][0]
execute store result score _hidden beavergang run data get storage beavergang:temp cards[0][1]

data modify storage beavergang:temp cardsNew prepend value [0,0]
execute if score _model beavergang >= _hidden beavergang run function beavergang:events/swap/deck_swap
execute if score _model beavergang < _hidden beavergang run function beavergang:events/swap/deck_stay

data remove storage beavergang:temp cards[0]

scoreboard players remove _loop beavergang 1
execute unless score _loop beavergang matches ..0 run function beavergang:events/swap/deck_loop_hide