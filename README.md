# beavergang-mc

Have you ever wanted to play beaver gang in minecraft? No? Well now you can.

## How to use:
After putting the datapack and the resource pack in their respective folder, run the gang:setup function. If you run the gang:reset function, you will automatically get some decks and piles (it also removes all previously existing decks/cards). You will get a settings "block" to place. It can switch between:

- Place cards hidden/open/dynamically
- Take cards hidden/open
- What kind of deck gets created when a new one gets placed (beaver gang or other games)

For example, at the beginning of the game, you want to take&place the cards hidden, so you dont see them.

You can also craft decks and piles with paper and light blue / red dye.

Because I still cant maneage to make a fricking tick.json to work, run `function gang:turn/detect` on repeat.

## Mechanics:
A deck is where you take cards, a pile is where you can place multiple cards. Single cards can be placed anywhere, but only stacked on pile items.

- Place card on pile/floor, take from deck: right click.
- Shuffle a deck: Sneak + right click it as often as you want.
- To hide/show a card: Right click without sneaking. 
- To rotate a card/deck/pile: sneak + right click.
- Convert deck to pile (requires empty pile item in inventory), vice-versa: Hold it in your hand + sneak

Keep in mind that a card is actually an item frame, in creative, you dont get it when you destroy it.
