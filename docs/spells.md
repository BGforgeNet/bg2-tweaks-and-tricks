## Spell and abilities

Various components to change spells and abilities, mostly to "make sense".

- [Spider form ignores web](#spider-form-ignores-web)
- [Cheesy Slayer: full heal on change](#cheesy-slayer-full-heal-on-change)
- [Cheesy Slayer: reputation](#cheesy-slayer-reputation)
- [True True Sight](#true-true-sight)
- [Sensible Otiluke's Sphere](#sensible-otilukes-sphere)
- [Greater Command AoE](#greater-command-aoe)
- [Working Non-Detection](#working-non-detection)
- [Unstack Chaos Shield](#unstack-chaos-shield)
- [Uncheese Mislead](#uncheese-mislead)
- [Uncheese Project Image](#uncheese-project-image)
- [Sensible Blade spins](#sensible-blade-spins)
- [PnP Protection from Evil](#pnp-protection-from-evil)

### Spider form ignores web

Become immune to web while in spider form (which is strangely not the case in the original game).

### Cheesy Slayer: full heal on change

The player character will be healed fully on turning into Slayer. Makes it a better "last resort" ability.

### Cheesy Slayer: reputation

- [Reduced loss](#reduced-loss)
- [No loss](#no-loss)

The Slayer form is virtually unusable by good characters because of the reputation penalty. But usually no one is even alive after seeing it - so why should reputation suffer? Up to you to decide.

#### Reduced loss

With reduced loss, you lose only 1 point of reputation, even when turning into Ravager (in vanilla, it's 3).

#### No loss

No reputation hit on any change.

### True True Sight

[True Sight](https://pihwiki.bgforge.net/Baldur's_Gate:_Arcane_Spells_List#True_Sight) in PnP is supposed to be just that - true sight. Not "dispel all illusions every 6 seconds" sight. This component makes illusion dispel near instant when True Sight is active.

While it might not have much effect in original game, with certain mods such as SCS, some creatures abuse "backstab - gulp invisibility potion - repeat" technique, which is annoying and illegal per PnP. That was the inspiration for this tweak.

### Sensible Otiluke's Sphere

With BG2 fixpack, [Otiluke's Resilient Sphere](https://pihwiki.bgforge.net/Baldur's_Gate:_Arcane_Spells_List#Otiluke.27s_Resilient_Sphere) is pretty much stun + immunity to any damage. This doesn't really match its description. While the creature in the sphere can't affect the _outside_ world, it should be able to affect the _inside_, meaning themselves.

TnT removes stun effect, allowing healing, buffing, etc inside the sphere.

Note: this might mess with AI of enemies stuck in the Sphere, scripts probably won't account for this behaviour change. But no such issues have been reported so far. **You've been warned.**

### Greater Command AoE

Strangely, [Greater Command](https://pihwiki.bgforge.net/Baldur's_Gate:_Divine_Spells_List#Greater_Command) affects an area, but must target a creature. This seems inconsistent. TnT changes it so that it can be cast on an area.

### Working Non-Detection

[Non-Detection](https://pihwiki.bgforge.net/Baldur's_Gate:_Arcane_Spells_List#Non-Detection) has always been useless, because most divination spells remove it with ease. This component makes it actually useful - it can no longer can be dispelled with a divination, including True Sight.

### Unstack Chaos Shield

Stacking multiple [Chaos Shields](https://pihwiki.bgforge.net/Baldur's_Gate:_Arcane_Spells_List#Chaos_Shield) is a well known cheese tactic for [Wild Mages](https://pihwiki.bgforge.net/Baldur's_Gate:_Wild_Mage_Compendium). This bug is fixed in EEs, and TnT does the same for classics.

### Uncheese Mislead

Mislead, the [ultimate cheese spell](https://pihwiki.bgforge.net/Baldur's_Gate:_Arcane_Spells_List#Mislead) has never worked properly in the game and allowed for unimaginable combat abuses. Needless to say, it's implementation has nothing to do with PnP version.

While its behaviour is actually enjoyed by some, there are people like the combat fair, and prefer a spell that works, well, more or less "normally". And that is what TnT provides. The super-invisibility provided by Mislead is replaced by normal Improved Invibility, as per spell description, which can be broken or dispelled the same way II can.

### Uncheese Project Image

What do you get if you take the ultimate cheese and make it cheesier? [Project Image](https://pihwiki.bgforge.net/Baldur's_Gate:_Arcane_Spells_List#Project_Image), that's what. It's about as game-breaking at it gets. Duplicating spellbooks, multiple images, etc.

The same argumentation as with [Mislead](#uncheese-mislead) applies. While some people actually enjoy how broken it is, other prefer to win fairly. And for a long time, it meant not using Project Image at all. Now it doesn't.

The TnT version of PI is an actual projection, and it spends spells from the real caster.

This is a complicated component. It _should_ work reasonably well, but it might not be flawless. **You've been warned.**

To clarify, the purpose of this component is to give _a normally working spell_ to the players who _don't want to cheese_ in the first place. The purpose is not to close every possible PI exploit.

### Sensible Blade spins

The mechanics of [Blade's](https://pihwiki.bgforge.net/Baldur's_Gate:_Classes_and_Kits#Bard_Kits) spins don't make much sense. These abilities are not magical, basically they are just actions that Blade performs. Yet, for example, a Defensive Spin will pin you to the ground until its duration expires. This component will allow you to _cancel_ spins at will, as well as _switch_ between them seamlessly.

(Of course, it doesn't affect how many times per day they can be used. If a spin is canceled, it's spent.)

### PnP Protection from Evil

In PnP, [Protection from Evil](https://pihwiki.bgforge.net/Baldur%27s_Gate:_Arcane_Spells_List#Protection_from_Evil) also prevents all Charm and Domination effects. That feature existed in original BG1, but was removed in later games. Now it is restored.

The inspiration for this component is aTweaks [PnP Fey creatures](http://readme.spellholdstudios.net/rr_fey.html). It considerably boosts fey power. In particular, their charming powers are used more extensively. However, aTweaks added no counters to those powers, leaving a gap in party's defences.

- This includes wizard and priest versions. Not the native one that paladins have.
- This is not a full PnP implementation, as [PnP](https://adnd2e.fandom.com/wiki/Protection_from_Evil) includes various extraplanar and summoned creatures into protection, not just demons.

### Non-hostile Grease

Both [Web](https://pihwiki.bgforge.net/Baldur%27s_Gate:_Arcane_Spells_List#Web) and [Stinking Cloud](https://pihwiki.bgforge.net/Baldur%27s_Gate:_Arcane_Spells_List#Stinking_Cloud) are safe to use around the commoners, since they are considered non-hostile. This component makes [Grease](https://pihwiki.bgforge.net/Baldur%27s_Gate:_Arcane_Spells_List#Grease) safe too.
