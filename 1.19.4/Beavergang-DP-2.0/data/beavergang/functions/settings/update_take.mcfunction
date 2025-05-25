
execute if score @s bgs_take matches 1 as @e[type=text_display,tag=take] if score @s beavergang = @p[tag=current] beavergang run data modify entity @s text set from storage beavergang:temp settings[0]
execute if score @s bgs_take matches 2 as @e[type=text_display,tag=take] if score @s beavergang = @p[tag=current] beavergang run data modify entity @s text set from storage beavergang:temp settings[1]
execute if score @s bgs_take matches 3 as @e[type=text_display,tag=take] if score @s beavergang = @p[tag=current] beavergang run data modify entity @s text set from storage beavergang:temp settings[2]
