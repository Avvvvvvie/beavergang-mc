# 1.18 28.12.21 avvvvvvie

execute if data entity @s SelectedItem.tag.isDeck run function gang:piledeck/hasemptypile
execute if data entity @s[tag=!haddeck] SelectedItem.tag.isPile run function gang:piledeck/pile
tag @s remove haddeck
