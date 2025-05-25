execute unless predicate beavergang:uses_settings at @s anchored eyes run function beavergang:settings/close
execute if predicate beavergang:is_sneaking if entity @s[tag=uses_settings_1] at @s anchored eyes run function beavergang:settings/open2
execute unless predicate beavergang:is_sneaking if entity @s[tag=uses_settings_2] at @s anchored eyes run function beavergang:settings/open