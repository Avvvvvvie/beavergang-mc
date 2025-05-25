
data modify storage beavergang:temp swapvalue.value set from entity @s SelectedItem.components."minecraft:custom_model_data".floats[0]

function beavergang:events/swap/set_custom_model_data with entity @s SelectedItem.components."minecraft:custom_data"
function beavergang:events/swap/set_hidden with storage beavergang:temp swapvalue