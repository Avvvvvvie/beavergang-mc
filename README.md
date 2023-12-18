# beavergang-mc 2.0 (1.19.4 rc-2)

Did you ever want to play beaver gang in minecraft? No? Well now you can anyways.

## Versions
The 2.0 version was tested in 1.19.4 rc-2 and 1.20.1 

## How to use:
After putting the datapack and the resource pack in their respective folder, run `function beavergang:setup`.
You will get a "settings item", with which you can configure the following:

- Place cards hidden, open or dynamic
- Take cards hidden, open or dynamic
- Get yourself different decks with shift

(A hidden card shows the back of the card on both sides. This way neither you or other players know what card it is.)

## Controls:

### obviously:
hold any beavergang item + place/destroy -> place/destroy
decks and cards can be placed on other decks and cards

### special controls:
- shift + click on placed card: flip the card
- shift + click on placed deck: shuffle the deck
- destroy deck: only destroys topmost card
- shift & destroy deck: destroys entire deck
- shift + click with card in hand: flips the card in your hand (only works if you dont target a placed item, otherwise that one will get flipped/shuffled)
- shift + click with deck in hand: flips all the cards in the deck to the same direction (")

## debug functions:
You may use any af these funcitons. Includes:
- `beavergang:debug/give_settings`
- `beavergang:debug/toggle_limit`: if activated, any deck you palce generates a massive pile of cards up to the command chain limit. The last card might be bugged depending on the exact limit.
- if it ever happens that you can't destroy a card because it has no hitbox, run `beavergang:debug/kill_nearest`

## technical stuff
You can expand the system to add any amount of cards or other placeable items.

there are the following flags:
- beavergang item: `beavergang:1b`
- placed beavergang item (entity): has tag `beavergang`
- settings item: `beavergang_settings:1b`
- settings interaction entities: has tag `beavergang_settings`

Any shield with the beavergang tag / item with the settings tag can interact with the beavergang/beavergang_settings logic.

A beavergang item also has a `type` property.
It defines the hitbox size, the model, display scale and translation. Cards are type 1, decks are type 2. To make new types, create an new file in `object/custom` (copy it from `pillow.mcfunction`, which is type 3) then, link the function in `object/create`. define the item name in `object/item/name`

Items with type 1&2 behave specially. Only these items can be stacked and placing a type 2 item always creates type 1 items.

To add new cards, add the model in the resourcepack in shield.json and edit `set_model` in the `debug/give_cards` to get a card with the new model. The custom_model_data of the card should be an even number, the next uneven number the card when it is hidden.
