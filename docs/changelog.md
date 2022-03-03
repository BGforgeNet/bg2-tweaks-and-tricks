# Changelog

- [Version 8.16](#version-816)
- [Version 8.15](#version-815)
- [Version 8.14](#version-814)
- [Version 8.13](#version-813)
- [Version 8.12](#version-812)
- [Version 8.11](#version-811)
- [Version 8.10](#version-810)
- [Version 8.9](#version-89)
- [Version 8.8](#version-88)
- [Version 8.7](#version-87)
- [Version 8.6](#version-86)
- [Version 8.5](#version-85)
- [Version 8.4](#version-84)
- [Version 8.3](#version-83)
- [Version 8.2](#version-82)
- [Version 8.1](#version-81)
- [Version 8](#version-8)
- [Version 7](#version-7)
- [Version 6](#version-6)
- [Version 5](#version-5)
- [Version 4](#version-4)
- [Version 3](#version-3)
- [Version 2](#version-2)
- [Version 1](#version-1)

### Version 8.16
- [Fixed](https://github.com/BGforgeNet/bg2-tweaks-and-tricks/issues/54) Melicamp not reverting back when Infinity Animations is installed.

### Version 8.15
- Fixed Compliments and Insults installation on EET+Windows.

### Version 8.14
- Fixed Extended Soundsets, Compliments and Insults installation on EET.

### Version 8.13
Fixed installation of BG1-style party interaction with framerate adjustment on Windows, also allowed to install on Unix if wine is present. Renamed the component to "Compliments and insults".

### Version 8.12
- More map notes: Nashel, Carnival, Baldur's Gate.
- Fair Fights: included Dushai, Bayard.
- Improved traps: don't alert about false exit skeleton trap in Durlag's level 3.
- Smarter familiars: giving a familiar a potion doesn't prevent saving.
- Poison protection: fixed scroll so it actually works.
- Starting bags: subcomponent names fixed (cosmetic only).
- Romance cheats: added Dearnise Romance.
- PnP protection items: compatibility with BG1NPC - added Imoen's gift amulet to the list of the items. Also, improved Koveras' ring of protection from BGTTweak.
- Store price depreciation: skip officer Vai, so that scalps can be sold at full price.
- Bloodless deeds: actually works now.
- New component: Save Melicamp.

### Version 8.11
- Starting bags don't fail to install on EET/TuTu.
- Throwing daggers from Hassle-free ammo get strength damage bonus on EEs, in line with other daggers.
- Shandalar's cloak is unidentified when found, and has a charge.
- More map notes.

### Version 8.10
- Improved Traps: fixed a few traps not giving out notifications in BG1 part of BGT.
- Improved Traps: fixed sometimes being unable to sleep after disarming traps and switching areas if intuition pause is enabled.

### Version 8.9
- Fixed swapped Wand of Frost subcomponents.
- Improved Traps doesn't bloat savegames anymore.
- Recolored Nester's dagger in addition to Perdue's sword, the component is renamed to "Distinct items".
- PnP protection items now compatible with Thalantyr Item Upgrade (certain items were stacking bonuses, now they don't).
- More map notes added.

### Version 8.8
- Fixed Nemphre's dialog being [messed up](https://github.com/BGforgeNet/bg2-tweaks-and-tricks/issues/43) by Bloodless Deeds.

### Version 8.7
- [Fixed](https://github.com/BGforgeNet/bg2-tweaks-and-tricks/issues/42) Improved Traps installation on EET.
- Allowed [unstacking](https://github.com/BGforgeNet/bg2-tweaks-and-tricks/issues/40) potions and scrolls in IWDEE.
- Enabled initial Portuguese/Brasilian translation.

### Version 8.6
Unstacking potions and scrolls now can be [installed](https://github.com/BGforgeNet/bg2-tweaks-and-tricks/issues/40) on BG(2)EE.

### Version 8.5
Updated IElib for better PI compatibility.

### Version 8.4
Throwing daggers are also excluded from Limited Stock.

### Version 8.3
Non-magical ammo and throwing weapons are now [skipped](https://forums.bgforge.net/viewtopic.php?f=31&t=272) from Limited Stock.

### Version 8.2
Fixed certain "Throwing damage type" subcomponents [failing to install](https://github.com/BGforgeNet/bg2-tweaks-and-tricks/issues/36).

### Version 8.1
Fixed "Working protection from poison" missing from components list.

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
- [Greater Command](https://pihwiki.bgforge.net/Baldur%27s_Gate:_Divine_Spells_List#Greater_Command) AoE.
- Improved Equalizer.
- Improved Shandalar's cloak.
- Limited stock.
- More map notes.
- Mod romance cheats: Saerileth, Amber, Tyris.
- No lightning during rain.
- Really PnP protection items.
- Sensible Blade spins.
- Sensible multiclass restrictions.
- Throwing damage type.
- True True Grandmastery.
- Unstack [Chaos Shield](https://pihwiki.bgforge.net/Baldur%27s_Gate:_Arcane_Spells_List#Chaos_Shield).
- Uncheese [Mislead](https://pihwiki.bgforge.net/Baldur%27s_Gate:_Arcane_Spells_List#Mislead).
- Uncheese [Project Image](https://pihwiki.bgforge.net/Baldur%27s_Gate:_Arcane_Spells_List#Project_Image).
- Working [Non-Detection](https://pihwiki.bgforge.net/Baldur%27s_Gate:_Arcane_Spells_List#Non-Detection).
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

#### True [True Sight](https://pihwiki.bgforge.net/Baldur%27s_Gate:_Arcane_Spells_List#True_Sight)
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
