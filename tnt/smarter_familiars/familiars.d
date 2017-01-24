EXTEND_TOP %dialog% %state%
  +~InPartySlot(LastTalkedToBy,0)~+ @167 + g_familiar_follow
  +~InPartySlot(LastTalkedToBy,0)~+ @168 + g_familiar_loot
  +~InPartySlot(LastTalkedToBy,0)~+ @169 + g_familiar_combat
END


APPEND %dialog%
  IF ~~ g_familiar_follow
    SAY @170

    + ~Global("g_FamFollowMaster","GLOBAL",0)~
    + @171 DO ~SetGlobal("g_FamFollowMaster","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamFollowMaster","GLOBAL",1)~
    + @172 DO ~SetGlobal("g_FamFollowMaster","GLOBAL",0)~
    + g_familiar_confirm

    + ~Global("g_FamSpeed","GLOBAL",0)~
    + @212 DO ~SetGlobal("g_FamSpeed","GLOBAL",1)
               ApplySpellRES("G_FSPED1","%death_var%")~
    + g_familiar_confirm

    + ~Global("g_FamSpeed","GLOBAL",1)~
    + @213 DO ~SetGlobal("g_FamSpeed","GLOBAL",0)
               ApplySpellRES("G_FSPED0","%death_var%")~
    + g_familiar_confirm

    ++ @173 + %state%
  END
END


APPEND %dialog%
  IF ~~ g_familiar_combat
    SAY @170

    + ~Global("g_FamJumpToPack","GLOBAL",0)~ //hide on sight
    + @174 DO ~SetGlobal("g_FamJumpToPack","GLOBAL",1)
               SetGlobal("g_FamJumpToPackInjured","GLOBAL",0)
               SetGlobal("g_FamJumpToPackBadlyInjured","GLOBAL",0)
              ~
    + g_familiar_confirm

    + ~Global("g_FamJumpToPack","GLOBAL",1)~ //never hide
    + @175 DO ~SetGlobal("g_FamJumpToPack","GLOBAL",0)
               SetGlobal("g_FamJumpToPackInjured","GLOBAL",0)
               SetGlobal("g_FamJumpToPackBadlyInjured","GLOBAL",0)
              ~
    + g_familiar_confirm

    + ~Global("g_FamJumpToPackInjured","GLOBAL",0)~ //hide when injured
    + @176 DO ~SetGlobal("g_FamJumpToPack","GLOBAL",0)
               SetGlobal("g_FamJumpToPackInjured","GLOBAL",1)
               SetGlobal("g_FamJumpToPackBadlyInjured","GLOBAL",0)
              ~
    + g_familiar_confirm

    + ~Global("g_FamJumpToPackBadlyInjured","GLOBAL",0)~ //hide when badly injured
    + @177 DO ~SetGlobal("g_FamJumpToPack","GLOBAL",0)
               SetGlobal("g_FamJumpToPackInjured","GLOBAL",0)
               SetGlobal("g_FamJumpToPackBadlyInjured","GLOBAL",1)
              ~
    + g_familiar_confirm

    + ~Global("g_FamiliarJumpOut","GLOBAL",0)~ //jump out self
    + @178 DO ~SetGlobal("g_FamiliarJumpOut","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamiliarJumpOut","GLOBAL",1)~ //don't ever jump out
    + @179 DO ~SetGlobal("g_FamiliarJumpOut","GLOBAL",0)~
    + g_familiar_confirm

    + ~OR(2)
         Global("g_FamHurtNotif","GLOBAL",1)
         Global("g_FamBadlyHurtNotif","GLOBAL",1)~ //no Notif when hurt
    + @207 DO ~SetGlobal("g_FamHurtNotif","GLOBAL",0)
               SetGlobal("g_FamBadlyHurtNotif","GLOBAL",0)
              ~
    + g_familiar_confirm

    + ~Global("g_FamHurtNotif","GLOBAL",0)~ //Notif when hurt
    + @208 DO ~SetGlobal("g_FamHurtNotif","GLOBAL",1)
               SetGlobal("g_FamBadlyHurtNotif","GLOBAL",0)
              ~
    + g_familiar_confirm

    + ~Global("g_FamBadlyHurtNotif","GLOBAL",0)~ //Notif when badly hurt
    + @209 DO ~SetGlobal("g_FamHurtNotif","GLOBAL",0)
               SetGlobal("g_FamBadlyHurtNotif","GLOBAL",1)
              ~
    + g_familiar_confirm

    ++ @180 + %state%
  END
END


APPEND %dialog%
  IF ~~ g_familiar_loot
    SAY @170

    ++ @181
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

    ++ @182
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

    +~Global("g_FamPickupGold","GLOBAL",0)~+ @183 DO ~SetGlobal("g_FamPickupGold","GLOBAL",1)~ + g_familiar_confirm
    +~Global("g_FamPickupGold","GLOBAL",1)~+ @184 DO ~SetGlobal("g_FamPickupGold","GLOBAL",0)~ + g_familiar_confirm

    + ~OR(3)
        Global("g_FamPickupJewelsCommon","GLOBAL",0)
        Global("g_FamPickupJewelsRare","GLOBAL",0)
        Global("g_FamPickupJewelsMagic","GLOBAL",0)
      ~
    + @185
      DO ~SetGlobal("g_FamPickupJewelsCommon","GLOBAL",1)
          SetGlobal("g_FamPickupJewelsRare","GLOBAL",1)
          SetGlobal("g_FamPickupJewelsMagic","GLOBAL",1)
         ~
    + g_familiar_confirm

    ++ @186
        DO ~SetGlobal("g_FamPickupJewelsCommon","GLOBAL",0)
        SetGlobal("g_FamPickupJewelsRare","GLOBAL",1)
        SetGlobal("g_FamPickupJewelsMagic","GLOBAL",1)
       ~
    + g_familiar_confirm

    ++ @187
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
    + @188
        DO ~SetGlobal("g_FamPickupJewelsCommon","GLOBAL",0)
        SetGlobal("g_FamPickupJewelsRare","GLOBAL",0)
        SetGlobal("g_FamPickupJewelsMagic","GLOBAL",0)
      ~
    + g_familiar_confirm

    + ~Global("g_FamPickupAmmo","GLOBAL",0)~
    + @189 DO ~SetGlobal("g_FamPickupAmmo","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupAmmo","GLOBAL",1)~
    + @190 DO ~SetGlobal("g_FamPickupAmmo","GLOBAL",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupPotions","GLOBAL",0)~
    + @191 DO ~SetGlobal("g_FamPickupPotions","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupPotions","GLOBAL",1)~
    + @192 DO ~SetGlobal("g_FamPickupPotions","GLOBAL",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScrolls","GLOBAL",0)~
    + @193 DO ~SetGlobal("g_FamPickupScrolls","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScrolls","GLOBAL",1)~
    + @194 DO ~SetGlobal("g_FamPickupScrolls","GLOBAL",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScalps","GLOBAL",0)~
    + @195 DO ~SetGlobal("g_FamPickupScalps","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScalps","GLOBAL",1)~
    + @196 DO ~SetGlobal("g_FamPickupScalps","GLOBAL",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupTrophy","GLOBAL",0)~
    + @197 DO ~SetGlobal("g_FamPickupTrophy","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupTrophy","GLOBAL",1)~
    + @198 DO ~SetGlobal("g_FamPickupTrophy","GLOBAL",0)~
    + g_familiar_confirm

    ++ @199 + %state%

  END


  IF ~~ g_familiar_confirm
    SAY @200
  IF ~~ + %state%
  END

END
