# 1.18 28.12.21 avvvvvvie

scoreboard players enable @s beavertrigger2
scoreboard players enable @s beavertrigger1
tellraw @s [{"text":"Your scores are:"}]
tellraw @s [{"text":"PlaceHidden for ","color":"#ffa500","clickEvent":{"action":"run_command","value":"/trigger beavertrigger1 set 1"}},{"selector":"@s","clickEvent":{"action":"run_command","value":"/trigger beavertrigger1 set 1"}},{"text":": ","clickEvent":{"action":"run_command","value":"/trigger beavertrigger1 set 1"}},{"score":{"objective":"placeHidden","name":"@s"},"clickEvent":{"action":"run_command","value":"/trigger beavertrigger1 set 1"}}]
tellraw @s [{"text":"TakeHidden  for ","color":"#ffa500","clickEvent":{"action":"run_command","value":"/trigger beavertrigger2 set 1"}},{"selector":"@s","clickEvent":{"action":"run_command","value":"/trigger beavertrigger2 set 1"}},{"text":": ","clickEvent":{"action":"run_command","value":"/trigger beavertrigger2 set 1"}},{"score":{"objective":"takeHidden","name":"@s"},"clickEvent":{"action":"run_command","value":"/trigger beavertrigger2 set 1"}}]


# place armorstand->invisible als entitytag, head dings CustomModelData, name mit text mit triggers? -> actionbar

##############################
# takeHidden  -> 0/1   if cards from deck are hidden for player
# placeHidden -> 0/1/2       if cards get placed hidden(1) or shown(1) automatically
##############################
