import { $obj, $tra, GLOBAL } from "ielib";
import { ActionListEmpty, ApplySpellRES, AttackedBy, AttackOneRound, AttackReevaluate, CombatCounterLT, Continue, Dead, DEFAULT, DestroySelf, Detect, DisplayStringHead, G, GGT, GiveItemCreate, GLT, HasItemSlot, HPPercentLT, InMyArea, LastAttackerOf, LastSeenBy, LastTargetedBy, ModalState, MoveGlobalObject, MoveToObject, Myself, NearestEnemyOf, NearestEnemyOfType, PickUpItem, Player1, RunAwayFrom, See, SetGlobal, SLOT_MISC10, SLOT_MISC11, SLOT_MISC12, SLOT_MISC13, SLOT_MISC14, SLOT_MISC15, SLOT_MISC16, SLOT_MISC17, SLOT_MISC18, SLOT_MISC3, SLOT_MISC4, SLOT_MISC5, SLOT_MISC6, SLOT_MISC7, SLOT_MISC8, SLOT_MISC9, STATE_INVISIBLE, StateCheck, STEALTH } from "ielib/bg2";

/**
 * Jump to backpack setting.
 * - 0: never
 * - 1: when there's danger
 * - 2: when there's danger and injured
 * - 3: when there's danger and badly injured
 * Set in dialog.
 */
const GVAR_jumpToPack = "g_FamJumpToPack"

/**
 * Notify when hurt setting.
 * - 0: never
 * - 1: if injured
 * - 2: if badly injured
 * Set in dialog.
 */
const GVAR_notifyHurt = "g_FamHurtNotif"

/**
 * Track hurt notification.
 * - 0: Hasn't notified yet.
 * - 1: Notified already.
 * Reset to 0 at the start of each combat encounter.
 */
const GVAR_notifyHurtDone = "g_FamHurtNotifDone"

/**
 * Combat tactic: hit and run.
 */
const GVAR_hitAndRun = "g_FamHitAndRun"


/**
 * 1 if inventory is full, 0 otherwise.
 */
const GVAR_inventoryFull = "g_FamInventoryFull"

/**
 * Pick up potions toggle. Set in dialog.
 */
export const GVAR_pickupPotions = "g_FamPickupPotions"

/**
 * Pickup ammo toggle. Set in dialog.
 */
export const GVAR_pickupAmmo = "g_FamPickupAmmo"

/**
 * Pickup gold toggle. Set in dialog.
 */
export const GVAR_pickupGold = "g_FamPickupGold"

/**
 * Pickup scalps toggle. Set in dialog.
 */
export const GVAR_pickupScalps = "g_FamPickupScalps"

/**
 * Pickup trophies toggle. Set in dialog.
 */
export const GVAR_pickupTrophies = "g_FamPickupTrophy"

/**
 * Pickup scrolls toggle. Set in dialog.
 */
export const GVAR_pickupScrolls = "g_FamPickupScrolls"


/**
 * Pickup jewels setting. Set in dialog.
 * - 0: don't pickup.
 * - 1: pickup all.
 * - 2: pickup only rare and magical
 * - 3: pickup only magical jewelry
 */
export const GVAR_pickupJewels = "g_FamPickupJewels"

/**
 * Follow master toggle. Set in dialog.
 */
const GVAR_followMaster = "g_FamFollowMaster"

/**
 * Combat tactic. Set in dialog.
 * - 0: disabled
 * - 1: attack nearest
 * - 2: attack nearest, prioritising spellcasters
 */
const GVAR_combatTactic = "g_FamTactic"

/**
 * Loot lists are generally oraganized from more common to less common items.
 * This is so that looting works faster in most cases.
 * It's not super reliable, though.
 */

/** Gold item list. Only one item */
export const gold = ["misc07"]

/** Scalps item list. Only one item */
export const scalps = ["misc86"]

/** Common gems */
const gemsCommon = [
    // Gems
    "MISC16",   // Fire Agate Gem
    "MISC17",   // Lynx Eye Gem
    "MISC18",   // Sunstone Gem
    "MISC19",   // Turquoise Gem
    "MISC20",   // Bloodstone Gem
    "MISC21",   // Skydrop Gem
    "MISC22",   // Andar Gem
    "MISC23",   // Jasper Gem
    "MISC24",   // Tchazar Gem
    "MISC25",   // Zircon Gem
    "MISC26",   // Iol Gem
    "MISC27",   // Moonstone Gem
    "MISC28",   // Waterstar Gem
    "MISC29",   // Ziose Gem
    "MISC30",   // Chrysoberyl Gem
    "MISC31",   // Star Diopside Gem
    "MISC32",   // Shandon Gem
    "MISC33",   // Aquamarine Gem
    "MISC34",   // Garnet Gem
    "MISC35",   // Horn Coral Gem
    "MISC36",   // Pearl
    "MISC37",   // Sphene Gem
    "MISC38",   // Black Opal
    "MISC39",   // Water Opal
    "MISC40",   // Moonbar Gem    
];

/** Common rings */
const ringsCommon = [
    // Rings
    "RING10",   // Gold Ring
    "RING11",   // Silver Ring
    "RING12",   // Onyx Ring
    "RING13",   // Jade Ring
    "RING14",   // Greenstone Ring
    "RING15",   // Bloodstone Ring
    "RING16",   // Angel Skin Ring
    "RING17",   // Flamedance Ring
    "RING18",   // Fire Opal Ring
];
/** Common necklaces */
const necklacesCommon = [
    // Necklaces
    "AMUL04",   // Zios Gem Studded Necklace
    "AMUL05",   // Bluestone Necklace
    "AMUL06",   // Agni Mani Necklace
    "AMUL07",   // Rainbow Obsidian Necklace
    "AMUL08",   // Tiger Cowrie Shell Necklace
    "AMUL09",   // Silver Necklace
    "AMUL10",   // Gold Necklace
];

/** Common jewels */
export const jewelsCommon = [...gemsCommon, ...ringsCommon, ...necklacesCommon]

/** Common magic arrows */
const arrowsMagic = [
    "AROW02",  // Arrow +1
    "AROW03",  // Arrow of Slaying
    "AROW04",  // Acid Arrows
    "AROW05",  // Arrow of Biting
    "AROW08",  // Arrow of Fire
    "AROW09",  // Arrows of Ice
    "AROW10",  // Arrows of Piercing
    "AROW11",  // Arrow +2
    "AROW14",  // Poisoned Arrow
    "AROW15",  // Arrow +3
    "AROW1A",  // Arrow +2
]

/** Common magic bolts */
const boltsMagic = [
    "BOLT02",  // Bolt +1
    "BOLT03",  // Bolt of Lightning
    "BOLT04",  // Bolt of Biting
    "BOLT05",  // Bolt of Polymorphing
    "BOLT06",  // Bolt +2
    "BOLT08",  // Blessed Bolt
    "BOLT09",  // Bolt +3
]

/** Common magic bullets */
const bulletsMagic = [
    "BULL02",  // Bullet +1
    "BULL03",  // Bullet +2
    "BULL05",  // Bullet +3

]

/** Common magic darts */
const dartsMagic = [
    "DART02",  // Dart +1
    "DART03",  // Dart of Stunning
    "DART04",  // Dart of Wounding  
]

/** Common magic ammo */
export const ammoMagic = [...arrowsMagic, ...boltsMagic, ...bulletsMagic, ...dartsMagic]

/** Rare necklaces */
const necklacesRare = [
    "AMUL11",  // Pearl Necklace
    "AMUL12",  // Laeral's Tear Necklace
    "AMUL13",  // Bloodstone Amulet
]
/** Rare gems */
const gemsRare = [
    "MISC41",  // Star Sapphire
    "MISC42",  // Diamond
    "MISC43",  // Emerald
    "MISC44",  // King's Tears
    "MISC45",  // Rogue Stone
]
/** Rare rings */
const ringsRare = [
    "RING19",  // Ruby Ring
]
/** Rare jewels */
const jewelsRare = [...gemsRare, ...ringsRare, ...necklacesRare]

/** Common potions */
export const potionsCommon = [
    "POTN08",   // Potion of Healing
    "POTN09",   // Potion of Heroism
    "POTN10",   // Potion of Invisibility
    "POTN11",   // Potion of Invulnerability
    "POTN14",   // Oil of Speed
    "POTN20",   // Antidote
    "POTN25",   // Potion of Healing
    "POTN52",   // Potion of Extra Healing
    "POTN23",   // Oil of Speed
    "BGPOTN14", // Oil of Speed
]

/** Rare potions */
export const potionsRare = [
    //  "BAZPLO04",  // Breath Potion
    //  "BAZPLO07",  // Empty Breath Potion Flask
    //  "BTEST1",  // Potion of Invulnerability
    //  "IPOTN08",  // Potion of Healing
    //  "MISC1A",  // Bottle of Wine
    //  "MISC61",  // Bottle of Wine
    //  "MISC76",  // The Dream Potion
    //  "MISC97",  // De'Tranion's Baalor Ale
    //  "MISC98",  // Durlag's Goblet
    //  "MISC9Y",  // Brine Potion
    "POTN02",  // Potion of Fire Resistance
    "POTN03",  // Potion of Hill Giant Strength
    "POTN04",  // Potion of Frost Giant Strength
    "POTN05",  // Potion of Fire Giant Strength
    "POTN06",  // Potion of Cloud Giant Strength
    "POTN07",  // Potion of Storm Giant Strength
    "POTN12",  // Potion of Stone Giant Strength
    "POTN13",  // Oil of Fiery Burning
    //  "POTN15",  // Red Potion
    //  "POTN16",  // Violet Potion
    "POTN17",  // Elixir of Health
    "POTN18",  // Potion of Absorption
    "POTN19",  // Potion of Agility
    "POTN21",  // Potion of Clarity
    "POTN22",  // Potion of Cold Resistance
    "POTN24",  // Potion of Defense
    "POTN26",  // Potion of Explosions
    "POTN27",  // Potion of Firebreath
    "POTN28",  // Potion of Fortitude
    "POTN29",  // Potion of Genius
    "POTN30",  // Potion of Infravision
    "POTN31",  // Potion of Insulation
    "POTN33",  // Potion of Magic Blocking
    "POTN32",  // Antidote
    "POTN34",  // Potion of Magic Protection
    "POTN35",  // Potion of Magic Shielding
    "POTN36",  // Potion of Master Thievery
    "POTN37",  // Potion of Mind Focusing
    "POTN38",  // Potion of Mirrored Eyes
    "POTN39",  // Potion of Perception
    "POTN40",  // Potion of Invulnerability
    "POTN41",  // Potion of Power
    "POTN42",  // Potion of Regeneration
    "POTN43",  // Potion of Insight
    "POTN44",  // Potion of Strength
    "POTN45",  // Potion of Freedom
    "POTN46",  // Potion of Stone Form
    //  "POTN47",  // Marek's potion of antidote
    //  "POTN48",  // Vial of mysterious liquid
    "POTN55",  // Potion of Superior Healing
    //  "POTN56",  // Rogue's Potion of Frost Giant Strength
    //  "POTNMARE",  // Marek's potion of antidote
    //  "PROX01",  // Proximity Bomb
    //  "SEND01",  // Sendai's Potion
    //  "TTPOT",  // Potion of Extra Healing
    //  "WAND16",  // Potion of Icedust
    //  "WATERSER",  // Water of Serenity

]

/** Magic rings */
const ringsMagic = [
    "RING02",  // Ring of Fire Resistance
    "RING05",  // Ring of Invisibility
    "RING06",  // Ring of Protection +1
    "RING07",  // Ring of Protection +2
    "RING09",  // Ring of Free Action
    "RING31",  // Ring of Regeneration

]
/** Magic necklaces */
const necklacesMagic = [
    "AMUL14",  // Amulet of Protection +1
    "AMUL15",  // Shield Amulet
]
/** Magic jewels */
const jewelsMagic = [...ringsMagic, ...necklacesMagic]

/** Rare magic arrows */
const arrowsMagicRare = [
    "AROW06",  // Arrows of Detonation
    "AROW07",  // Arrows of Dispelling
]
/** Rare magic bolts */
const boltsMagicRare = [
    "DWBOLT01",  // Drow Bolt of Sleep
    "DWBOLT02",  // Drow Bolt of Stunning
    "DWBOLT03",  // Drow Bolt +1
    "KUOBOLT",  // Kuo-Toa Bolts
    "KUOBOLT2",  // Kuo-Toa Bolts
    "KUOBOLT3",  // Kuo-Toa Bolts
    "SAHBOLT",  // Paralytic Bolt
]
/** Rare magic bullets */
const bulletsMagicRare = [
    "BULL04",  // Sunstone Bullet +1
    "BULL06",  // Bullet +4
]
/** Rare magic darts */
const dartsMagicRare = [
    "DART05",  // Asp's Nest
]
/** Rare daggers
 * 
 * There only one type of throwing daggers worth picking up: poisoned throwing daggers.
 * Not actually magic, but still pretty rare.
*/
const daggersRare = [
    "dagg16",
]
/** Rare magic ammo */
export const ammoMagicRare = [...arrowsMagicRare, ...boltsMagicRare, ...bulletsMagicRare, ...dartsMagicRare, ...daggersRare]

/** Rare magic rings */
const ringsMagicRare = [
    "RING03",  // Ring of Animal Friendship
    "RING04",  // Ring of Clumsiness
    "RING08",  // Ring of Wizardry
    "RING09",  // Ring of Free Action
    "RING25",  // Koveras' Ring of Protection
    "RING25B",  // Koveras' Ring of Protection
    "RING26",  // Ring of Djinni Summoning
    "RING27",  // Ring of Fire Control
    "RING28",  // Ring of Air Control
    "RING29",  // Ring of Earth Control
    "RING30",  // Ring of Human Influence
    "RING33",  // Ring of the Ram
    "RING34",  // Ring of Spell Turning
    "RING35",  // Ring of Lock Picks
    "RING36",  // Ring of Danger Sense
    "RING39",  // Ring of Gaxx
    "RING40",  // Ring of Acuity
    "RING41",  // Ring of Protection +3
    "RING42",  // Ring of Improved Invisibility
    "RING43",  // Oaken Ring
    "RING44",  // Heartwood Ring
    "RING45",  // Delryn Family Ring
    "RING46",  // Ring of Anti-Venom

]
/** Rare magic necklaces */
const necklacesMagicRare = [
    "AMUL16",  // Metaspell Influence Amulet
    "AMUL17",  // Greenstone Amulet
    "AMUL18",  // Wolfsbane Charm
    "AMUL19",  // Amulet of 5% Magic Resistance
    "AMUL20",  // Kaligun's Amulet of Magic Resistance
    "AMUL21",  // Amulet of Power
    "AMUL22",  // Periapt of Proof Against Poison
    "AMUL23",  // Periapt of Life Protection
    "AMUL24",  // Necklace of Form Stability
    "AMUL25",  // Amulet of Spell Warding
    "AMUL26",  // Amulet of Cheetah Speed
    "AMUL27",  // Amulet of Seldarine
    "AMUL28",  // Amulet of the Master Harper
]
/** Rare magic jewels */
const jewelsMagicRare = [...ringsMagicRare, ...necklacesMagicRare]

/**
 * Winter wolf pelt, ankheg shell, wyvern head
 */
export const trophies = [
    // Winter wolf pelt
    "misc01",
    // Ankheg shell
    "misc12",
    // Wyvern head
    "misc52",
]


/** Most magic scrolls */
export const scrolls = [
    "SCRL03",  // Protection from Acid
    "SCRL04",  // Protection from Cold
    "SCRL05",  // Protection from Electricity
    "SCRL06",  // Protection from Fire
    "SCRL07",  // Protection from Magic
    "SCRL08",  // Protection from Poison
    "SCRL09",  // Protection from Undead
    //  "SCRL10",  // Cursed Scroll of Weakness
    //  "SCRL11",  // Cursed Scroll of Clumsiness
    //  "SCRL12",  // Cursed Scroll of Foolishness
    //  "SCRL13",  // Cursed Scroll of Ugliness
    //  "SCRL14",  // Cursed Scroll of Summon Monster
    "SCRL15",  // Protection from Petrification
    //  "SCRL16",  // Cursed Scroll of Petrification
    //  "SCRL17",  // Cursed Scroll of Ailment
    //  "SCRL18",  // Cursed Scroll of Stupidity
    "SCRL1B",  // Agannazar's Scorcher
    "SCRL1C",  // Ghoul Touch
    "SCRL1D",  // Clairvoyance
    "SCRL1E",  // Dispel Magic
    "SCRL1F",  // Flame Arrow
    "SCRL1G",  // Fireball
    "SCRL1H",  // Haste
    "SCRL1I",  // Hold Person
    "SCRL1J",  // Invisibility 10' Radius
    "SCRL1K",  // Lightning Bolt
    "SCRL1L",  // Monster Summoning I
    "SCRL1M",  // Non-Detection
    "SCRL1N",  // Protection From Normal Missiles
    "SCRL1O",  // Slow
    "SCRL1P",  // Skull Trap
    "SCRL1Q",  // Vampiric Touch
    "SCRL1S",  // Dire Charm
    "SCRL1T",  // Ghost Armor
    "SCRL1U",  // Confusion
    "SCRL1V",  // Stoneskin
    "SCRL1W",  // Fireshield (Blue)
    "SCRL1X",  // Ice Storm
    "SCRL1Y",  // Improved Invisibility
    "SCRL1Z",  // Minor Globe of Invulnerability
    "SCRL2A",  // Monster Summoning II
    "SCRL2B",  // Stoneskin
    "SCRL2D",  // Animate Dead
    "SCRL2E",  // Cloudkill
    "SCRL2F",  // Cone of Cold
    "SCRL2G",  // Monster Summoning III
    "SCRL2H",  // Shadow Door
    "SCRL3G",  // Vocalize
    "SCRL3H",  // Protection From Evil
    "SCRL56",  // Cure Serious Wounds
    "SCRL58",  // Free Action
    "SCRL59",  // Neutralize Poison
    "SCRL5A",  // Mental Domination
    "SCRL5B",  // Defensive Harmony
    "SCRL5C",  // Protection from Lightning
    "SCRL5D",  // Protection from Evil 10' radius
    "SCRL5E",  // Champion's Strength
    "SCRL5F",  // Chaotic Commands
    "SCRL5G",  // Remove Curse
    "SCRL5H",  // Emotion
    "SCRL5I",  // Greater Malison
    "SCRL5J",  // Oliluke's Resilient Sphere
    "SCRL5K",  // Spirit Armor
    "SCRL5L",  // Polymorph Other
    "SCRL5M",  // Polymorph Self
    "SCRL5N",  // Domination
    "SCRL5O",  // Hold Monster
    "SCRL5P",  // Chaos
    "SCRL5Q",  // Feeblemind
    "SCRL5T",  // Protection from Electricity
    "SCRL5U",  // Reflected Image
    "SCRL5W",  // Greater Malison
    "SCRL5X",  // Greater Malison
    "SCRL5Y",  // Greater Malison
    "SCRL5Z",  // Fireball
    "SCRL61",  // Cure Critical Wounds
    "SCRL62",  // Flame Strike
    "SCRL63",  // Raise Dead
    "SCRL66",  // Grease
    "SCRL67",  // Armor
    "SCRL68",  // Burning Hands
    "SCRL69",  // Charm Person
    "SCRL6A",  // Nether Scroll
    "SCRL6D",  // Find Familiar
    "SCRL6E",  // Power Word Sleep
    "SCRL6F",  // Ray of Enfeeblement
    "SCRL6G",  // Minor Spell Deflection
    "SCRL6H",  // Protection from Fire
    "SCRL6I",  // Protection from Cold
    "SCRL6J",  // Spell Thrust
    "SCRL6K",  // Detect Illusion
    "SCRL6L",  // Hold Undead
    "SCRL6M",  // Enchanted Weapon
    "SCRL6N",  // Fireshield (Red)
    "SCRL6O",  // Secret Word
    "SCRL6P",  // Minor Sequencer
    "SCRL6Q",  // Teleport Field
    "SCRL6R",  // Spider Spawn
    "SCRL6S",  // Spell Immunity
    "SCRL6T",  // Protection From Normal Weapons
    "SCRL6U",  // Breach
    "SCRL6V",  // Lower Resistance
    "SCRL6W",  // Oracle
    "SCRL6X",  // Conjure Lesser Fire Elemental
    "SCRL6Y",  // Protection from Acid
    "SCRL6Z",  // Phantom Blade
    "SCRL70",  // Color Spray
    "SCRL71",  // Blindness
    "SCRL72",  // Friends
    "SCRL73",  // Protection From Petrification
    "SCRL75",  // Identify
    "SCRL76",  // Infravision
    "SCRL77",  // Magic Missile
    "SCRL78",  // Protection From Evil
    "SCRL79",  // Shield
    "SCRL7B",  // Conjure Lesser Air Elemental
    "SCRL7C",  // Conjure Lesser Earth Elemental
    "SCRL7D",  // Minor Spell Turning
    "SCRL7E",  // Invisible Stalker
    "SCRL7F",  // Globe of Invulnerability
    "SCRL7G",  // Tenser's Transformation
    "SCRL7H",  // Flesh to Stone
    "SCRL7I",  // Death Spell
    "SCRL7J",  // Protection From Magic Energy
    "SCRL7K",  // Mislead
    "SCRL7L",  // Pierce Magic
    "SCRL7M",  // True Sight
    "SCRL7O",  // Protection From Magic Weapons
    "SCRL7P",  // Power Word Silence
    "SCRL7Q",  // Improved Haste
    "SCRL7R",  // Death Fog
    "SCRL7S",  // Chain Lightning
    "SCRL7T",  // Disintegrate
    "SCRL7U",  // Contingency
    "SCRL7V",  // Spell Deflection
    "SCRL7W",  // Wyvern Call
    "SCRL7X",  // Conjure Fire Elemental
    "SCRL7Y",  // Conjure Air Elemental
    "SCRL7Z",  // Conjure Earth Elemental
    "SCRL80",  // Shocking Grasp
    "SCRL81",  // Sleep
    "SCRL82",  // Chill Touch
    "SCRL83",  // Chromatic Orb
    "SCRL84",  // Larloch's Minor Drain
    "SCRL85",  // Blur
    "SCRL86",  // Detect Evil
    "SCRL87",  // Detect Invisibility
    "SCRL89",  // Horror
    "SCRL8A",  // Carrion Summons
    "SCRL8B",  // Summon Nishruu
    "SCRL8C",  // Stone to Flesh
    "SCRL8D",  // Spell Turning
    "SCRL8E",  // Protection From The Elements
    "SCRL8F",  // Project Image
    "SCRL8G",  // Ruby Ray of Reversal
    "SCRL8H",  // Warding Whip
    "SCRL8I",  // Cacofiend
    "SCRL8J",  // Mantle
    "SCRL8L",  // Spell Sequencer
    "SCRL8M",  // Sphere of Chaos
    "SCRL8N",  // Delayed Blast Fireball
    "SCRL8O",  // Finger of Death
    "SCRL8P",  // Prismatic Spray
    "SCRL8Q",  // Power Word Stun
    "SCRL8R",  // Mordenkainen's Sword
    "SCRL8S",  // Summon Efreeti
    "SCRL8T",  // Summon Djinni
    "SCRL8U",  // Summon Hakeashar
    "SCRL8V",  // Control Undead
    "SCRL8W",  // Mass Invisibility
    "SCRL8X",  // Spell Shield
    "SCRL8Y",  // Protection From Energy
    "SCRL8Z",  // Simulacrum
    "SCRL90",  // Invisibility
    "SCRL91",  // Knock
    "SCRL92",  // Know Alignment
    "SCRL93",  // Luck
    "SCRL94",  // Resist Fear
    "SCRL95",  // Melf's Acid Arrow
    "SCRL96",  // Mirror Image
    "SCRL97",  // Stinking Cloud
    "SCRL98",  // Strength
    "SCRL99",  // Web
    "SCRL9A",  // Pierce Shield
    "SCRL9B",  // Summon Fiend
    "SCRL9C",  // Improved Mantle
    "SCRL9D",  // Spell Trigger
    "SCRL9E",  // Incendiary Cloud
    "SCRL9F",  // Symbol Fear
    "SCRL9G",  // Abi-Dalzim's Horrid Wilting
    "SCRL9H",  // Maze
    "SCRL9J",  // Power Word Blind
    "SCRL9L",  // Spell Trap
    "SCRL9M",  // Spellstrike
    "SCRL9N",  // Gate
    "SCRL9P",  // Absolute Immunity
    "SCRL9Q",  // Chain Contingency
    "SCRL9R",  // Time Stop
    "SCRL9S",  // Imprisonment
    "SCRL9T",  // Meteor Swarm
    "SCRL9U",  // Power Word Kill
    "SCRL9V",  // Wail of the Banshee
    "SCRL9W",  // Energy Drain
    "SCRL9X",  // Black Blade of Disaster
    "SCRL9Y",  // Shapechange
    "SCRL9Z",  // Freedom
    "SCRLA1",  // Wizard Eye
    "SCRLA2",  // Deafness
    "SCRLA3",  // Glitterdust
    "SCRLA4",  // Limited Wish
    "SCRLA5",  // Melf's Minute Meteors
    "SCRLA6",  // Spook
    "SCRLA7",  // Remove Magic
    "SCRLA8",  // Contagion
    "SCRLAI",  // Ray of Enfeeblement
    "SCRLAJ",  // Farsight
    "SCRLAK",  // Remove Curse
    "SCRLAL",  // Sunfire
    "SCRLAM",  // Symbol Death
    "SCRLAN",  // Symbol Stun
    "SCRLAO",  // Symbol Death
    "SCRLAP",  // Symbol Stun
    "SCRLAQ",  // Farsight
    "SCRLAR",  // Sunfire
    "SCRLB1",  // Bigby's Clenched Fist
    "SCRLB2",  // Bigby's Crushing Hand
    "SCRLB4",  // Wish
    "SCRLPET",  // Stone to Flesh Scroll
    "SCRLSD",  // Restoration
    "SDSCRL3",  // Freedom
]


/**
 * A short term speed increase, to get into backpack faster.
 */
export function sprint() {
    ApplySpellRES("G_FSPED2", Myself)
}

/**
 * Jump to pack when there are enemies about.
 * 
 * When asked to hide into pack, stay there until released.
 * 
 * Once released, can go in/out of pack as directed before.
 */
export function jumpToPack() {
    if (G(GVAR_jumpToPack, 1)
        && (!CombatCounterLT(1) || See($obj("[EVILCUTOFF]")))
        && !Dead("%death_var%")
    ) {
        MoveToObject(Player1)
        GiveItemCreate("%fam_item%", Player1, 0, 0, 0)
        DestroySelf()
    }
}

/**
 * Jump to pack when there are enemies about.
 *
 * When asked to hide into pack, stay there until released.
 *
 * Once released, can go in/out of pack as directed before.
 *
 * @param varThreshold only when `GVAR_jumpToPack` equals to this
 * @param hpThreshold only when HP is below this percentage
 */
export function JumpToPackInjured(varThreshold: number, hpThreshold: number) {
    if (G(GVAR_jumpToPack, varThreshold)
        && HPPercentLT(Myself, hpThreshold)
        && (!CombatCounterLT(1) || See($obj("[EVILCUTOFF]")))
        && !Dead("%death_var%")
    ) {
        DisplayStringHead(Myself, $tra(603))
        sprint()
        MoveToObject(Player1)
        GiveItemCreate("%fam_item%", Player1, 0, 0, 0)
        DestroySelf()
    }
}

/**
 * Notify that familiar is hurt, when there's no danger, if directed so.
 * Uses `GVAR_notifyHurtDone` to track notification, will only notify once.
 */
export function notifyHurt() {
    if (G(GVAR_notifyHurt, 1)
        && G(GVAR_notifyHurtDone, 0)
        && HPPercentLT(Myself, 70)
        && CombatCounterLT(1)
        && !See($obj("[EVILCUTOFF]"))
        && !Dead("%death_var%")
    ) {
        DisplayStringHead(Myself, $tra(601))
        SetGlobal(GVAR_notifyHurtDone, GLOBAL, 1)
        Continue()
    }
}

/**
 * Notify that familiar is badly hurt, when there's no danger, if directed so.
 */
export function notifyHurtBadly() {
    if (G("g_FamBadlyHurtNotif", 1)
        && G(GVAR_notifyHurtDone, 0)
        && HPPercentLT(Myself, 30)
        && CombatCounterLT(1)
        && See($obj("[EVILCUTOFF]"))
        && !Dead("%death_var%")
    ) {
        DisplayStringHead(Myself, $tra(602))
        SetGlobal(GVAR_notifyHurtDone, GLOBAL, 1)
        Continue()
    }
}

/**
 * Reset hurt notification (`GVAR_notifyHurtDone`). Happens each round of combat, don't cut off the rest of the script.
 */
export function resetHurtNotification() {
    if (G(GVAR_notifyHurtDone, 1)
        && !CombatCounterLT(1)
        && !Dead("%death_var%")
    ) {
        SetGlobal(GVAR_notifyHurtDone, GLOBAL, 0)
        Continue()
    }
}

/**
 * Combat tactic: hit and run.
 * 
 * Keep attacking while no one attacks us. If anyone did, run away for 1 round, then get back at them.
 */
export function hitAndRun() {
    if (G(GVAR_hitAndRun, 1)
        && !Dead("%death_var%")
        && AttackedBy($obj("[EVILCUTOFF]"), DEFAULT)
    ) {
        sprint()
        RunAwayFrom(LastAttackerOf(Myself), 45)
        AttackOneRound(LastTargetedBy(Myself))
    }
}

/**
 * Follow master, if directed to do so in dialog. Out of combat only.
 */
export function followMaster() {
    if (
        CombatCounterLT(1)
        && !See($obj("[EVILCUTOFF]"))
        && !Detect(Player1)
        && G(GVAR_followMaster, 1)
        && !Dead("%death_var%")
    ) {
        MoveToObject(Player1)
        Continue()
    }
}


/**
 * Follow master between areas, if directed to do so in dialog. Out of combat only.
 */
export function followMasterBetweenAreas() {
    if (
        CombatCounterLT(1)
        && !See($obj("[EVILCUTOFF]"))
        && !InMyArea(Player1)
        && G(GVAR_followMaster, 1)
        && !Dead("%death_var%")
    ) {
        MoveGlobalObject(Myself, Player1)
        Continue()
    }
}


/**
 * Check if PC inventory is full, set `GVAR_inventoryFull=1`.
 * 
 * I don't remember why `InventoryFull()` is not used instead, but there must've been a reason.
 * 
 * Cuts off the rest of script.
 */
export function checkInventoryFull() {
    if (HasItemSlot(Player1, SLOT_MISC18)
        && HasItemSlot(Player1, SLOT_MISC17)
        && HasItemSlot(Player1, SLOT_MISC16)
        && HasItemSlot(Player1, SLOT_MISC15)
        && HasItemSlot(Player1, SLOT_MISC14)
        && HasItemSlot(Player1, SLOT_MISC13)
        && HasItemSlot(Player1, SLOT_MISC12)
        && HasItemSlot(Player1, SLOT_MISC11)
        && HasItemSlot(Player1, SLOT_MISC10)
        && HasItemSlot(Player1, SLOT_MISC9)
        && HasItemSlot(Player1, SLOT_MISC8)
        && HasItemSlot(Player1, SLOT_MISC7)
        && HasItemSlot(Player1, SLOT_MISC6)
        && HasItemSlot(Player1, SLOT_MISC5)
        && HasItemSlot(Player1, SLOT_MISC4)
        && HasItemSlot(Player1, SLOT_MISC3)
        && G(GVAR_inventoryFull, 0)
        && !Dead("%death_var%")
    ) {
        SetGlobal(GVAR_inventoryFull, GLOBAL, 1)
        DisplayStringHead(Myself, $tra(15))
    }
}

/**
 * Check if PC inventory is not full, set `GVAR_inventoryFull=0`.
 * 
 * I don't remember why `InventoryFull()` is not used instead, but there must've been a reason.
 * 
 * Continues the script.
 */
export function checkInventoryNotFull() {
    if (
        G(GVAR_inventoryFull, 1)
        && !Dead("%death_var%")
        && (
            !HasItemSlot(Player1, SLOT_MISC18)
            || !HasItemSlot(Player1, SLOT_MISC17)
            || !HasItemSlot(Player1, SLOT_MISC16)
            || !HasItemSlot(Player1, SLOT_MISC15)
            || !HasItemSlot(Player1, SLOT_MISC14)
            || !HasItemSlot(Player1, SLOT_MISC13)
            || !HasItemSlot(Player1, SLOT_MISC12)
            || !HasItemSlot(Player1, SLOT_MISC11)
            || !HasItemSlot(Player1, SLOT_MISC10)
            || !HasItemSlot(Player1, SLOT_MISC9)
            || !HasItemSlot(Player1, SLOT_MISC8)
            || !HasItemSlot(Player1, SLOT_MISC7)
            || !HasItemSlot(Player1, SLOT_MISC6)
            || !HasItemSlot(Player1, SLOT_MISC5)
            || !HasItemSlot(Player1, SLOT_MISC4)
            || !HasItemSlot(Player1, SLOT_MISC3)
        )

    ) {
        SetGlobal(GVAR_inventoryFull, GLOBAL, 0)
        Continue()
    }
}


/**
 * Trigger function to check if we are available to pick up items now.
 * @returns can pickup?
 */
function tCanPickup() {
    return (
        ActionListEmpty()
        && CombatCounterLT(1)
        && !See($obj("[EVILCUTOFF]"))
        && Detect(Player1)
        && G(GVAR_inventoryFull, 0)
        && !Dead("%death_var%")
    )
}

/**
 * Pickup items. Only works out of combat.
 * @param items a list of items to pick up
 * @param gvar only when gvar is 1
 * @param iterations how many times to pick up
 */
export function pickup(items: string[], gvar: string, iterations: number) {
    if (tCanPickup() && G(gvar, 1)
    ) {
        sprint()
        for (let i = 0; i < iterations; i++) {
            for (const item of items) {
                PickUpItem(item)
            }
        }
        Continue()
    }
}

/**
 * Pickup rare jewelry.
 */
export function pickupJewelsRare() {
    if (tCanPickup()
        && GGT(GVAR_pickupJewels, 0)
        && GLT(GVAR_pickupJewels, 3)
    ) {
        sprint()
        for (let i = 0; i < 2; i++) {
            for (const jewel of jewelsRare) {
                PickUpItem(jewel)
            }
        }
        Continue()
    }
}


/**
 * Pickup magic jewelry.
 */
export function pickupJewelsMagic() {
    if (tCanPickup()
        && GGT(GVAR_pickupJewels, 0)
    ) {
        sprint()
        for (const jewel of jewelsMagic) {
            PickUpItem(jewel)
        }
        Continue()
    }
}

/**
 * Pickup rare magic jewelry. Same as `pickupJewelsMagic()`, just a separate list to place it lower, have less priority.
 */
export function pickupJewelsMagicRare() {
    if (tCanPickup()
        && GGT(GVAR_pickupJewels, 0)
    ) {
        sprint()
        for (const jewel of jewelsMagicRare) {
            PickUpItem(jewel)
        }
        Continue()
    }
}

/**
 * Combat tactic: attack nearest enemy.
 */
export function attackEnemy() {
    if (
        ActionListEmpty()
        && See($obj("[EVILCUTOFF]"))
        && (G(GVAR_combatTactic, 1) || G(GVAR_combatTactic, 2))
        && !Dead("%death_var%")
        && !ModalState(STEALTH)
        && !StateCheck(Myself, STATE_INVISIBLE)

    ) {
        AttackReevaluate(NearestEnemyOf(Myself), 30)
    }
}

/**
 * Combat tactic: attack nearest enemy, prioritising spellcasters.
 */
export function attackEnemyCasters() {
    if (
        ActionListEmpty()
        && See($obj("[EVILCUTOFF]"))
        && G(GVAR_combatTactic, 2)
        && !Dead("%death_var%")
        && !ModalState(STEALTH)
        && !StateCheck(Myself, STATE_INVISIBLE)
        && (
            See(NearestEnemyOfType($obj("[0.GENERAL_ITEM.0.MAGE_ALL]")))
            || See(NearestEnemyOfType($obj("[0.GENERAL_ITEM.0.CLERIC_ALL]")))
            || See(NearestEnemyOfType($obj("[0.GENERAL_ITEM.0.DRUID_ALL]")))
            || See(NearestEnemyOfType($obj("[0.GENERAL_ITEM.0.BARD_ALL]")))
        )

    ) {
        AttackReevaluate(LastSeenBy(Myself), 30)
    }
}
