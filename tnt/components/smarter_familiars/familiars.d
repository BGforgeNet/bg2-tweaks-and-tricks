/** @tra smarter_familiars.tra */
/* Generated from familiars.td - do not edit */

EXTEND_TOP %dialog% %state%
    +~InPartySlot(LastTalkedToBy(),0)~+ @101 + state_familiar_follow
    +~InPartySlot(LastTalkedToBy(),0)~+ @102 + state_familiar_combat
    +~InPartySlot(LastTalkedToBy(),0)~+ @103 + state_familiar_loot
    +~InPartySlot(LastTalkedToBy(),0)~+ @104 + state_familiar_potions
END

APPEND %dialog%
    IF ~~ state_familiar_follow
        SAY @100
        +~G("g_FamFollowMaster",0)~+ @201 DO ~SetGlobal("g_FamFollowMaster","GLOBAL",1)~ + state_familiar_confirm
        +~G("g_FamFollowMaster",1)~+ @202 DO ~SetGlobal("g_FamFollowMaster","GLOBAL",0)~ + state_familiar_confirm
        +~G("g_FamSpeed",0)~+ @203 DO ~SetGlobal("g_FamSpeed","GLOBAL",1) ApplySpellRES("G_FSPED1","%death_var%")~ + state_familiar_confirm
        +~G("g_FamSpeed",1)~+ @204 DO ~SetGlobal("g_FamSpeed","GLOBAL",0) ApplySpellRES("G_FSPED10","%death_var%")~ + state_familiar_confirm
    END

    IF ~~ state_familiar_combat
        SAY @100
        +~!G("g_FamJumpToPack",1)~+ @301 DO ~SetGlobal("g_FamJumpToPack","GLOBAL",1)~ + state_familiar_confirm
        +~!G("g_FamJumpToPack",2)~+ @303 DO ~SetGlobal("g_FamJumpToPack","GLOBAL",2)~ + state_familiar_confirm
        +~!G("g_FamJumpToPack",3)~+ @304 DO ~SetGlobal("g_FamJumpToPack","GLOBAL",3)~ + state_familiar_confirm
        +~!G("g_FamJumpToPack",0)~+ @302 DO ~SetGlobal("g_FamJumpToPack","GLOBAL",0)~ + state_familiar_confirm
        +~!G("g_FamiliarJumpOut",0)~+ @306 DO ~SetGlobal("g_FamiliarJumpOut","GLOBAL",1)~ + state_familiar_confirm
        +~!G("g_FamiliarJumpOut",1)~+ @307 DO ~SetGlobal("g_FamiliarJumpOut","GLOBAL",0)~ + state_familiar_confirm
        +~OR(2) G("g_FamHurtNotif",1) G("g_FamBadlyHurtNotif",1)~+ @309 DO ~SetGlobal("g_FamHurtNotif","GLOBAL",0) SetGlobal("g_FamBadlyHurtNotif","GLOBAL",0)~ + state_familiar_confirm
        +~G("g_FamHurtNotif",0)~+ @310 DO ~SetGlobal("g_FamHurtNotif","GLOBAL",1) SetGlobal("g_FamBadlyHurtNotif","GLOBAL",0)~ + state_familiar_confirm
        +~G("g_FamBadlyHurtNotif",0)~+ @311 DO ~SetGlobal("g_FamHurtNotif","GLOBAL",0) SetGlobal("g_FamBadlyHurtNotif","GLOBAL",1)~ + state_familiar_confirm
        +~G("g_FamHitAndRun",0)~+ @312 DO ~SetGlobal("g_FamHitAndRun","GLOBAL",1)~ + state_familiar_confirm
        +~G("g_FamHitAndRun",1)~+ @313 DO ~SetGlobal("g_FamHitAndRun","GLOBAL",0)~ + state_familiar_confirm
        +~!G("g_FamTactic",0)~+ @314 DO ~SetGlobal("g_FamTactic","GLOBAL",0)~ + state_familiar_confirm
        +~!G("g_FamTactic",1)~+ @315 DO ~SetGlobal("g_FamTactic","GLOBAL",1)~ + state_familiar_confirm
        +~!G("g_FamTactic",2)~+ @316 DO ~SetGlobal("g_FamTactic","GLOBAL",2)~ + state_familiar_confirm
        ++ @105 + %state%
    END

    IF ~~ state_familiar_potions
        SAY @100
        +~PartyHasItem("potn08")~+ @701 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn08",1)) ActionOverride("g_spy1",DestroyItem("potn08")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn08",1,0,0) UseItem("potn08",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn52")~+ @702 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn52",1)) ActionOverride("g_spy1",DestroyItem("potn52")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn52",1,0,0) UseItem("potn52",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn55")~+ @703 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn55",1)) ActionOverride("g_spy1",DestroyItem("potn55")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn55",1,0,0) UseItem("potn55",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn02")~+ @704 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn02",1)) ActionOverride("g_spy1",DestroyItem("potn02")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn02",1,0,0) UseItem("potn02",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn10")~+ @705 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn10",1)) ActionOverride("g_spy1",DestroyItem("potn10")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn10",1,0,0) UseItem("potn10",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn14")~+ @706 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn14",1)) ActionOverride("g_spy1",DestroyItem("potn14")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn14",1,0,0) UseItem("potn14",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn17")~+ @707 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn17",1)) ActionOverride("g_spy1",DestroyItem("potn17")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn17",1,0,0) UseItem("potn17",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn18")~+ @708 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn18",1)) ActionOverride("g_spy1",DestroyItem("potn18")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn18",1,0,0) UseItem("potn18",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn19")~+ @709 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn19",1)) ActionOverride("g_spy1",DestroyItem("potn19")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn19",1,0,0) UseItem("potn19",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn20")~+ @710 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn20",1)) ActionOverride("g_spy1",DestroyItem("potn20")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn20",1,0,0) UseItem("potn20",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn21")~+ @711 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn21",1)) ActionOverride("g_spy1",DestroyItem("potn21")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn21",1,0,0) UseItem("potn21",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn22")~+ @712 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn22",1)) ActionOverride("g_spy1",DestroyItem("potn22")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn22",1,0,0) UseItem("potn22",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn24")~+ @713 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn24",1)) ActionOverride("g_spy1",DestroyItem("potn24")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn24",1,0,0) UseItem("potn24",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn28")~+ @714 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn28",1)) ActionOverride("g_spy1",DestroyItem("potn28")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn28",1,0,0) UseItem("potn28",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn31")~+ @715 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn31",1)) ActionOverride("g_spy1",DestroyItem("potn31")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn31",1,0,0) UseItem("potn31",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn33")~+ @716 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn33",1)) ActionOverride("g_spy1",DestroyItem("potn33")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn33",1,0,0) UseItem("potn33",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn34")~+ @717 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn34",1)) ActionOverride("g_spy1",DestroyItem("potn34")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn34",1,0,0) UseItem("potn34",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn35")~+ @718 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn35",1)) ActionOverride("g_spy1",DestroyItem("potn35")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn35",1,0,0) UseItem("potn35",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn38")~+ @719 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn38",1)) ActionOverride("g_spy1",DestroyItem("potn38")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn38",1,0,0) UseItem("potn38",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn41")~+ @720 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn41",1)) ActionOverride("g_spy1",DestroyItem("potn41")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn41",1,0,0) UseItem("potn41",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn42")~+ @721 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn42",1)) ActionOverride("g_spy1",DestroyItem("potn42")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn42",1,0,0) UseItem("potn42",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn44")~+ @722 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn44",1)) ActionOverride("g_spy1",DestroyItem("potn44")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn44",1,0,0) UseItem("potn44",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn45")~+ @723 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn45",1)) ActionOverride("g_spy1",DestroyItem("potn45")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn45",1,0,0) UseItem("potn45",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn46")~+ @724 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn46",1)) ActionOverride("g_spy1",DestroyItem("potn46")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn46",1,0,0) UseItem("potn46",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn37")~+ @725 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn37",1)) ActionOverride("g_spy1",DestroyItem("potn37")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn37",1,0,0) UseItem("potn37",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn36") Class(Myself,THIEF_ALL)~+ @760 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn36",1)) ActionOverride("g_spy1",DestroyItem("potn36")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn36",1,0,0) UseItem("potn36",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn39") Class(Myself,THIEF_ALL)~+ @761 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn39",1)) ActionOverride("g_spy1",DestroyItem("potn39")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn39",1,0,0) UseItem("potn39",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn56") Class(Myself,THIEF_ALL)~+ @762 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn56",1)) ActionOverride("g_spy1",DestroyItem("potn56")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn56",1,0,0) UseItem("potn56",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn03") OR(4) Race(Myself,MEPHIT) Name("FAMQUAS",Myself) Name("WTPQUASI",Myself) Name("WTPSPIDE",Myself)~+ @740 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn03",1)) ActionOverride("g_spy1",DestroyItem("potn03")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn03",1,0,0) UseItem("potn03",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn04") OR(4) Race(Myself,MEPHIT) Name("FAMQUAS",Myself) Name("WTPQUASI",Myself) Name("WTPSPIDE",Myself)~+ @741 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn04",1)) ActionOverride("g_spy1",DestroyItem("potn04")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn04",1,0,0) UseItem("potn04",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn05") OR(4) Race(Myself,MEPHIT) Name("FAMQUAS",Myself) Name("WTPQUASI",Myself) Name("WTPSPIDE",Myself)~+ @742 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn05",1)) ActionOverride("g_spy1",DestroyItem("potn05")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn05",1,0,0) UseItem("potn05",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn06") OR(4) Race(Myself,MEPHIT) Name("FAMQUAS",Myself) Name("WTPQUASI",Myself) Name("WTPSPIDE",Myself)~+ @743 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn06",1)) ActionOverride("g_spy1",DestroyItem("potn06")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn06",1,0,0) UseItem("potn06",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn07") OR(4) Race(Myself,MEPHIT) Name("FAMQUAS",Myself) Name("WTPQUASI",Myself) Name("WTPSPIDE",Myself)~+ @744 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn07",1)) ActionOverride("g_spy1",DestroyItem("potn07")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn07",1,0,0) UseItem("potn07",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn09") OR(4) Race(Myself,MEPHIT) Name("FAMQUAS",Myself) Name("WTPQUASI",Myself) Name("WTPSPIDE",Myself)~+ @745 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn09",1)) ActionOverride("g_spy1",DestroyItem("potn09")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn09",1,0,0) UseItem("potn09",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn11") OR(4) Race(Myself,MEPHIT) Name("FAMQUAS",Myself) Name("WTPQUASI",Myself) Name("WTPSPIDE",Myself)~+ @746 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn11",1)) ActionOverride("g_spy1",DestroyItem("potn11")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn11",1,0,0) UseItem("potn11",Myself)~ + state_familiar_confirm
        +~PartyHasItem("potn12") OR(4) Race(Myself,MEPHIT) Name("FAMQUAS",Myself) Name("WTPQUASI",Myself) Name("WTPSPIDE",Myself)~+ @747 DO ~CreateCreature("g_spy1",[-1.-1],0) ActionOverride("g_spy1",TakePartyItemNum("potn12",1)) ActionOverride("g_spy1",DestroyItem("potn12")) ActionOverride("g_spy1",DestroySelf()) CreateItem("potn12",1,0,0) UseItem("potn12",Myself)~ + state_familiar_confirm
    END

    IF ~~ state_familiar_loot
        SAY @100
        ++ @400 DO ~SetGlobal("g_FamPickupGold","GLOBAL",0) SetGlobal("g_FamPickupJewels","GLOBAL",0) SetGlobal("g_FamPickupAmmo","GLOBAL",0) SetGlobal("g_FamPickupPotions","GLOBAL",0) SetGlobal("g_FamPickupScrolls","GLOBAL",0) SetGlobal("g_FamPickupTrophy","GLOBAL",0) SetGlobal("g_FamPickupScalps","GLOBAL",0)~ + state_familiar_confirm
        ++ @401 DO ~SetGlobal("g_FamPickupGold","GLOBAL",1) SetGlobal("g_FamPickupJewels","GLOBAL",1) SetGlobal("g_FamPickupAmmo","GLOBAL",1) SetGlobal("g_FamPickupPotions","GLOBAL",1) SetGlobal("g_FamPickupScrolls","GLOBAL",1) SetGlobal("g_FamPickupTrophy","GLOBAL",1) SetGlobal("g_FamPickupScalps","GLOBAL",1)~ + state_familiar_confirm
        +~!G("g_FamPickupGold",0)~+ @402 DO ~SetGlobal("g_FamPickupGold","GLOBAL",1)~ + state_familiar_confirm
        +~!G("g_FamPickupGold",1)~+ @403 DO ~SetGlobal("g_FamPickupGold","GLOBAL",0)~ + state_familiar_confirm
        +~!G("g_FamPickupJewels",1)~+ @404 DO ~SetGlobal("g_FamPickupJewels","GLOBAL",1)~ + state_familiar_confirm
        +~!G("g_FamPickupJewels",2)~+ @405 DO ~SetGlobal("g_FamPickupJewels","GLOBAL",2)~ + state_familiar_confirm
        +~!G("g_FamPickupJewels",3)~+ @406 DO ~SetGlobal("g_FamPickupJewels","GLOBAL",3)~ + state_familiar_confirm
        +~!G("g_FamPickupJewels",0)~+ @407 DO ~SetGlobal("g_FamPickupJewels","GLOBAL",0)~ + state_familiar_confirm
        +~!G("g_FamPickupAmmo",0)~+ @408 DO ~SetGlobal("g_FamPickupAmmo","GLOBAL",1)~ + state_familiar_confirm
        +~!G("g_FamPickupAmmo",1)~+ @410 DO ~SetGlobal("g_FamPickupAmmo","GLOBAL",0)~ + state_familiar_confirm
        +~!G("g_FamPickupPotions",0)~+ @410 DO ~SetGlobal("g_FamPickupPotions","GLOBAL",1)~ + state_familiar_confirm
        +~!G("g_FamPickupPotions",1)~+ @411 DO ~SetGlobal("g_FamPickupPotions","GLOBAL",0)~ + state_familiar_confirm
        +~!G("g_FamPickupScrolls",0)~+ @412 DO ~SetGlobal("g_FamPickupScrolls","GLOBAL",1)~ + state_familiar_confirm
        +~!G("g_FamPickupScrolls",1)~+ @413 DO ~SetGlobal("g_FamPickupScrolls","GLOBAL",0)~ + state_familiar_confirm
        +~!G("g_FamPickupScalps",0)~+ @414 DO ~SetGlobal("g_FamPickupScalps","GLOBAL",1)~ + state_familiar_confirm
        +~!G("g_FamPickupScalps",1)~+ @415 DO ~SetGlobal("g_FamPickupScalps","GLOBAL",0)~ + state_familiar_confirm
        +~!G("g_FamPickupTrophy",0)~+ @416 DO ~SetGlobal("g_FamPickupTrophy","GLOBAL",1)~ + state_familiar_confirm
        +~!G("g_FamPickupTrophy",1)~+ @417 DO ~SetGlobal("g_FamPickupTrophy","GLOBAL",0)~ + state_familiar_confirm
        ++ @418 + %state%
    END

    IF ~~ state_familiar_confirm
        SAY @419
        IF ~~ GOTO %state%
    END
END
