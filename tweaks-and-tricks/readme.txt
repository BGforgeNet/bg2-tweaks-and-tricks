##Cheese-of-use mod for Baldur's Gate 2

This mod aims to fix/tweak the most annoying aspects of the game. Some of the components may be considered cheats, others are just convenience tweaks. It will work with BG2 or BGT. Tested only with BG2 fixpack.

- [Components](#components)
 - [Smarter familiars](#smarter-familiars)
   - [Note](#note)
 - [Faster familiars](#faster-familiars)
 - [Fair fights](#fair-fights)
 - [No reputation loss on using Slayer form](#no-reputation-loss-on-using-slayer-form)
- [Installation](#installation)
- [License](#license)
- [Author](#author)
- [Changelog](#changelog)
- [Used sotftware](#used-sotftware)

###Components

#####Smarter familiars
- Allow familiars to pick up loot for you (move chosen items from the floor and chests to your inventory).
- Have them jump in the the pack when there's danger or they're injured. Very useful in later stages.

######Note
- This component has an issue: familiars will pick up items from closed or trapped chests. It's a limitation of the engine that I didn't find a workaround for.
- The less they're told to pick up, the faster they'll do that. So, try to keep the lists short. For example, don't tell them to pick up bandit scalps in BG2.

#####Faster familiars
Make the familiars move as if they had boots of speed, so they don't lag behind the rest of the team.

#####Fair fights
A few opponents in the game basically cheat, or just have unrealistic stats. Sometimes it's to prevent you from breaking the plot, sometimes not. Anyway, if you know what you're doing - why not? This component will allow you to fight them fair and square. Currently affects:
- Arcanis Gath, the thief that insta-kills you on attacking Renal (now you can fight him, he has a normal sword)
- Borda, the magic merchant cheat in BG1 (100% magic resistance - removed)
- Malchor Harpell, the Drizzt's friend that imprisons the whole party without a chance of escaping (now you can fight him)
- Shandalar, the Ulgoth's Beard archmage (90% all resistances, innocent - removed)

##### No reputation loss on using Slayer form
The Slayer form is virtually unusable by good characters because of the reputation penalty. But usually no one is even alive after seeing it - so why should reputation suffer? Up to you decide.

#####Extended soundsets (BGT only)
	Affects only NPCs who came from bg1 to bg2 (Edwin, Viconia, Imoen,  Jaheira, Minsc). Makes them use sounds from bg1 in bg2 and vice-versa. 
Example: bg1 Jaheira has only 1 battle cry: "For The fallen!". Bg2 jahera has 3 battle cries: "For The fallen!", "Fall creature! And feed the earth!", "Nature take the life she gave!". This component adds 2 recent cries to bg1 Jaheira. If bg1 and bg2 version have different sounds in same slots, it's a collision, so the 3 subcomponents are:
	a) Additions only - only unused strings are filled, therefore after transition soundsets change.
	b) BG1 soundsets dominate - in both bg1 and bg2 sounds from bg1 prevail, after transition soundsets do not change.
	c) BG2 soundsets dominate - in both bg1 and bg2 sounds from bg2 prevail, after transition soundsets do not change.

	In BG1, interparty interaction was based not on banters, but rather on occasional chit-chat between party members - compliments and insults. They just happen from time to time and have no consequences. In addition, this component expands such interaction in BG1 and reintroduces compliments and insults in BG2.
Example:
Jaheira: "You are amusing, in a "what the hell is wrong with you" kind of way."
Edwin: "Watch your words when addressing me, lest they be fed to you on the end of my boot!"

If this is too confusing, just take "Additions only".

#####Adjust BG1-style interparty chit-chat to BG2 framerate.
Adjusts compliments and insults restored by the above component to your frame rate so that they won't overlap (it happens because BG2 runs faster then BG1). You can also disable compliments and insults if you don't like them. This component has DOES NOT affect banters in any way. Recommended if you installed "Extended soundsets".

#####Consistent Cloak of Mirroring.
Makes Cloak of Mirroring not protecting from area effect spells and adds protection from Call Lighting.

##### Effects of scrolls and potions do not stack with themselves.
Makes effects potions and scrolls of resistance non-stackable with themselves.
Example: you drink potion of fire resistance and get +50% fire resistance. A turn later you drink one more potion of fire resistance. No additional resistance is gained, but duration of its effect is refreshed.

##### Candlekeep bags (BGT only).
	Adds in Candlekeep some guy who gives you a gem bag, a scroll case, and a potion case. Not the kind of things that should be rare, imo. Just a convenience.
##### Add BG1 tomes stats bonuses to new BG2 characters.
	To brand new BG2 charaters, gives the stat bonuses that they were supposed to gain in BG1.

###Installation
- Download the [archive](https://github.com/burner1024/bg2-cheese-of-use/archive/master.zip)
- Unzip it
- Move "cheese" and "setup-cheese.exe" into the game directory
- Launch setup-cheese.exe

###License
It's provided as is, without any guarantee. Feel free to use it in any way that you see fit.

###Author
burner1024 @ Github

###Changelog
* Version 2: merged in Tweaks-And-Tricks, renamed the mod, updated the 
* Version 1: initial release.
Tweaks and Tricks, mod for BG2ToB, version 1.2

###Used software
[DLTCEP](http://sourceforge.net/projects/gemrb/files/Utilities/)
[WeiDU](http://weidu.org/main.html#weidu)
[G3 Debugging Suite](http://www.gibberlings3.net/debug/)
