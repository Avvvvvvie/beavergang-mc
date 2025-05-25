execute if score _type beavergang matches 1 run data modify storage beavergang:temp itemName set value {"text":"card"}
execute if score _type beavergang matches 2 run data modify storage beavergang:temp itemName set value {"text":"deck"}
execute if score _type beavergang matches 3 run data modify storage beavergang:temp itemName set value {"text":"sheet"}
execute unless score _type beavergang matches 1..3 run data modify storage beavergang:temp itemName set value {"text":"beavergang item"}