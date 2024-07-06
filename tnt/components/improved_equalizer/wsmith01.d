/** @tra improved_equalizer.tra */

// The transition list is shared between items with common price.
// So we need to disable original transition and make new one.

// Null original 
ALTER_TRANS wsmith01    // file name
BEGIN 32 END            // state number
BEGIN 0 END             // transition number
BEGIN                   // list of changes, see below for flags
  "TRIGGER" ~False()~
END

// Add new state, copy transitions
APPEND wsmith01
    IF ~~ g_2things SAY @2
    COPY_TRANS wsmith01 54
    END
END

// Alter price in new transitions
REPLACE_TRANS_TRIGGER wsmith01 BEGIN g_2things END BEGIN END ~PartyGoldGT(7499)~ ~PartyGoldGT(12499)~
REPLACE_TRANS_ACTION wsmith01 BEGIN g_2things END BEGIN END ~TakePartyGold(7500)~ ~TakePartyGold(12500)~
REPLACE_TRANS_ACTION wsmith01 BEGIN g_2things END BEGIN END ~DestroyGold(7500)~ ~DestroyGold(12500)~

// Add new transition to the root state
EXTEND_TOP wsmith01 32
  +~~+ @3 DO ~SetGlobal("ForgeItem","GLOBAL",5)~ + g_2things
END
