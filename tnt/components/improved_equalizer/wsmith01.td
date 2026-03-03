/** @tra improved_equalizer.tra */

import { tra } from "@bgforge/iets";
import { False, SetGlobal } from "@bgforge/iets/bg2";

const DIALOG = "wsmith01";

// The transition list is shared between items with common price.
// So we need to disable original transition and make new one.
function g_2things() {
    say(tra(2));
    copyTrans(DIALOG, 54);
}

// Null original
alterTrans(DIALOG, [32], [0], { trigger: False() });

// Add new state, copy transitions
append(DIALOG, g_2things);

// Alter price in new transitions
replaceTransTrigger(
    DIALOG,
    [g_2things],
    [],
    "PartyGoldGT(7499)",
    "PartyGoldGT(12499)",
);
replaceTransAction(
    DIALOG,
    [g_2things],
    [],
    "TakePartyGold(7500)",
    "TakePartyGold(12500)",
);
replaceTransAction(
    DIALOG,
    [g_2things],
    [],
    "DestroyGold(7500)",
    "DestroyGold(12500)",
);

// Add new transition to the root state
extendTop(DIALOG, 32, () => {
    reply(tra(3))
        .action(SetGlobal("ForgeItem", "GLOBAL", 5))
        .goTo(g_2things);
});
