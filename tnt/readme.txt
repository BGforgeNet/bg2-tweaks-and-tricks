## Tweaks-and-Tricks mod for Baldur's Gate 2
<a href="https://tra.bgforge.net/projects/baldurs-gate/tweaks-and-tricks/">
<img src="https://tra.bgforge.net/widgets/baldurs-gate/-/tweaks-and-tricks/svg-badge.svg" alt="Translation status" />
</a>
<a href="https://creativecommons.org/licenses/by-nc-sa/4.0/">
<img src="https://img.shields.io/badge/license-CC%20BY--NC--SA%204.0-blue.svg" alt="License" />
</a>

[__Download__](https://github.com/burner1024/bg2-tweaks-and-tricks/releases/latest)
 | [__Support__](https://github.com/burner1024/bg2-tweaks-and-tricks/issues)
 | [__Discussion__](https://forum.bgforge.net/viewtopic.php?f=4&t=15&p=33)
 | [__Help translating__](https://tra.bgforge.net/projects/baldurs-gate/tweaks-and-tricks/)

This is a collection of tweaks to:
- fix some annoying and/or unrealistic aspects of the game
- add some flavour
- make some things easier
- make other things harder

It will work with BG1, BG2, [BGT](http://www.spellholdstudios.net/ie/bgt), Enhanced Editions (not all components are applicable to all games).

- [Components](#components)
- [Installation](#installation)
- [Changelog](#changelog)
- [Used sotftware](#used-sotftware)
- [Author](#author)
- [License](#license)

## Components

- [Familiars](#familiars)
  - [Smarter](#smarter-familiars)
  - [More resilient](#resilient-familiars)
- [Easy traps](#easy-traps)
- [Soundsets](#soundsets)
  - [Extended soundsets for NPC](#extended-soundsets-for-npc)
  - [BG1-style party interaction system](#bg1-style-party-interaction-system)
  - [No talking when hiding in shadows](#no-talking-when-hiding-in-shadows)
  - [Make NPC soundsets available to PC](#make-npc-soundsets-available-to-pc)
- [Item tweaks](#item-tweaks)
  - [Remove blur graphics from items](#remove-blur-graphics-from-items)
  - [Sensible Cloak of Mirroring](#sensible-cloak-of-mirroring)
  - [Effects of scrolls and potions do not stack with themselves](#effects-of-scrolls-and-potions-do-not-stack-with-themselves)
  - [Weightless ammo](#weightless-ammo)
  - [Sensible Wand of Frost](#sensible-wand-of-frost)
  - [Hassle-free ammo](#hassle--free-ammo)
  - [Potion of really mirrored eyes](#potion-of-really-mirrored-eyes)
- [Spell tweaks](#spell-tweaks)
  - [Spider form ignores web](#spider-form-ignores-web)
  - [Cheesy Slayer: full heal on change](#cheesy-slayer-full-heal-on-change)
  - [Cheesy Slayer: reputation](#cheesy-slayer-reputation)
  - [True true sight](#true-true-sight)
  - [Sensible Otiluke's Sphere](#sensible-otilukes-phere)
- [Gameplay and rules](#gameplay-and-rules)
  - [Fair fights](#fair-fights)
  - [Starting bags](#starting-bags)
  - [Add BG1 tome stats bonuses to new BG2 characters](#add-bg1-tome-stats-bonuses-to-new-bg2-characters)
  - [Shops always buy goods at the same price](#shops-always-buy-goods-at-the-same-price)
  - [Close shop steal exploit](#close-shop-steal-exploit)
  - [No XP farming](#no-xp-farming)
  - [Can't steal Carsomyr](#cant-steal-carsomyr)
- [Quest and dialog tweaks](#quest-and-dialog-tweaks)
  - [Improved strongholds](#improved-strongholds)
  - [More ankheg armors by Taerom](#more-ankheg-armors-by-taerom)
- [Less autosaves](#less-autosaves)

### Familiars
#### Smarter familiars
- Allow familiars to pick up loot for you (move chosen items from the floor and chests to your inventory). Yes, they can actually fetch items for you!
- Have them jump into the pack when there's danger or they're injured. Very useful at later stages.
- Compatible with [WTP familiars](http://gibberlings3.net/forums/index.php?showtopic=23874).

The less a familiar is told to pick up, the faster it'll do it. So, try to keep the list short. For example, don't tell it to pick up bandit scalps in BG2.

**Note:**
- Familiars as small creatures can get through where humans cannot. So they will pick up items from closed chests. If you don't like that, don't tell them to pick up items.
- If a familiar starts to jump in and out of backpack continuously - talk to it, tell it to stay in the pack. Reverse the directive when you leave this area.
#### Resilient familiars
Protect familiars from getting critical hits (which are almost always lethal to them).

### Easy traps
Add "trap sense" to characters. Before a trap is "detected" by thief skill, a party member will "sense" it: notice that something's wrong, and alert others. It allows for faster, less frustrating dungeon exploration.
Options:
- Allow sensing in combat (by default, characters will not notice possible traps in combat. With this component, they will)
- Increase trap sense range (default range is about half line of sight. This component increases it to LoS)
- Stop moving, or Stop moving and pause game (choose which action do you prefer when trap is "sensed")
- Center on character (yes/no?)
- Play a sound ("trap found" sound, yes/no?)
- Core (required to enable any of previous components)

#### Less autosaves
Disables autosave on area transition. This only affects transitions that don't go through worldmap.

It saves some time, but on the other hand you should treat your saves more carefully. You've been warned.

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


### Item tweaks
#### Remove blur graphics from items
Removes eye-straining blur graphics from several items. Doesn't touch actual Blur spell.

Currently includes:
- Semaj's cloak
- Claw of Kazgaroth

#### Sensible Cloak of Mirroring
It turns out that the Cloak of Mirroring with BG2 Fixpack protects from area effect spells, which doesn't make much sense. And it doesn't protect from Call Lighting, which also is strange. This compoment fixes both issues.

#### Effects of scrolls and potions do not stack with themselves

Makes effects potions and scrolls of resistance non-stackable with themselves, to make scrolls more worthwhile.

Example 1: you drink a potion of fire resistance and get +50% fire resistance. A turn later you drink one more potion of fire resistance. No additional resistance is gained, but duration of its effect is refreshed.

Example 2: you drink a potion of fire resistance and use a scroll of fire resistance. Now you have +100% fire resistance.

#### Weightless ammo
Make throwing daggers and axes weightless

#### Sensible Wand of Frost
In vanilla, Wand of Frost must target on a creature, but affects an area, which makes no sense. This will allow you to either make it fully single-target (like Agannazar's Scorcher), or AoE (like Cone of Cold).

#### Hassle-free ammo
Add returning non-magical ammo (darts, arrows, axes, daggers, etc) to Taerom and Ribald, at a fair price.

#### Potion of really mirrored eyes
Contrary to the description, Potion of Mirrored Eyes doesn't protect from all gaze attacks. Demons' Death Gaze, for example, will bypass it. This component fixes that oversight, and makes the Potion realiable against ANY gaze attack.


### Spell tweaks

#### Spider form ignores web
Become immune to web while in spider form (which is strangely not the case in the original game).

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

#### True true sight
True sight in PnP is supposed to be just that - true sight. Not "dispel all illusions every 6 seconds" sight. This component makes illusion dispel near instant when True Sight is active.

While it might not have much effect in original game, with certain mods such as SCS, some creatures abuse "backstab - gulp invisibility potion - repeat" technique, which is annoying and illegal per PnP. That was the inspiration for this tweak.

#### Sensible Otiluke's Sphere
With BG2 fixpack, Otiluke's Sphere is pretty much Hold + immunity to any damage. This doesn't really match its description. While the creature in the sphere can't affect the outside world, it should be able to affect the inside, meaning themselves. Healing, buffing, etc - all that should be possible.

### Gameplay and rules

#### Fair fights
A few opponents in the game basically cheat, or just have unrealistic stats. Sometimes it's to prevent you from breaking the plot, sometimes not. Anyway, if you know what you're doing - why not? This component will allow you to fight them fair and square. Currently affects:
- Borda, the magic merchant cheat in BG1 (100% magic resistance - removed)
- Malchor Harpell, the Drizzt's friend that imprisons the whole party without a chance of escaping (now you can fight him)
- Shandalar, the Ulgoth's Beard archmage (90% all resistances removed, innocent no longer)
- Laskal, the Cloakwood shadow druid (innocent no longer, since he attacks first)
- Phandalyn, the fanatic paladin in Baldur's Gate (innocent no longer, since he attacks first)
- Winski Perorate (innocent no longer, since he's not)
- Arkanis Gath, the Renal's guard (now you can fight him)
- Kahrk, the mightiest ogre mage (permanent spell turning removed)

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
#### Can't steal Carsomyr
Disables the silly possibility of stealing Carsomyr from Firkraag.

### Quest and dialog tweaks
#### Improved strongholds
This component mostly improves messengers and messages, making them more faster and less likely to miss the player, but has some other changes, too:
- Bard: make the messenger more reliable. Make money collection notification different from fighter stronghold
- Cleric: notify when it's time to visit the Church
- Druid: notify when it's time to visit the Grove
- Fighter: make the messenger more reliable. Notify when it's time to visit the Keep
- Mage: make sergeant Natula more reliable. Notify when it's time to visit the Sphere. Let Morul create new potions every week, not just you visit him. Allow a wider variety of potions.
- Ranger: make the messenger more reliable. Notify when it's time to visit the Cabin

#### More ankheg armors by Taerom
Allow Taerom to make more ankheg armors

## Installation
- Download tnt.zip from the [latest release page](https://github.com/burner1024/bg2-tweaks-and-tricks/releases/latest)
- Unzip it
- Move "tnt" and "setup-tnt.exe" into the game directory
- Launch setup-tnt.exe
- Answer the questions


## Changelog
- Version 8
  - add "can't steal carsomyr" component
  - add "greater command AoE" component
  - add Russian translation
- Version 7
  - add spider form/web protection component
  - fix viconia's dialog_default and area_city in extended soundsets
  - disable all traps that never fire and just give notifications (not marked as trapped but have a script)
  - fix multiple Durlag's tower traps
  - add compatibility with WhiteQueen (traps)
  - add true true sight component
  - add Kahrk and Arkanis Gath to fair fights
  - improve EE compatibility
  - fix npc_soundsets typo
  - add weightless ammo component
  - add more battle cries for Ajantis, Kivan and Keldorn
  - ensure Easy traps installation order
  - add sensible otiluke component
  - add improved strongholds components
  - add sensible wand of frost component
  - add more ankheg armors component
  - add hassle-free returning weapons component
  - add compatibility with WTP familiars
  - fix quasit in smarter familiars
  - ensure that dead familiars don't do anything
  - smarter familiars: add option to jump into pack when badly injured, and injured notifications
  - smarter familiars: add dialog option to manage familiar speed, remove faster familiars component
  - smarter familiars: add hit and run technique
  - add potion of really mirrored eyes component
  - speed up familiar looting
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
The mod is [CC BY-NC-SA v4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

Weidu is GPLv3

## Author
burner1024 @ github
