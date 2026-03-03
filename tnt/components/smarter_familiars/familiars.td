/** @tra smarter_familiars.tra */
import { Direction, GLOBAL, ItmRef, obj, tra } from "@bgforge/iets";
import {
    ActionOverride,
    ApplySpellRES,
    CLASS,
    Class,
    CreateCreature,
    CreateItem,
    DestroyItem,
    DestroySelf,
    G,
    InPartySlot,
    LastTalkedToBy,
    Myself,
    Name,
    PartyHasItem,
    RACE,
    Race,
    SetGlobal,
    TakePartyItemNum,
    UseItem,
} from "@bgforge/iets/bg2";

/**
 * Potions available to all familiars
 */
const POTION_STRING: [string, number][] = [
    ["potn08", 701], // healing
    ["potn52", 702], // extra healing
    ["potn55", 703], // superior healing
    ["potn02", 704], // fire res
    ["potn10", 705], // invis
    ["potn14", 706], // speed
    ["potn17", 707], // health
    ["potn18", 708], // absorption
    ["potn19", 709], // agility
    ["potn20", 710], // antidote
    ["potn21", 711], // clarity
    ["potn22", 712], // cold res
    ["potn24", 713], // defence
    ["potn28", 714], // fortitude
    ["potn31", 715], // insulation
    ["potn33", 716], // magic blocking
    ["potn34", 717], // magic res
    ["potn35", 718], // magic shield
    ["potn38", 719], // mirrored eyes
    ["potn41", 720], // power
    ["potn42", 721], // regen
    ["potn44", 722], // strength
    ["potn45", 723], // freedom
    ["potn46", 724], // stone form
    ["potn37", 725], // mind focusing
];

/**
 * Potions available to warriors
 */
const POTION_STRING_WARRIOR: [string, number][] = [
    ["potn03", 740], // hill giant strength
    ["potn04", 741], // frost giant strength
    ["potn05", 742], // fire giant strength
    ["potn06", 743], // cloud giant strength
    ["potn07", 744], // storm giant strength
    ["potn09", 745], // heroism
    ["potn11", 746], // invulnerability
    ["potn12", 747], // stone giant strength
];

/**
 * Potions available to rogues
 */
const POTION_STRING_ROGUE: [string, number][] = [
    ["potn36", 760], // master thievery
    ["potn39", 761], // perception
    ["potn56", 762], // rogue's frost giant strength
];

/**
 * %dialog% is a D variable.
 * Familiars have different dialog files, we compile D for each.
 */
const DIALOG = "%dialog%";
/**
 * %state% is a D variable.
 * Familiars have different dialog files, with different starting states.
 */
const STARGING_STATE = "%state%";

extendTop(DIALOG, STARGING_STATE, () => {
    if (InPartySlot(LastTalkedToBy(), 0)) {
        reply(tra(101)).goTo(state_familiar_follow);
    }
    if (InPartySlot(LastTalkedToBy(), 0)) {
        reply(tra(102)).goTo(state_familiar_combat);
    }
    if (InPartySlot(LastTalkedToBy(), 0)) {
        reply(tra(103)).goTo(state_familiar_loot);
    }
    if (InPartySlot(LastTalkedToBy(), 0)) {
        reply(tra(104)).goTo(state_familiar_potions);
    }
});

function state_familiar_follow() {
    /** Whether to follow PC */
    const GVAR_follow_master = "g_FamFollowMaster";
    /** Toggle to increase follow speed */
    const GVAR_famspeed = "g_FamSpeed";

    say(tra(100));

    if (G(GVAR_follow_master, 0)) {
        reply(tra(201))
            .action(SetGlobal(GVAR_follow_master, GLOBAL, 1))
            .goTo(state_familiar_confirm);
    }
    if (G(GVAR_follow_master, 1)) {
        reply(tra(202))
            .action(SetGlobal(GVAR_follow_master, GLOBAL, 0))
            .goTo(state_familiar_confirm);
    }

    if (G(GVAR_famspeed, 0)) {
        reply(tra(203))
            .action(
                SetGlobal(GVAR_famspeed, GLOBAL, 1),
                ApplySpellRES("G_FSPED1", obj("%death_var%")),
            )
            .goTo(state_familiar_confirm);
    }
    if (G(GVAR_famspeed, 1)) {
        reply(tra(204))
            .action(
                SetGlobal(GVAR_famspeed, GLOBAL, 0),
                ApplySpellRES("G_FSPED10", obj("%death_var%")),
            )
            .goTo(state_familiar_confirm);
    }
}

/**
 * State to confirm orders. Each order goes here.
 */
function state_familiar_confirm() {
    say(tra(419));
    goTo(STARGING_STATE);
}

append(
    DIALOG,
    state_familiar_follow,
    state_familiar_combat,
    state_familiar_potions,
    state_familiar_loot,
    state_familiar_confirm,
);

/**
 * - 0: never hide
 * - 1: hide when see enemies
 * - 2: hide when see enemies and injured
 * - 3: hide when see enemies and badly injured
 */
const GVAR_jumpToPack = "g_FamJumpToPack";
const GVAR_jumpOut = "g_FamiliarJumpOut";

/** Notify if hurt */
const GVAR_hurtNotif = "g_FamHurtNotif";
/** Notify if badly hurt */
const GVAR_badlyHurtNotif = "g_FamBadlyHurtNotif";
/**
 * Enable hit and run combat tactic
 */
const GVAR_hitAndRun = "g_FamHitAndRun";
/**
 * Combat tactic
 * - 0: do nothing
 * - 1: attack nearest
 * - 2: attach neares spellcaster
 */
const GVAR_tactic = "g_FamTactic";

function state_familiar_combat() {
    say(tra(100));

    // hide when see enemies
    if (!G(GVAR_jumpToPack, 1)) {
        reply(tra(301))
            .action(SetGlobal(GVAR_jumpToPack, GLOBAL, 1))
            .goTo(state_familiar_confirm);
    }
    // hide when injured
    if (!G(GVAR_jumpToPack, 2)) {
        reply(tra(303))
            .action(SetGlobal(GVAR_jumpToPack, GLOBAL, 2))
            .goTo(state_familiar_confirm);
    }
    // hide when badly injured
    if (!G(GVAR_jumpToPack, 3)) {
        reply(tra(304))
            .action(SetGlobal(GVAR_jumpToPack, GLOBAL, 3))
            .goTo(state_familiar_confirm);
    }
    // never hide
    if (!G(GVAR_jumpToPack, 0)) {
        reply(tra(302))
            .action(SetGlobal(GVAR_jumpToPack, GLOBAL, 0))
            .goTo(state_familiar_confirm);
    }

    // jump out self
    if (!G(GVAR_jumpOut, 0)) {
        reply(tra(306))
            .action(SetGlobal(GVAR_jumpOut, GLOBAL, 1))
            .goTo(state_familiar_confirm);
    }
    // don't ever jump out
    if (!G(GVAR_jumpOut, 1)) {
        reply(tra(307))
            .action(SetGlobal(GVAR_jumpOut, GLOBAL, 0))
            .goTo(state_familiar_confirm);
    }

    // no notification when hurt
    if (G(GVAR_hurtNotif, 1) || G(GVAR_badlyHurtNotif, 1)) {
        reply(tra(309))
            .action(
                SetGlobal(GVAR_hurtNotif, GLOBAL, 0),
                SetGlobal(GVAR_badlyHurtNotif, GLOBAL, 0),
            )
            .goTo(state_familiar_confirm);
    }

    // Notify when hurt
    if (G(GVAR_hurtNotif, 0)) {
        reply(tra(310))
            .action(
                SetGlobal(GVAR_hurtNotif, GLOBAL, 1),
                SetGlobal(GVAR_badlyHurtNotif, GLOBAL, 0),
            )
            .goTo(state_familiar_confirm);
    }

    // Notify when badly hurt
    if (G(GVAR_badlyHurtNotif, 0)) {
        reply(tra(311))
            .action(
                SetGlobal(GVAR_hurtNotif, GLOBAL, 0),
                SetGlobal(GVAR_badlyHurtNotif, GLOBAL, 1),
            )
            .goTo(state_familiar_confirm);
    }

    // hit and run on
    if (G(GVAR_hitAndRun, 0)) {
        reply(tra(312))
            .action(SetGlobal(GVAR_hitAndRun, GLOBAL, 1))
            .goTo(state_familiar_confirm);
    }
    // hit and run off
    if (G(GVAR_hitAndRun, 1)) {
        reply(tra(313))
            .action(SetGlobal(GVAR_hitAndRun, GLOBAL, 0))
            .goTo(state_familiar_confirm);
    }

    // Combat tactic
    if (!G(GVAR_tactic, 0)) {
        reply(tra(314))
            .action(SetGlobal(GVAR_tactic, GLOBAL, 0))
            .goTo(state_familiar_confirm);
    }
    if (!G(GVAR_tactic, 1)) {
        reply(tra(315))
            .action(SetGlobal(GVAR_tactic, GLOBAL, 1))
            .goTo(state_familiar_confirm);
    }
    if (!G(GVAR_tactic, 2)) {
        reply(tra(316))
            .action(SetGlobal(GVAR_tactic, GLOBAL, 2))
            .goTo(state_familiar_confirm);
    }

    reply(tra(105)).goTo(STARGING_STATE);
}

function state_familiar_loot() {
    // Loot vars.
    const GVAR_pickupGold = "g_FamPickupGold";
    const GVAR_pickupJewels = "g_FamPickupJewels";
    const GVAR_pickupAmmo = "g_FamPickupAmmo";
    const GVAR_pickupPotions = "g_FamPickupPotions";
    const GVAR_pickupScrolls = "g_FamPickupScrolls";
    const GVAR_pickupTrophy = "g_FamPickupTrophy";
    const GVAR_pickupScalps = "g_FamPickupScalps";

    say(tra(100));

    reply(tra(400))
        .action(
            SetGlobal(GVAR_pickupGold, GLOBAL, 0),
            SetGlobal(GVAR_pickupJewels, GLOBAL, 0),
            SetGlobal(GVAR_pickupAmmo, GLOBAL, 0),
            SetGlobal(GVAR_pickupPotions, GLOBAL, 0),
            SetGlobal(GVAR_pickupScrolls, GLOBAL, 0),
            SetGlobal(GVAR_pickupTrophy, GLOBAL, 0),
            SetGlobal(GVAR_pickupScalps, GLOBAL, 0),
        )
        .goTo(state_familiar_confirm);

    reply(tra(401))
        .action(
            SetGlobal(GVAR_pickupGold, GLOBAL, 1),
            SetGlobal(GVAR_pickupJewels, GLOBAL, 1),
            SetGlobal(GVAR_pickupAmmo, GLOBAL, 1),
            SetGlobal(GVAR_pickupPotions, GLOBAL, 1),
            SetGlobal(GVAR_pickupScrolls, GLOBAL, 1),
            SetGlobal(GVAR_pickupTrophy, GLOBAL, 1),
            SetGlobal(GVAR_pickupScalps, GLOBAL, 1),
        )
        .goTo(state_familiar_confirm);

    trans_toggle_pickup(GVAR_pickupGold, 402, 403);

    // Jewels pickup, non-binary
    if (!G(GVAR_pickupJewels, 1)) {
        reply(tra(404))
            .action(SetGlobal(GVAR_pickupJewels, GLOBAL, 1))
            .goTo(state_familiar_confirm);
    }
    if (!G(GVAR_pickupJewels, 2)) {
        reply(tra(405))
            .action(SetGlobal(GVAR_pickupJewels, GLOBAL, 2))
            .goTo(state_familiar_confirm);
    }
    if (!G(GVAR_pickupJewels, 3)) {
        reply(tra(406))
            .action(SetGlobal(GVAR_pickupJewels, GLOBAL, 3))
            .goTo(state_familiar_confirm);
    }
    if (!G(GVAR_pickupJewels, 0)) {
        reply(tra(407))
            .action(SetGlobal(GVAR_pickupJewels, GLOBAL, 0))
            .goTo(state_familiar_confirm);
    }

    trans_toggle_pickup(GVAR_pickupAmmo, 408, 410);
    trans_toggle_pickup(GVAR_pickupPotions, 410, 411);
    trans_toggle_pickup(GVAR_pickupScrolls, 412, 413);
    trans_toggle_pickup(GVAR_pickupScalps, 414, 415);
    trans_toggle_pickup(GVAR_pickupTrophy, 416, 417);

    reply(tra(418)).goTo(STARGING_STATE);
}

/**
 * Generate 2 transitions: to tell the familiar to start or stop picking up an item type/
 * @param gvar gloval var that controls the behaviour. Toggles between 0 and 1.
 * @param traOn string to say when item type to pick up is enabled
 * @param traOff string to say when disabled
 */
function trans_toggle_pickup(gvar: string, traOn: number, traOff: number) {
    if (!G(gvar, 0)) {
        reply(tra(traOn))
            .action(SetGlobal(gvar, GLOBAL, 1))
            .goTo(state_familiar_confirm);
    }
    if (!G(gvar, 1)) {
        reply(tra(traOff))
            .action(SetGlobal(gvar, GLOBAL, 0))
            .goTo(state_familiar_confirm);
    }
}

/**
 * State to give the familiar a potion. Available options depend on familiar class.
 */
function state_familiar_potions() {
    say(tra(100));
    for (const [potion, traNum] of POTION_STRING) {
        trans_give_potion(potion, traNum);
    }
    for (const [potion, traNum] of POTION_STRING_ROGUE) {
        trans_give_potion_rogue(potion, traNum);
    }
    for (const [potion, traNum] of POTION_STRING_WARRIOR) {
        trans_give_potion_warrior(potion, traNum);
    }
}

/**
 * Transition to give a potion to familiar.
 * @param potion potion item
 * @param replyTra tra option saying "Give X potion"
 */
function trans_give_potion(potion: ItmRef, replyTra: number) {
    if (PartyHasItem(potion)) {
        reply_potion(potion, replyTra);
    }
}

/**
 * Transition to give a rogue potion to familiar.
 * @param potion potion item
 * @param replyTra tra option saying "Give X potion"
 */
function trans_give_potion_rogue(potion: ItmRef, replyTra: number) {
    if (PartyHasItem(potion) && Class(Myself, CLASS.THIEF_ALL)) {
        reply_potion(potion, replyTra);
    }
}

/**
 * Transition to give a warrior potion to familiar.
 * @param potion potion item
 * @param replyTra tra option saying "Give X potion"
 */
function trans_give_potion_warrior(potion: ItmRef, replyTra: number) {
    if (
        PartyHasItem(potion)
        && (Race(Myself, RACE.MEPHIT)
            || Name("FAMQUAS", Myself)
            || Name("WTPQUASI", Myself)
            || Name("WTPSPIDE", Myself))
    ) {
        reply_potion(potion, replyTra);
    }
}

/**
 * Generates a reply to offer the familiar a potion.
 * If party has the potion, create a spy creature to take and destroy it.
 * Then the familiar creates another copy and uses it.
 * Cannot give to familiar directly because then the potion ends up in PC's inventory.
 * @param potion potion item
 * @param replyTra tra line offering the potion
 */
function reply_potion(potion: ItmRef, replyTra: number) {
    const spy_crename = "g_spy1";
    const spy_obj = obj("g_spy1");
    reply(tra(replyTra))
        .action(
            CreateCreature(spy_crename, [-1, -1], Direction.S),
            ActionOverride(spy_obj, TakePartyItemNum(potion, 1)),
            ActionOverride(spy_obj, DestroyItem(potion)),
            ActionOverride(spy_obj, DestroySelf()),
            CreateItem(potion, 1, 0, 0),
            UseItem(potion, Myself),
        )
        .goTo(state_familiar_confirm);
}
