# beavergang-mc 3.0

Did you ever want to play beaver gang in minecraft? No? Well now you can anyways.

## Versions
Version 3 is for 1.20.5

Version 2 is for 1.19.4 rc-2 until 1.20.4

Version 1 is for 1.18

## How to use:
After putting the datapack and the resource pack in their respective folder, run `/function beavergang:setup`.
You will get a "settings item", with which you can configure the following:

- Always place cards hidden, open or dynamic
- Always take cards hidden, open or dynamic
- Get yourself different deck variations with shift

The use of these settings is to be able to 100% guarantee that other players will not be able to see your cards. The game is also playable with only the default dynamic mode. 

## Controls:

### Obviously:
Hold any beavergang item + place/destroy -> place/destroy.
Decks and cards merge when placed on top of other decks and cards

### Special controls:
- shift + click on placed card: flip the card
- shift + click on placed deck: shuffle the deck
- destroy deck: only destroys topmost card
- shift & destroy deck: destroys entire deck
- shift + click with card in hand: flips the card in your hand (only works if you are not targeting a block in front of you)
- shift + click with deck in hand: flips all the cards in the deck to the same direction (")
- to interact with settings, click the floating text

## Debug functions:
You may use any of these functions. Includes some utilities:
- `beavergang:debug/give_settings`
- `beavergang:debug/toggle_limit`: if activated, any deck you place generates a massive pile of cards up to the command chain limit. The last card might be bugged depending on the exact limit.
- if you can't destroy a card because it is bugged, run `beavergang:debug/kill_nearest`

## Technical stuff
You can expand the system to add any amount of cards or other placeable items.

Following flags exist:
- beavergang item: `beavergang:1b`
- placed beavergang item (entity): has tag `beavergang`
- settings item: `beavergang_settings:1b`
- settings interaction entities: has tag `beavergang_settings`

Any shield with the beavergang tag / item with the settings tag can interact with the beavergang/beavergang_settings logic.

A beavergang item also has a `type` property.
It defines the hitbox size, the model, display scale and translation. Cards are type 1, decks are type 2.

To make new types, create a new file in `object/custom` (copy it from `pillow.mcfunction`, which is type 3) then, link the function in `object/create`. define the item name in `object/item/name`

Items with type 1&2 behave specially. Only these items can be stacked and placing a type 2 item always creates type 1 items.

To add a new card model, add the model in the resourcepack in shield.json. To get the card, edit `set_model` in the `debug/give_cards` or put it into a deck.

## Screenshots
![all cards](https://github.com/Avvvvvvie/beavergang-mc/blob/main/1.19.4/screenshots/2023-12-20_17.05.25.png)
![decks](https://github.com/Avvvvvvie/beavergang-mc/blob/main/1.19.4/screenshots/2023-12-20_17.07.42.png)
![settings](https://github.com/Avvvvvvie/beavergang-mc/blob/main/1.19.4/screenshots/2023-12-20_17.09.11.png)
