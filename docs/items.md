## Item tweaks

A collection of various item tweaks, mostly of QoL and "make sense" nature.

- [Hassle-free ammo](#hassle--free-ammo)
- [Throwing weapons damage type](#throwing-weapons-damage-type)
- [Remove blur graphics from items](#remove-blur-graphics-from-items)
- [Effects of scrolls and potions do not stack with themselves](#effects-of-scrolls-and-potions-do-not-stack-with-themselves)
- [Sensible Cloak of Mirroring](#sensible-cloak-of-mirroring)
- [Weightless ammo](#weightless-ammo)
- [Sensible Wand of Frost](#sensible-wand-of-frost)
- [Potion of really mirrored eyes](#potion-of-really-mirrored-eyes)
- [Unlimited goodberries stacking](#unlimited-goodberries-stacking)
- [Improved Shandalar's cloak](improved-shandalars-cloak)
- [Algernon's cloak: usable once per day](#algernons-cloak-usable-once-per-day)
- [Improved Equalizer](#improved-equalizer)
- [Working protection from poison](#working-protection-from-poison)

### Hassle-free ammo
An inventory management pain killer:
- Changes all ammo and stackable throwing weapons to have 0 weight. Kind of cheese.
- Adds returning **non-magical** ammo and throwing weapons to Taerom and Ribald, at a fair price.

### Throwing weapons damage type
In BG2, all throwing weapons does missile (piercing) damage. Including axes, and even hammers. Also both axes and hammers are missing strength bonus. This was likely done for balance purposes, but seems a bit silly.

This component allows to change either, or both.

### Remove blur graphics from items
Removes eye-straining blur graphics from several items. Doesn't change actual Blur spell.

Currently includes:
- Semaj's cloak
- Claw of Kazgaroth
- Cloack of Displacement.

### Sensible Cloak of Mirroring
It turns out that the Cloak of Mirroring with BG2 Fixpack protects from area effect spells, which doesn't make much sense. And it doesn't protect from Call Lighting, which also is strange. This compoment fixes both issues.

### Effects of scrolls and potions do not stack with themselves

In PnP, a potion is a "liquid spell". Consuming it releases the spell. Considering that basically none of the actual spells stack with themselves, it seems strange that potion effects do.

Thus, this component makes effects potions and scrolls of resistance non-stackable with themselves.

Example 1: you drink a potion of fire resistance and get +50% fire resistance. A turn later you drink one more potion of fire resistance. No additional resistance is gained, but duration of its effect is refreshed.

Example 2: you drink a potion of fire resistance and use a scroll of fire resistance. Now you have +100% fire resistance.

_(Now you can actually use all the resistance scrolls you've been hoarding and never using.)_

### Sensible Wand of Frost
In vanilla, Wand of Frost mechanics are strange: it must target on a creature, but affects an area. This will allow you to either make it fully single-target (like Agannazar's Scorcher), or AoE (like Cone of Cold).

### Potion of really mirrored eyes
Strangely, Potion of Mirrored Eyes doesn't protect from all gaze attacks. Demons' Death Gaze, for example, will bypass it. This component fixes that oversight, and makes the Potion realiable against ANY gaze attack.

### Unlimited goodberries stacking
Goodberries stack size is 5 by default, and if created regularly, they quickly clutter the inventory. Especially so if you're using an AI script from a mod like SCS that creates them automatically.

That is is silly, of course - just how much space a berry takes? Now you can stuff them all into a single slot.

### Improved Shandalar's cloak
The cloak that an archmage sends a group of adventurers to get must be something important, right? However, in game it's just a rag with no abilities, which is a bummer. TnT changes the cloak into something worthwhile.

### Algernon's cloak: usable once per day
Algernon's cloak is also known as the Cloak of Cheese, because it has nigh unlimited uses - a developers oversight. EE changes that to a single use per day. TnT does the same for classic editions.

### Improved Equalizer
Equalizer seems a bit underpowered. It's one of three weapons that require over 2 components to assemble, yet by the time you get it, it's vastly overshadowed by already available weapons.

TnT increases its power considerably, providing additional bonuses based on _wielder's_ alignment. Hint: True Neutral characters will find it most useful.

### Working protection from poison
Multiple items in BG2 boast to grant the wielder "immunity to all poisons". Unfortunately, none really do. What they do provide is immunity to poison effect - so you can't get poisoned. But certain spells such as Cloudkill apply poison damage directly, and immunity is bypassed. This component fixes the items so that the wielder is really immune to poisons.

Currently affects:
- Ring of Gaxx
- Periart of Proof against Poison
- Protection from Poison scrolls

