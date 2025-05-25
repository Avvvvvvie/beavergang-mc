
execute if score @s bgs_get matches 1 as @e[type=text_display,tag=get] if score @s beavergang = @p[tag=current] beavergang run data modify entity @s text set from storage beavergang:temp settingsGet[0]
execute if score @s bgs_get matches 2 as @e[type=text_display,tag=get] if score @s beavergang = @p[tag=current] beavergang run data modify entity @s text set from storage beavergang:temp settingsGet[1]
execute if score @s bgs_get matches 3 as @e[type=text_display,tag=get] if score @s beavergang = @p[tag=current] beavergang run data modify entity @s text set from storage beavergang:temp settingsGet[2]
execute if score @s bgs_get matches 4 as @e[type=text_display,tag=get] if score @s beavergang = @p[tag=current] beavergang run data modify entity @s text set from storage beavergang:temp settingsGet[3]
