## Tweaks-and-Tricks mod for Baldur's Gate 2


This mod is a collection of tweaks to:
- fix some annoying and/or unrealistic aspects of the game
- add some flavor
- make some things easier
- make other things harder

It will work with BG2:ToB or [BGT](http://www.spellholdstudios.net/ie/bgt). Some components are BGT-only. [Download](#installation)

- [Components](#components)
- [Installation](#installation)
- [Changelog](#changelog)
- [Used sotftware](#used-sotftware)
- [Author](#author)
- [License](#license)


## Components

- [Convenience](#convenience)
  - [Remove blur graphics from items](#remove-blur-graphics-from-items)
  - [Easy traps](#easy-traps)
  - [Less autosaves](#less-autosaves)
  - [Convenient familiars](#convenient-familiars)
    - [Smarter](#smarter-familiars)
    - [Faster](#faster-familiars)
    - [More resilient](#resilient-familiars)
- [Soundsets](#soundsets)
  - [Extended soundsets for NPC](#extended-soundsets-for-npc)
  - [BG1-style party interaction system](#bg1-style-party-interaction-system)
  - [No talking when hiding in shadows](#no-talking-when-hiding-in-shadows)
  - [Make NPC soundsets available to PC](#make-npc-soundsets-available-to-pc)
- [Common sense](#common-sense)
  - [Fair fights](#fair-fights)
  - [Sensible Cloak of Mirroring](#sensible-cloak-of-mirroring)
  - [Spider form ignores web](#spider-form-ignores-web)
  - [Effects of scrolls and potions do not stack with themselves](#effects-of-scrolls-and-potions-do-not-stack-with-themselves)
  - [True true sight](true-true-sight)
- [Cheese](#cheese)
  - [Cheesy Slayer: full heal on change](#cheesy-slayer-full-heal-on-change)
  - [Cheesy Slayer: reputation](#cheesy-slayer-reputation)
  - [Starting bags](#starting-bags)
  - [Add BG1 tomes stats bonuses to new BG2 characters](#add-bg1-tomes-stats-bonuses-to-new-bg2-characters)
  - [Shops always buy goods at the same price](#shops-always-buy-goods-at-the-same-price)
  - [Weightless flasher swarmers]
- [Anti-cheese](#anti-cheese)
  - [Close shop steal exploit](#close-shop-steal-exploit)
  - [No XP farming](#no-xp-farming)

### Convenience

#### Remove blur graphics from items
Removes eye-straining blur graphics from several items. Doesn't touch actual Blur spell.

Currently includes:
- Semaj's cloak
- Claw of Kazgaroth

#### Easy traps
Add "trap sense" to characters. Before a trap is "detected" by thief skill, a party member will "sense" it: notice that something's wrong, and alert others. It allows for faster, less frustrating dungeon exploration.
Options:
- Allow sensing in combat (by default, characters will not notice possible traps in combat. With this component, they will)
- Increase trap sense range (default range is about half line of sight. This component increases it to LoS)
- Stop moving, or Stop moving and pause game (choose which action do you prefer when trap is "sensed")
- Center on character (yes/no?)
- Play a sound ("trap found" sound, yes/no?)
- Core (required to enable any of previous components)

#### Less autosaves
Autosave can be a boon or a plague. They consume time, in any case. If you're playing no-reload, you might not need them at all. This components allows you to disable many area transition autosaves. (But not all of them. Every time you go through worldmap, there still be an autosave).

#### Convenient familiars

##### Smarter familiars
- Allow familiars to pick up loot for you (move chosen items from the floor and chests to your inventory). Yes, it can actually fetch items for you!
- Have them jump into the pack when there's danger or they're injured. Very useful at later stages.

The less a familiar is told to pick up, the faster it'll do it. So, try to keep the list short. For example, don't tell it to pick up bandit scalps in BG2.

**There are known issues with this component:**
- Familiars will pick up items from closed or trapped chests. Live with it or don't use it.
- If told to jump into pack when see enemies, and get out of it when not, in certain areas (not many) a glitch happens.
The familiar will start to jump in and out continuously. In that case, talk to it, tell it to stay in the pack. Reverse the directive when you leave this area.

##### Faster familiars
Make the familiars move as if they had boots of speed, so they don't lag behind the rest of the team.

##### Resilient familiars
Protect familiars from getting critical hits (which are almost always lethal to them).


### Soundsets

#### Extended soundsets for NPC
- [Additions only](#additions-only)
- [BG1 soundsets prevail](#bg1-soundsets-prevail)
- [BG2 soundsets prevail](#bg2-soundsets-prevail)

This component extends NPC soundsets by re-using their sounds from BG1 in BG2 and vice-versa.

Example: BG1 Jaheira has only 1 battle cry: "For The fallen!". So the whole game you listen to that over and over.

But, BG2 Jaheira has 2 more battle cries:
 - "Fall creature! And feed the earth!"
 - "Nature take the life she gave!"

This component adds those extra battle cries to BG1 Jaheira. And adds one more, from a voiced dialogue line. So in the end, both BG1 and BG2 Jaheira have 4 battle cries:
 - "For the fallen!"
 - "Fall creature! And feed the earth!"
 - "Nature take the life she gave!"
 - "Die your final death!"

In some cases, there are too many sounds to fit into one soundset. So the 3 subcomponents are:

##### Additions only
Only missing sounds are added, therefore after transition soundsets may change.

##### BG1 soundsets prevail
Prefer BG1 sounds, after transition soundsets do not change.

##### BG2 soundsets prevail
Prefer BG2 sounds, after transition soundsets do not change.

If this explanation is too confusing, but you'd like to hear more different sounds, just take "Additions only".


#### BG1-style party interaction system
- [Reintroduce](#reintroduce)
- [Reintroduce and adjust to framerate](#reintroduce-and-adjust-to-framerate)
- [Disable](#disable)

In BG1, party interaction was based not on banters, but rather on occasional chit-chat between party members - compliments and insults.
They happen in real time, without a dialog window.

Example:

Jaheira: "You are amusing, in a "what the hell is wrong with you" kind of way."

Edwin: "Watch your words when addressing me, lest they be fed to you on the end of my boot!"

##### Reintroduce
This option reintroduces compliments and insults in BG2, and slightly expands them in BG1.

##### Reintroduce and adjust to framerate
Original BG1 was running at 30 FPS, and sounds were recorded with that in mind.
But BG2 allows framerates up to 90. Setting high FPS, however, sometimes causes compliments and responses to overlap (responses are triggered too early).
This option will also adjust the sounds to your current framerate.

##### Disable
Or, if you rather prefer your NPC not to talk too much, you can disable this interaction altogether.
This only affects compliments and insults, not banters.

#### No talking when hiding in shadows
Silence joinable NPC "hidden in shadows" sound (for example, Yoshimo's "All the world is blind to my passing"). It quickly gets annoying if you use thief scout script.


#### Make NPC soundsets available to PC
Allows to use any of the original Bioware NPCs soundsets for the main character.



### Common sense


#### Fair fights
A few opponents in the game basically cheat, or just have unrealistic stats. Sometimes it's to prevent you from breaking the plot, sometimes not. Anyway, if you know what you're doing - why not? This component will allow you to fight them fair and square. Currently affects:
- Arcanis Gath, the thief that insta-kills you upon attacking Renal. Now you can fight him, he has a normal sword. Beware - if you do that, the game plot may be broken.
- Borda, the magic merchant cheat in BG1 (100% magic resistance - removed)
- Malchor Harpell, the Drizzt's friend that imprisons the whole party without a chance of escaping (now you can fight him)
- Shandalar, the Ulgoth's Beard archmage (90% all resistances removed, innocent no longer)
- Laskal, Cloakwood shadow druid (innocent no longer, since he attacks first)
- Winski Perorate (innocent no longer, since he's just not)


#### Sensible Cloak of Mirroring
It turns out that the Cloak of Mirroring with BG2 Fixpack protects from area effect spells, which doesn't make much sense. And it doesn't protect from Call Lighting, which also is strange. This compoment fixes both issues.


#### Spider form ignores web
Become immune to web while in spider form (which is strangely not the case in the original game).

#### Effects of scrolls and potions do not stack with themselves

Makes effects potions and scrolls of resistance non-stackable with themselves, to make scrolls more worthwhile.

Example 1: you drink a potion of fire resistance and get +50% fire resistance. A turn later you drink one more potion of fire resistance. No additional resistance is gained, but duration of its effect is refreshed.

Example 2: you drink a potion of fire resistance and use a scroll of fire resistance. Now you have +100% fire resistance.


#### True True sight
Make True sight dispel illusions almost instantly, not once per round.

This is for people who don't like thieves' "gulp an invisibility potion - backstab - gulp - backstab" routine. Which gets especially annoying with SCS.

There are 2 justifying motives:
- True sight is supposed to be true sight. Not "true sight every 6 seconds". The caster always sees everything for what it is.
- Even if the caster didn't, the rogues are supposed to have 1 action per round, which either drink the potion or attack. Not both.

It works in both mage and priest versions of the spell. And of course, in enemy spells, as well.

### Cheese

#### Cheesy Slayer: full heal on change
The player character will be healed fully on turning into Slayer. Makes it a better "last resort" ability.


#### Cheesy Slayer: reputation
- [Reduced loss](#reduced-loss)
- [No loss](#no-loss)

The Slayer form is virtually unusable by good characters because of the reputation penalty. But usually no one is even alive after seeing it - so why should reputation suffer? Up to you to decide.

##### Reduced loss
With reduced loss, you lose only 1 point of reputation, even when turning into Ravager (in vanilla, it's 3).

##### No loss
No reputation hit on any change.


#### Starting bags
- [Gem, scroll, potion, ammo (GSPA)](#gem-scroll-potion-ammo-gspa)
- [GSPA + holding](#gspa--holding)
- [GSPA + holding, bottomless](#gspa--holding-bottomless)

AKA inventory management painkiller. In both Candlekeep and Irenicus dungeon, you can find a few bags to start the adventure with.
In Candlekeep, talk to Thorius. In the dungeon, check the painting.

##### Gem, scroll, potion, ammo (GSPA)
Provides you with 4 basic bags.

##### GSPA + holding
Same 4 bags, and a bag of holding.

##### GSPA + holding, bottomless
Same 5 bags, all bottomless.


#### Add BG1 tomes stats bonuses to new BG2 characters
To brand new BG2 charaters, gives the stat bonuses that they were supposed to gain from tomes in BG1. The subcomponents are self-describing.
##### Each stat gets +1
##### Each stats except Wisdom gets +1, Wisdom gets +3


#### Shops always buy goods at the same price
Makes store buying price constant, regardless of how many items are already in stock. Now, you don't have to pile up equipment before selling to get the max money for it. The price is always the same!


#### Weightless ammo
Make throwing daggers, axes and darts weightless.

If [PPG banterpack users](http://www.pocketplane.net/bant) is install, it will also affect Jan's new ammo

### Anti-cheese

#### Close shop steal exploit
- [Can't steal from fences](#cant-steal-from-fences)
- [Can't steal from any shops](#cant-steal-from-any-shops)

Close infinite money "steal-sell-steal" exploit. Options are:

##### Can't steal from fences
You can steal from normal merchants, but can't steal from those who buy stolen items themselves.

##### Can't steal from any shops
Just disable stealing in all shops.


#### No XP farming
Disables the possibility of XP farming in the most tempting spots in BG1: wyvern cave, golem cave, ankheg cave and skeleton warrior trap (Durlag's tower).


## Installation
- Download tweaks-and-tricks zip from the [latest release page](https://github.com/burner1024/bg2-tweaks-and-tricks/releases/latest)
- Unzip it
- Move "tweaks-and-tricks" and "setup-tweaks-and-tricks.exe" into the game directory
- Launch setup-tweaks-and-tricks.exe


## Changelog
- Version 7
  - New component: True true sight
  - Fair fights: make Arkanis Gath killable
- Version 6
  - Extended soundsets: more sounds
  - Easy traps: fixed missing vent trap
  - Smarter familiars: fixed quasit missing in ToB
  - NPC soundsets for PC: fixed bug when 1/2 versions were the same
  - NPC soundsets for PC: added more sounds
  - Under the hood changes:
    - compliments/insults: left as .wav instead of .wavc - make DTLCEP happy
    - update weidu to 239
    - general code cleanup
- Version 5
  - Added "easy traps" component
  - Added "less autosaves" component
  - Added Laskal, Phandalyn and Winski Perorate to "Fair fight" (remove innocent flag)
  - Let famliars pick up winter wolf pelts, ankheg shells, wyvern heads
  - Expanded no-farming to skeleton warriors in Durlag's Tower
  - Fixed effect duplication in "unstack potions" component
  - Made "unstackable potions" compatible with Rogue Rebalancing
- Version 4
  - Added "no shop depreciation" component
  - Added "no XP farming" component
  - Added "resilient familiars" component
  - Fixed version tag
- Version 3
  - Added a few new components
  - Revised all code
  - Actually released it
- Version 2
  - Merged in Tweaks-And-Tricks
  - Renamed the mod
  - Updated the components
  - Updated to weidu 238
-  Version 1: initial release


## Used software

* [DLTCEP](http://sourceforge.net/projects/gemrb/files/Utilities/)
* [WeiDU](http://www.weidu.org/~thebigg/README-WeiDU.html)
* [G3 Debugging Suite](http://www.gibberlings3.net/debug/)
* [NearInfinity](https://github.com/Argent77/NearInfinity)

## License
It's provided as is, without any guarantee. Feel free to use it in any way that you see fit.

## Author
burner1024 @ github
