/** @tra smarter_familiars.tra */

EXTEND_TOP %dialog% %state%
  +~InPartySlot(LastTalkedToBy,0)~+ @101 + g_familiar_follow
  +~InPartySlot(LastTalkedToBy,0)~+ @102 + g_familiar_combat
  +~InPartySlot(LastTalkedToBy,0)~+ @103 + g_familiar_potions
  +~InPartySlot(LastTalkedToBy,0)~+ @104 + g_familiar_loot
END


APPEND %dialog%
  IF ~~ g_familiar_follow
    SAY @100

    + ~Global("g_FamFollowMaster","GLOBAL",0)~
    + @201 DO ~SetGlobal("g_FamFollowMaster","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamFollowMaster","GLOBAL",1)~
    + @202 DO ~SetGlobal("g_FamFollowMaster","GLOBAL",0)~
    + g_familiar_confirm

    + ~Global("g_FamSpeed","GLOBAL",0)~
    + @203 DO ~SetGlobal("g_FamSpeed","GLOBAL",1)
               ApplySpellRES("G_FSPED1","%death_var%")~
    + g_familiar_confirm

    + ~Global("g_FamSpeed","GLOBAL",1)~
    + @204 DO ~SetGlobal("g_FamSpeed","GLOBAL",0)
               ApplySpellRES("G_FSPED0","%death_var%")~
    + g_familiar_confirm

    ++ @205 + %state%
  END
END


APPEND %dialog%
  IF ~~ g_familiar_combat
    /* g_FamJumpToPack
      0: never hide
      1: hide when see enemies
      2: hide when see enemies and injured
      3: hide when see enemies and badly injured
    */
    SAY @100

    // hide when see enemies
    + ~!Global("g_FamJumpToPack","GLOBAL",1)~
    + @301 DO ~SetGlobal("g_FamJumpToPack","GLOBAL",1)~
    + g_familiar_confirm

     // hide when injured
    + ~!Global("g_FamJumpToPack","GLOBAL",2)~
    + @303 DO ~SetGlobal("g_FamJumpToPack","GLOBAL",2)~
    + g_familiar_confirm

    // hide when badly injured
    + ~!Global("g_FamJumpToPack","GLOBAL",3)~
    + @304 DO ~SetGlobal("g_FamJumpToPack","GLOBAL",3)~
    + g_familiar_confirm

    // never hide
    + ~!Global("g_FamJumpToPack","GLOBAL",0)~
    + @302 DO ~SetGlobal("g_FamJumpToPack","GLOBAL",0)~
    + g_familiar_confirm


    + ~Global("g_FamiliarJumpOut","GLOBAL",0)~ //jump out self
    + @306 DO ~SetGlobal("g_FamiliarJumpOut","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamiliarJumpOut","GLOBAL",1)~ //don't ever jump out
    + @307 DO ~SetGlobal("g_FamiliarJumpOut","GLOBAL",0)~
    + g_familiar_confirm

    + ~OR(2)
         Global("g_FamHurtNotif","GLOBAL",1)
         Global("g_FamBadlyHurtNotif","GLOBAL",1)~ //no Notif when hurt
    + @309 DO ~SetGlobal("g_FamHurtNotif","GLOBAL",0)
               SetGlobal("g_FamBadlyHurtNotif","GLOBAL",0)
              ~
    + g_familiar_confirm

    + ~Global("g_FamHurtNotif","GLOBAL",0)~ //Notif when hurt
    + @310 DO ~SetGlobal("g_FamHurtNotif","GLOBAL",1)
               SetGlobal("g_FamBadlyHurtNotif","GLOBAL",0)
              ~
    + g_familiar_confirm

    + ~Global("g_FamBadlyHurtNotif","GLOBAL",0)~ //Notif when badly hurt
    + @311 DO ~SetGlobal("g_FamHurtNotif","GLOBAL",0)
               SetGlobal("g_FamBadlyHurtNotif","GLOBAL",1)
              ~
    + g_familiar_confirm

    + ~Global("g_FamHitAndRun","GLOBAL",0)~ //hit and run on
    + @312 DO ~SetGlobal("g_FamHitAndRun","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamHitAndRun","GLOBAL",1)~ //hit and run off
    + @313 DO ~SetGlobal("g_FamHitAndRun","GLOBAL",0)~
    + g_familiar_confirm

    + ~!Global("g_FamTactic","GLOBAL",0)~ //combat tactic: do nothing
    + @314 DO ~SetGlobal("g_FamTactic","GLOBAL",0)~
    + g_familiar_confirm
    + ~!Global("g_FamTactic","GLOBAL",1)~ //combat tactic: attack nearest
    + @315 DO ~SetGlobal("g_FamTactic","GLOBAL",1)~
    + g_familiar_confirm
    + ~!Global("g_FamTactic","GLOBAL",2)~ //combat tactic: attack nearest spellcaster
    + @316 DO ~SetGlobal("g_FamTactic","GLOBAL",2)~
    + g_familiar_confirm

    ++ @105 + %state%
  END
END


APPEND %dialog%
  IF ~~ g_familiar_potions
    SAY @104

/* For some reason, the whole stack of goodberries gets removed
    + ~PartyHasItem("gberry")~ //goodberry
    + @251 DO ~
               CreateCreature("g_spy1",[-1.-1],0)
               GiveItemCreate("gberry",Myself,1,0,0)
               ActionOverride("g_spy1", TakePartyItemNum("gberry",2) )
               UseItem("gberry",Myself)
              ~
    + g_familiar_confirm

    + ~!PartyHasItem("gberry")
        PartyHasItem("gberry2")~ //here and below - d0tweak goodberries
    + @251 DO ~
               CreateCreature("g_spy1",[-1.-1],0)
               GiveItemCreate("gberry2",Myself,1,0,0)
               ActionOverride("g_spy1", TakePartyItemNum("gberry2",2) )
               UseItem("gberry2",Myself)
              ~
    + g_familiar_confirm

    + ~!PartyHasItem("gberry")
       !PartyHasItem("gberry2")
        PartyHasItem("gberry3")~
    + @251 DO ~
               CreateCreature("g_spy1",[-1.-1],0)
               GiveItemCreate("gberry3",Myself,1,0,0)
               ActionOverride("g_spy1", TakePartyItemNum("gberry3",2) )
               UseItem("gberry3",Myself)
              ~
    + g_familiar_confirm

    + ~!PartyHasItem("gberry")
       !PartyHasItem("gberry2")
       !PartyHasItem("gberry3")
        PartyHasItem("gberry4")~
    + @251 DO ~
               CreateCreature("g_spy1",[-1.-1],0)
               GiveItemCreate("gberry4",Myself,1,0,0)
               ActionOverride("g_spy1", TakePartyItemNum("gberry4",2) )
               UseItem("gberry4",Myself)
              ~
    + g_familiar_confirm

    + ~!PartyHasItem("gberry")
       !PartyHasItem("gberry2")
       !PartyHasItem("gberry3")
       !PartyHasItem("gberry4")
        PartyHasItem("gberry5")~
    + @251 DO ~
               CreateCreature("g_spy1",[-1.-1],0)
               GiveItemCreate("gberry5",Myself,1,0,0)
               ActionOverride("g_spy1", TakePartyItemNum("gberry5",2) )
               UseItem("gberry5",Myself)
              ~
    + g_familiar_confirm

    + ~!PartyHasItem("gberry")
       !PartyHasItem("gberry2")
       !PartyHasItem("gberry3")
       !PartyHasItem("gberry4")
       !PartyHasItem("gberry5")
        PartyHasItem("gberry6")~
    + @251 DO ~
               CreateCreature("g_spy1",[-1.-1],0)
               GiveItemCreate("gberry6",Myself,1,0,0)
               ActionOverride("g_spy1", TakePartyItemNum("gberry6",2) )
               UseItem("gberry6",Myself)
              ~
    + g_familiar_confirm

    + ~!PartyHasItem("gberry")
       !PartyHasItem("gberry2")
       !PartyHasItem("gberry3")
       !PartyHasItem("gberry4")
       !PartyHasItem("gberry5")
       !PartyHasItem("gberry6")
        PartyHasItem("gberry7")~
    + @251 DO ~
               CreateCreature("g_spy1",[-1.-1],0)
               GiveItemCreate("gberry7",Myself,1,0,0)
               ActionOverride("g_spy1", TakePartyItemNum("gberry7",2) )
               UseItem("gberry7",Myself)
              ~
    + g_familiar_confirm
    // Finally, goodberries are finished
*/
    //generated in main.tpa, a state for each potion
    %action_drink%
    ++ @105 + %state%
  END
END



APPEND %dialog%
  IF ~~ g_familiar_loot
    SAY @100

    ++ @400
      DO ~SetGlobal("g_FamPickupGold","GLOBAL",0)
          SetGlobal("g_FamPickupJewelsCommon","GLOBAL",0)
          SetGlobal("g_FamPickupJewelsRare","GLOBAL",0)
          SetGlobal("g_FamPickupJewelsMagic","GLOBAL",0)
          SetGlobal("g_FamPickupAmmo","GLOBAL",0)
          SetGlobal("g_FamPickupPotions","GLOBAL",0)
          SetGlobal("g_FamPickupScrolls","GLOBAL",0)
          SetGlobal("g_FamPickupTrophy","GLOBAL",0)
          SetGlobal("g_FamPickupScalps","GLOBAL",0)
         ~
    + g_familiar_confirm

    ++ @401
      DO ~SetGlobal("g_FamPickupGold","GLOBAL",1)
          SetGlobal("g_FamPickupJewelsCommon","GLOBAL",1)
          SetGlobal("g_FamPickupJewelsRare","GLOBAL",1)
          SetGlobal("g_FamPickupJewelsMagic","GLOBAL",1)
          SetGlobal("g_FamPickupAmmo","GLOBAL",1)
          SetGlobal("g_FamPickupPotions","GLOBAL",1)
          SetGlobal("g_FamPickupScrolls","GLOBAL",1)
          SetGlobal("g_FamPickupTrophy","GLOBAL",1)
          SetGlobal("g_FamPickupScalps","GLOBAL",1)
         ~
    + g_familiar_confirm

    +~Global("g_FamPickupGold","GLOBAL",0)~+ @402 DO ~SetGlobal("g_FamPickupGold","GLOBAL",1)~ + g_familiar_confirm
    +~Global("g_FamPickupGold","GLOBAL",1)~+ @403 DO ~SetGlobal("g_FamPickupGold","GLOBAL",0)~ + g_familiar_confirm

    + ~OR(3)
        Global("g_FamPickupJewelsCommon","GLOBAL",0)
        Global("g_FamPickupJewelsRare","GLOBAL",0)
        Global("g_FamPickupJewelsMagic","GLOBAL",0)
      ~
    + @404
      DO ~SetGlobal("g_FamPickupJewelsCommon","GLOBAL",1)
          SetGlobal("g_FamPickupJewelsRare","GLOBAL",1)
          SetGlobal("g_FamPickupJewelsMagic","GLOBAL",1)
         ~
    + g_familiar_confirm

    ++ @405
        DO ~SetGlobal("g_FamPickupJewelsCommon","GLOBAL",0)
        SetGlobal("g_FamPickupJewelsRare","GLOBAL",1)
        SetGlobal("g_FamPickupJewelsMagic","GLOBAL",1)
       ~
    + g_familiar_confirm

    ++ @406
        DO ~SetGlobal("g_FamPickupJewelsCommon","GLOBAL",0)
        SetGlobal("g_FamPickupJewelsRare","GLOBAL",0)
        SetGlobal("g_FamPickupJewelsMagic","GLOBAL",1)
       ~
    + g_familiar_confirm

    + ~OR(3)
        Global("g_FamPickupJewelsCommon","GLOBAL",1)
        Global("g_FamPickupJewelsRare","GLOBAL",1)
        Global("g_FamPickupJewelsMagic","GLOBAL",1)
      ~
    + @407
        DO ~SetGlobal("g_FamPickupJewelsCommon","GLOBAL",0)
        SetGlobal("g_FamPickupJewelsRare","GLOBAL",0)
        SetGlobal("g_FamPickupJewelsMagic","GLOBAL",0)
      ~
    + g_familiar_confirm

    + ~Global("g_FamPickupAmmo","GLOBAL",0)~
    + @408 DO ~SetGlobal("g_FamPickupAmmo","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupAmmo","GLOBAL",1)~
    + @409 DO ~SetGlobal("g_FamPickupAmmo","GLOBAL",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupPotions","GLOBAL",0)~
    + @410 DO ~SetGlobal("g_FamPickupPotions","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupPotions","GLOBAL",1)~
    + @411 DO ~SetGlobal("g_FamPickupPotions","GLOBAL",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScrolls","GLOBAL",0)~
    + @412 DO ~SetGlobal("g_FamPickupScrolls","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScrolls","GLOBAL",1)~
    + @413 DO ~SetGlobal("g_FamPickupScrolls","GLOBAL",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScalps","GLOBAL",0)~
    + @414 DO ~SetGlobal("g_FamPickupScalps","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScalps","GLOBAL",1)~
    + @415 DO ~SetGlobal("g_FamPickupScalps","GLOBAL",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupTrophy","GLOBAL",0)~
    + @416 DO ~SetGlobal("g_FamPickupTrophy","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupTrophy","GLOBAL",1)~
    + @417 DO ~SetGlobal("g_FamPickupTrophy","GLOBAL",0)~
    + g_familiar_confirm

    ++ @418 + %state%

  END


  IF ~~ g_familiar_confirm
    SAY @419
  IF ~~ + %state%
  END

END
