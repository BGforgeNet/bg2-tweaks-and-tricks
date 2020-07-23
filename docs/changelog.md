# Changelog

- [Version 8](#version-8)
- [Version 7](#version-7)
- [Version 6](#version-6)
- [Version 5](#version-5)
- [Version 4](#version-4)
- [Version 3](#version-3)
- [Version 2](#version-2)
- [Version 1](#version-1)

### Version 8

#### General
- Ensured EE, SoD compatibility.
- Removed dummy component detection files, switched to `LABEL`, only using it for some components.
- Added Russian translation.

#### New components
- Algernon's cloak: usable once per day.
- Bloodless deeds.
- Can't steal Carsomyr.
- Distinct color for Perdue's sword.
- Faster loading times.
- Greater Command AoE.
- Improved Equalizer.
- Limited stock.
- More map notes.
- Mod romance cheats: Saerileth, Amber, Tyris.
- No lightning during rain.
- Really PnP protection items.
- Sensible Blade spins.
- Sensible multiclass restrictions.
- Shandalar's cloak.
- Throwing damage type.
- True True Grandmastery.
- Unstack Chaos Shield.
- Uncheese Mislead.
- Uncheese Project Image.
- Working Non-Detection.
- Working protection from poison.

#### Improved traps
Massive rewrite under the hood.
- Allowed instant detection.
- Allowed to increase detection range.
- Added an option to center on the trap, rather than the character.
- Fixed trap reminders begin displayed off the location of the actual trap.
- Ensured that no traps are marked as detected by default.
- Pause game option no longer interrupts character actions.
- Allowed to toggle Find Traps automatically.
- Added an option to display a generic reminder, not disclosing trap type.
- Added an option to make Davaeorn's Battle Horrors non-disarmable.

#### Smarter familiars
- Improved looting speed.
- Fixed wrong dialog for WTP's imp.
- Added combat tactics options.
- Added dialog options to give potions.
- Fixed quasit, dust mephit, fairy dragon missing their scripts.

#### Fair Fights
- Fixed Shandalar's AC and saves to correspond to a normal human.
- Winski Perorate - disabled instakill upon attacking Sarevok in the Ducal Palace.
- Now affects all mages in game, removing items that pre-cast "spells" on them.

#### Remove Blur graphics
Now includes Cloak of Displacement.

#### True True Sight
Now includes Inquisitor's ability.

#### Hassle-free ammo
- Fixed THAC0/damage bonuses for new returning items.
- Maximized stack size for all ammo and throwing weapons.

#### Extended soundsets
- Fixed Skie's happy line being silent.
- Custom sounds changed to install on English only for now.
- Allowed to install framerate-adjusted sound on Linux if wine is present.

#### Potion of really mirrored eyes
Added more comprehensive check to include various Gaze spells.

### Version 7
- Added spider form/web protection component.
- Fixed Viconia's dialog_default and area_city in extended soundsets.
- Easy Traps:
  - Disabled all traps that never fire and just give notifications (not marked as trapped but have a script).
  - Fixed multiple Durlag's tower traps.
  - Added compatibility with WhiteQueen.
- Added True True Sight component.
- Added Kahrk and Arkanis Gath to fair fights.
- Improved EE compatibility.
- Fixed npc_soundsets typo.
- Added Weightless Ammo component.
- Added more battle cries for Ajantis, Kivan and Keldorn.
- Ensured Easy Traps installation order.
- Added Sensible Otiluke component.
- Added Improved Strongholds components.
- Added Sensible Wand of Frost component.
- Added More Ankheg Armors component.
- Added Hassle-free Returning Weapons component.
- Smarter familiars:
  - Added compatibility with WTP familiars.
  - Fixed quasit.
  - Ensured that dead familiars don't do anything.
  - Added option to jump into pack when badly injured, and injured notifications.
  - Added dialog option to manage familiar speed, remove faster familiars component.
  - Added hit and run technique.
  - Sped up looting.
- Added potion of really mirrored eyes component.

### Version 6
- Extended soundsets: more sounds.
- Easy traps: fixed missing vent trap.
- Smarter familiars: fixed quasit missing in ToB.
- NPC soundsets for PC: fixed bug when 1/2 versions were the same.
- NPC soundsets for PC: added more sounds.
- Under the hood changes:
  - Compliments/insults: left as .wav instead of .wavc - make DTLCEP happy.
  - Update weidu to 239.
  - General code cleanup.

### Version 5
- Added "easy traps" component.
- Added "less autosaves" component.
- Added Laskal, Phandalyn and Winski Perorate to "Fair fight" (remove innocent flag).
- Let famliars pick up winter wolf pelts, ankheg shells, wyvern heads.
- Expanded no-farming to skeleton warriors in Durlag's Tower.
- Fixed effect duplication in "unstack potions" component.
- Made "unstackable potions" compatible with Rogue Rebalancing.

### Version 4
- Added "no shop depreciation" component.
- Added "no XP farming" component.
- Added "resilient familiars" component.
- Fixed version tag.

### Version 3
- Added a few new components.
- Revised all code.
- Actually released it.

### Version 2
- Merged in Tweaks-And-Tricks.
- Renamed the mod.
- Updated the components.
- Updated to weidu 238.

### Version 1: initial release
