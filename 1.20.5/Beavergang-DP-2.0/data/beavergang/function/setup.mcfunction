### if you run this, make sure there are no cards placed anywhere and clear everyones scores (or keep players_global and decks_global) ###

### how to use: ###
# run this setup function, then run beavergang:debug/give_settings
# if you hold the settings and shift, you see the 2nd menu where you can click to choose a deck
# then hit the settings to get the deck

# you may also run any other debug functions
# put nolimit on scoreboard beavergang to 1 to create a massive pile any time you place a deck bc funi (since this reaches command chain limit, the last card might be bugged. you can get higher piles with larger command chain limit)

### controls: ###
# obviously:
# hold any beavergang item + place/destroy -> place/destroy
# decks and cards can be placed on other decks and cards

# special controls:
# shift + click on placed card: flip the card
# shift + click on placed deck: shuffle the deck
# destroy deck: only destroys topmost card
# shift & destroy deck: destroys entire deck
# shift + click with card in hand: flips the card in your hand (only works if you dont target a placed item, otherwise that one will get flipped/shuffled)
# shift + click with deck in hand: flips all the cards in the deck to the same direction (")

### item types ###
# 1 card
# 2 deck (only as an item)
# 3 that red/white paper thing i call pillow (its a hankerchief and a red cloth)

#### item models ###
# 1999996 model of deck of cards
# 1999997 settings item
# 1999998 red/white sheet of paper thing
# 1999999 card back on both sides
# 10000000 - 10000018+ cards

### scoreboards ###
# beavergang
# bgcooldown: cooldown on use_ender_pearl, bc that gets detected every tick
# bgs_place, bgs_take, bgs_get: settings for how to place, how to take and which deck type to get

### tags ###
# this_interacton, this_display: interaction&display that got targeted from use_shield or interact_with_entity or player_hurt_entity
# newObject: newly spawned item_display or item
# newInteraction: newly spawned interaction or text_display

### flags ###
# beavergang item: beavergang:1b
# placed beavergang item: Tags:[beavergang]
# settings_item: beavergang_settings:1b
# settings interaction entities: Tags:[beavergang_settings]

### behavior ###
# any ender eye with these flags can interact with the beavergang/beavergang_settings logic.
# the type of the beavergang:1b item defines interaction size, the model&scale&translation. to make new types, create an new file in object/custom (copy it from pillow.mcfunction) then, link the function in object/create. define the item name in object/item/name
# items with type 1&2 behave specially. this is defined by the predicates hold_card and hold_deck, and also plays a role when destroying/placing a deck and placing them onto each other. decks only save the models of containing cards, not the type. a deck will place many cards, and drop the topmost etc.

# if you cant destroy an item, look if the hitbox is still there. otherwise, you have to kill it with debug/kill_nearest
# (this should not have to happen)

scoreboard objectives add beavergang dummy
scoreboard objectives add bgcooldown dummy
scoreboard players set offset beavergang 10000000
scoreboard players set 90 beavergang 90
scoreboard players set 10 beavergang 10
scoreboard players set 180 beavergang 180
scoreboard players set -1 beavergang -1
scoreboard players set 2 beavergang 2
scoreboard players set 5 beavergang 5
scoreboard players set 10 beavergang 10
scoreboard players set 19 beavergang 19
scoreboard players set 40 beavergang 40
scoreboard players set 200 beavergang 200
scoreboard players set nolimit beavergang 0

# keep
scoreboard players set decks_global beavergang 0
scoreboard players set players_global beavergang 0
#

scoreboard objectives add bgs_place dummy
scoreboard objectives add bgs_take dummy
scoreboard objectives add bgs_get dummy

data modify storage beavergang:temp deckTemplates.beavergang set value [[10000000,1999999],[10000000,1999999],[10000000,1999999],[10000000,1999999],[10000001,1999999],[10000001,1999999],[10000001,1999999],[10000001,1999999],[10000002,1999999],[10000002,1999999],[10000002,1999999],[10000002,1999999],[10000003,1999999],[10000003,1999999],[10000003,1999999],[10000003,1999999],[10000004,1999999],[10000004,1999999],[10000004,1999999],[10000004,1999999],[10000005,1999999],[10000005,1999999],[10000005,1999999],[10000005,1999999],[10000006,1999999],[10000006,1999999],[10000006,1999999],[10000006,1999999],[10000007,1999999],[10000007,1999999],[10000007,1999999],[10000007,1999999],[10000008,1999999],[10000008,1999999],[10000008,1999999],[10000008,1999999],[10000009,1999999],[10000009,1999999],[10000009,1999999],[10000009,1999999],[10000009,1999999],[10000009,1999999],[10000009,1999999],[10000009,1999999],[10000010,1999999],[10000010,1999999],[10000010,1999999],[10000010,1999999],[10000010,1999999],[10000010,1999999],[10000011,1999999],[10000011,1999999],[10000011,1999999],[10000011,1999999],[10000011,1999999],[10000011,1999999],[10000012,1999999],[10000012,1999999],[10000012,1999999],[10000012,1999999],[10000012,1999999],[10000012,1999999],[10000012,1999999],[10000012,1999999]]
data modify storage beavergang:temp deckTemplates.frenchdeck set value [[10000002,1999999],[10000002,1999999],[10000002,1999999],[10000002,1999999],[10000003,1999999],[10000003,1999999],[10000003,1999999],[10000003,1999999],[10000004,1999999],[10000004,1999999],[10000004,1999999],[10000004,1999999],[10000005,1999999],[10000005,1999999],[10000005,1999999],[10000005,1999999],[10000006,1999999],[10000006,1999999],[10000006,1999999],[10000006,1999999],[10000007,1999999],[10000007,1999999],[10000007,1999999],[10000007,1999999],[10000008,1999999],[10000008,1999999],[10000008,1999999],[10000008,1999999],[10000009,1999999],[10000009,1999999],[10000009,1999999],[10000009,1999999],[10000013,1999999],[10000013,1999999],[10000013,1999999],[10000013,1999999],[10000014,1999999],[10000014,1999999],[10000014,1999999],[10000014,1999999],[10000015,1999999],[10000015,1999999],[10000015,1999999],[10000015,1999999],[10000016,1999999],[10000016,1999999],[10000016,1999999],[10000016,1999999],[10000017,1999999],[10000017,1999999],[10000017,1999999],[10000017,1999999]]
data modify storage beavergang:temp deckTemplates.frenchdeck_joker set value [[10000002,1999999],[10000002,1999999],[10000002,1999999],[10000002,1999999],[10000003,1999999],[10000003,1999999],[10000003,1999999],[10000003,1999999],[10000004,1999999],[10000004,1999999],[10000004,1999999],[10000004,1999999],[10000005,1999999],[10000005,1999999],[10000005,1999999],[10000005,1999999],[10000006,1999999],[10000006,1999999],[10000006,1999999],[10000006,1999999],[10000007,1999999],[10000007,1999999],[10000007,1999999],[10000007,1999999],[10000008,1999999],[10000008,1999999],[10000008,1999999],[10000008,1999999],[10000009,1999999],[10000009,1999999],[10000009,1999999],[10000009,1999999],[10000013,1999999],[10000013,1999999],[10000013,1999999],[10000013,1999999],[10000014,1999999],[10000014,1999999],[10000014,1999999],[10000014,1999999],[10000015,1999999],[10000015,1999999],[10000015,1999999],[10000015,1999999],[10000016,1999999],[10000016,1999999],[10000016,1999999],[10000016,1999999],[10000017,1999999],[10000017,1999999],[10000017,1999999],[10000017,1999999],[10000018,1999999],[10000018,1999999],[10000018,1999999],[10000018,1999999]]
data modify storage beavergang:temp deckTemplates.swissdeck set value [[10000006,1999999],[10000006,1999999],[10000006,1999999],[10000006,1999999],[10000007,1999999],[10000007,1999999],[10000007,1999999],[10000007,1999999],[10000008,1999999],[10000008,1999999],[10000008,1999999],[10000008,1999999],[10000009,1999999],[10000009,1999999],[10000009,1999999],[10000009,1999999],[10000013,1999999],[10000013,1999999],[10000013,1999999],[10000013,1999999],[10000014,1999999],[10000014,1999999],[10000014,1999999],[10000014,1999999],[10000015,1999999],[10000015,1999999],[10000015,1999999],[10000015,1999999],[10000016,1999999],[10000016,1999999],[10000016,1999999],[10000016,1999999],[10000017,1999999],[10000017,1999999],[10000017,1999999],[10000017,1999999]]

data modify storage beavergang:temp settings set value [{"text":"dynamic"},{"text":"open"},{"text":"hidden"}]
data modify storage beavergang:temp settingsGet set value [{"text":"beavergang"},{"text":"french"},{"text":"french joker"},{"text":"swiss"}]

function beavergang:debug/give_settings