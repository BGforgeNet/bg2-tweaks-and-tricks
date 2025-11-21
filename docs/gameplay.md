## Gameplay and rules

Changes to various rules, combat options, etc.

- [Fair fights](#fair-fights)
    - [Just a few select enemies](#just-a-few-select-enemies)
    - [Also remove undroppable items granting unfair advantages from ALL enemies](#also-remove-undroppable-items-granting-unfair-advantages-from-all-enemies)
- [No XP farming](#no-xp-farming)
- [Can't steal Carsomyr](#cant-steal-carsomyr)
- [PnP-like True Grandmastery](#pnp-like-true-grandmastery)
- [Sensible multiclass restrictions](#sensible-multiclass-restrictions)

### Fair fights

A few opponents in the game basically cheat, or just have unrealistic stats. Sometimes it's to prevent you from breaking the plot, sometimes not. Anyway, if you know what you're doing - why not? This component will allow you to fight them fair and square.

#### Just a few select enemies

- Arkanis Gath, the Renal's guard (now you can fight him).
- Bayard, the adventurer in Durlag tower's cellar: removed innate magic resistance.
- Borda, the magic merchant cheat in BG1 - 100% magic resistance removed.
- Dushai, the halfling adventurer in Ulgoth's Beard: removed innate fire and magic resistances.
- Drizzt, BG1 version: AC, saving throws, resistances and APR toned down to [PnP version](http://www.candlekeep.com/library/articles/drizzt-2nd.htm). He's still a powerhouse by BG1 standards, just not so ridiculous.
- Laskal, the Cloakwood shadow druid: innocent no longer, since he attacks first.
- Kahrk, the mightiest ogre mage: free spell turning removed.
- Malchor Harpell, the Drizzt's friend that imprisons the whole party without a chance of escaping. Now you can fight him.
- Phandalyn, the fanatic paladin in Baldur's Gate: innocent no longer, since he attacks first.
- Shandalar, the Ulgoth's Beard archmage: 90% all resistances removed, innocent no longer.
  **Note** this does not give him a better combat script. Use some AI mod (e.g. SCS) for this fight to actually become a challenge.
- Winski Perorate in the labyrinth - innocent no longer, since he's not.

If you do break the plot by killing a critical NPC - that's on you. **You've been warned.**

#### Also remove undroppable items granting unfair advantages from all enemies

In addition to the above list, quite a few creatures in the game are wearing items that grant them various protections and buffs such as Globe of Minor Invulnerability, Speed, etc (Kahrk being one notorious example, but there's more).

Presumably, the developers' intention was to compensate for the lacking AI. However, nowadays there are many AI-enhancing mods, such as SCS (which lets enemies pre-buff, too). With powerful AI, having extra free protections seems unjustified and plain unfair. This removes all such items from all creatures.

This is a power user component as it hasn't been thouroughly tested. **You've been warned.**

#### No XP farming

Disables the possibility of XP farming in the most tempting spots in BG1:

- wyvern cave
- golem cave
- ankheg cave
- skeleton warrior trap in Durlag's tower

Use if you can't resist yourself.

#### Can't steal Carsomyr

You really think that you can steal an enormous greatsword from an ancient red dragon? Come on, Bilbo, get real.

### PnP-like True Grandmastery

It's well known that Grandmastery was nerfed in BG2 by Bioware for "balance". And there's a mod by W. Weimer that restores it to the original, unnerfed version; and there's an option to open Grandmastery to multiclass characters, as well.

However, in [PnP](<https://adnd2e.fandom.com/wiki/Weapon_Mastery_(POCT)#Weapon_Mastery>), not every fighter should be able to become a Grand Master. It is only available to single class fighters. Presumably, that also includes kitted characters. Unfortunately, pretty much all true classes in BG2 share the same fate - they are overshadowed by their kits.

PnP would have High Mastery almost double critical hit chance (reduce roll requirement from 18+ to 16+). However, this doesn't seem possible to implement in IE. Instead, this component perfoms the following changes:

1. Grand Mastery (5 points) grants one extra attack over Specialist (the "unnerfed" version, as in Baldurdash and Tweaks Anthology). Only true class Fighter may attain Grand Mastery, with 2 exceptions:
    - Archer can become a Grand Master with bows and crossbows.
    - Kensai can become a Grand Master with swords. Swords don't include daggers. Kensai is limited to 2 points in non-sword melee proficiencies.
1. High Mastery (4 points) grants 0.5 extra attack over Specialist, 0.5 less than Grand Mastery. Only fighters may attain High Mastery.
1. Berserker and Kensai no longer receive kit speficic THAC0 and damage bonuses when using ranged versions of the weapons, such as throwing axes.
1. Other class/proficiency combinations are unchanged.

This provides certain incentive to start a true class fighter, or even dual into a fighter.

### Sensible multiclass restrictions

Somehow certain classes are available to some races, but multiclasses with the same classes are not. For example, a halfling can be a cleric and a thief, but not cleric/thief. This was likely done for "balance" purposes. I don't know if it's the same in PnP, and if it is, how it's explained there, but it strikes me as odd.

The component will allow any race take any multiclass combination, provided that the race has access to all classes in the combination.
