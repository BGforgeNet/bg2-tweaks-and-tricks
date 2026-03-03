/** @tra improved_equalizer.tra */
/* Generated from wsmith01.td - do not edit */

ALTER_TRANS wsmith01
BEGIN 32 END
BEGIN 0 END
BEGIN
  "TRIGGER" ~False()~
END

APPEND wsmith01
    IF ~~ g_2things
        SAY @2
        COPY_TRANS wsmith01 54
    END
END

REPLACE_TRANS_TRIGGER wsmith01 BEGIN g_2things END BEGIN  END ~PartyGoldGT(7499)~ ~PartyGoldGT(12499)~

REPLACE_TRANS_ACTION wsmith01 BEGIN g_2things END BEGIN  END ~TakePartyGold(7500)~ ~TakePartyGold(12500)~

REPLACE_TRANS_ACTION wsmith01 BEGIN g_2things END BEGIN  END ~DestroyGold(7500)~ ~DestroyGold(12500)~

EXTEND_TOP wsmith01 32
    ++ @3 DO ~SetGlobal("ForgeItem","GLOBAL",5)~ + g_2things
END
