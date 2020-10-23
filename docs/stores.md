## Stores

- [Stores always buy goods at the same (low) price](#stores-always-buy-goods-at-the-same-low-price)
- [Close store steal exploit](#close-store-steal-exploit)
- [More ankheg armors by Taerom](#more-ankheg-armors-by-taerom)
- [Limited stock](#limited-stock)

### Stores always buy goods at the same (low) price
Depreciation never worked properly in BG, it's recalculated upon pressing Sell button, which is why selling items in batches to get the highest return value is an (in)famous exploit. And that leads to much inventory tetris, of course.

This component:
1. Disables depreciation in stores. Makes store buying price constant, regardless of how many items are already in stock.
2. Set the buy markup to a constant value of 20% (as if the items were already depreciated to the maximum).

The effect is that on one hand, you won't have to worry about when to sell what and to whom. But on the other hand, you'll get less gold overall. If you have been using batch selling heavily, you'll get _much_ less gold overall. **You've been warned.**

### Close shop steal exploit
Close infinite money "steal-sell-steal" exploit. Options are:

##### Can't steal from fences
You can steal from normal merchants, but can't steal from those who buy stolen items themselves.

##### Can't steal from any shops
Just disable stealing in all shops.

### More ankheg armors by Taerom
It seems silly that Taerom constantly complains how **the business is slow**, yet he will only make you one suite of ankheg plate, and not more, even if you have both money and materials. This component enabled him to make as many as you need.

### Limited stock
Having unlimited of anything in a store looks strange. Even more so then the items are magical - scrolls, potions, etc. This just can't be in FR setting. Thus, the stocks of any "infinite" item in any store is limited to a max of 10. _Except_ non-magical ammo and throwing weapons.
