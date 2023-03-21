# 1.18 28.12.21 avvvvvvie
# included in turn/detect to repeat

execute store success score numbersuccess deck if data entity @s {SelectedItem:{id:"minecraft:item_frame"}} run data get entity @s SelectedItem.tag.CustomModelData
execute if score numbersuccess deck matches 1 store result score @s deck run data get entity @s SelectedItem.tag.CustomModelData


execute store result score @s cardnumber run data get entity @s SelectedItem.tag.Deck
execute store success score @s ItemRotation run data get entity @s SelectedItem.tag.isDeck
execute store success score @s NextRotation run data get entity @s SelectedItem.tag.isPile
execute store result score @s hiddenValue run data get entity @s SelectedItem.tag.hiddenValue

execute if entity @s[predicate=gang:is_sneaking,tag=!sneakingdeck] run function gang:piledeck/pileordeck

# execute if score hidecards deck matches 1 run title @s actionbar [{"text":"place hidden","italic":"true"}]

# scoreboards:
# @s deck = modeldata (for cards and decks)
# @s cardnumber = deck ID (for cards and new decks 0)          (didnt want too many scoreboards)
# @s ItemRotation = isDeck (for new and old decks)             (now the names dont make sense ;-;)
# @s NextRotation = isPile (for all piles)
# deckdata deck = current deck ID
# modeldata deck = current modeldata (what player has)
# modeldata2 deck = what item_frame had before (for decks/piles)
# isDeck deck = current idDeck value
# tempnumber deck = first ID of storage, used in storage functions
# tempcard deck = card value that player will get from deck

# @s deck -> modeldata
# @s cardnumber -> deckdata (ID)
# @s ItemROtation -> isDeck
# @s NextRotation -> isPile
