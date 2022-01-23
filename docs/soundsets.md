## Soundsets

- [Extended soundsets for NPC](#extended-soundsets-for-npc)
- [Compliments and insults](#compliments-and-insults)
- [No talking while hiding in shadows](#no-talking-while-hiding-in-shadows)
- [Make NPC soundsets available to PC](#make-npc-soundsets-available-to-pc)

### Extended soundsets for NPC
- [Additions only](#additions-only)
- [Prefer BG1 sounds](#prefer-bg1-sounds)
- [Prefer BG2 sounds](#prefer-bg2-sounds)

This component extends some NPC soundsets by re-using their sounds from BG1 in BG2 and vice-versa.

Example: BG1 Jaheira has only 1 battle cry: `For the fallen!`. So the whole game you listen to that over and over.

But, BG2 Jaheira has 2 more battle cries:
```
- Fall, creature! And feed the earth!
- Nature take the life she gave!
```

This component adds those extra battle cries to BG1 Jaheira. And adds one more, from a voiced dialogue line. So in the end, both BG1 and BG2 Jaheira have 4 battle cries:
```
- For the fallen!
- Fall, creature! And feed the earth!
- Nature take the life she gave!
- Die your final death!
```

In some cases, there are too many sounds to fit into one soundset. So the 3 subcomponents are:

#### Additions only
Only missing sounds are added, therefore after transition soundsets may change.

#### Prefer BG1 sounds
Prefer BG1 sounds, after transition soundsets do not change.

#### Prefer BG2 sounds
Prefer BG2 sounds, after transition soundsets do not change.

If this explanation is too confusing, but you'd like to hear more different sounds, just take "Additions only".

### Compliments and insults
- [Reintroduce](#reintroduce)
- [Reintroduce and adjust to framerate](#reintroduce-and-adjust-to-framerate)
- [Disable](#disable)

In BG1, party interaction was based not on banters, but rather on occasional chit-chat between party members: compliments and insults. They happen in real time, without a dialog window.

Example:
```
- Jaheira: "You are amusing, in a 'what the hell is wrong with you' kind of way."
- Edwin: "Watch your words when addressing me, lest they be fed to you on the end of my boot!"
```

Now you can have it in BG2 part, too. (Only on BGT/EET installs).

#### Reintroduce
This option reintroduces compliments and insults in BG2, and slightly expands them in BG1.

#### Reintroduce and adjust to framerate
Original BG1 was running at 30 FPS, and responses to compliment trigger with that in mind.
But BG2 allows framerates up to 90. Setting high FPS, however, sometimes causes compliments and responses to overlap (responses are triggered too early).
This option will also adjust the timing to your current framerate.

*If you're on Linux or Mac, you must have wine in PATH for this subcomponent.*

#### Disable
Or, if you rather prefer your NPCs not to talk too much, you can disable this interaction altogether.
This *only* affects compliments and insults, not banters.

### No talking while hiding in shadows
Silence joinable NPC "hidden in shadows" sound (for example, Yoshimo's "All the world is blind to my passing"). It quickly gets annoying if you use thief scout script.

### Make NPC soundsets available to PC
Allows to use any of the original Bioware NPCs soundsets for the main character.
