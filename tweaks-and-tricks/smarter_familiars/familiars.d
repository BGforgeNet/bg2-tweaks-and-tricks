EXTEND_TOP %familiar_dialog% 1 4
  +~InPartySlot(LastTalkedToBy,0)~+ @167 + g_familiar_follow
  +~InPartySlot(LastTalkedToBy,0)~+ @168 + g_familiar_loot
  +~InPartySlot(LastTalkedToBy,0)~+ @169 + g_familiar_combat
//  +~InPartySlot(LastTalkedToBy,0)~+ @201 + g_familiar_gear //darts
END

/* darts
APPEND %familiar_dialog%
  IF ~~ g_familiar_gear
    SAY @170
    + ~PartyHasItem("g_dart")~ + @202 + g_familiar_dart
    ++ @205 + 1
  END
END
*/

APPEND %familiar_dialog%
  IF ~~ g_familiar_follow
    SAY @170

    + ~Global("g_FamFollowMaster","GLOBAL",0)~
    + @171 DO ~SetGlobal("g_FamFollowMaster","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamFollowMaster","GLOBAL",1)~
    + @172 DO ~SetGlobal("g_FamFollowMaster","GLOBAL",0)~
    + g_familiar_confirm

    ++ @173 + 1
  END
END


APPEND %familiar_dialog%
  IF ~~ g_familiar_combat
    SAY @170

    + ~Global("g_FamJumpToPack","GLOBAL",0)~
    + @174 DO ~SetGlobal("g_FamJumpToPack","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamJumpToPack","GLOBAL",1)~
    + @175 DO ~SetGlobal("g_FamJumpToPack","GLOBAL",0)~ 
    + g_familiar_confirm

    + ~Global("g_FamJumpToPackInjured","GLOBAL",0)~
    + @176 DO ~SetGlobal("g_FamJumpToPackInjured","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamJumpToPack","GLOBAL",1)~
    + @177 DO ~SetGlobal("g_FamJumpToPackInjured","GLOBAL",0)~ 
    + g_familiar_confirm

    + ~Global("g_FamiliarJumpOut","GLOBAL",0)~
    + @178 DO ~SetGlobal("g_FamiliarJumpOut","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamiliarJumpOut","GLOBAL",1)~
    + @179 DO ~SetGlobal("g_FamiliarJumpOut","GLOBAL",0)~
    + g_familiar_confirm

    ++ @180 + 1
  END
END


APPEND %familiar_dialog%
  IF ~~ g_familiar_loot
    SAY @170

    ++ @181
      DO ~SetGlobal("g_FamPickupGold","GLOBAL",0)
          SetGlobal("g_FamPickupJewelsCommon","GLOBAL",0)
          SetGlobal("g_FamPickupJewelsRare","GLOBAL",0)
          SetGlobal("g_FamPickupJewelsMagic","GLOBAL",0)
          SetGlobal("g_FamPickupAmmoMagic","GLOBAL",0)
          SetGlobal("g_FamPickupPotions","GLOBAL",0)
          SetGlobal("g_FamPickupScrolls","GLOBAL",0)
          SetGlobal("g_FamPickupTrophy","GLOBAL",0)
         ~
    + g_familiar_confirm

    ++ @182
      DO ~SetGlobal("g_FamPickupGold","GLOBAL",1)
          SetGlobal("g_FamPickupJewelsCommon","GLOBAL",1)
          SetGlobal("g_FamPickupJewelsRare","GLOBAL",1)
          SetGlobal("g_FamPickupJewelsMagic","GLOBAL",1)
          SetGlobal("g_FamPickupAmmoMagic","GLOBAL",1)
          SetGlobal("g_FamPickupPotions","GLOBAL",1)
          SetGlobal("g_FamPickupScrolls","GLOBAL",1)
          SetGlobal("g_FamPickupTrophy","GLOBAL",1)
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

    ++ @199 + 1

  END


  IF ~~ g_familiar_confirm
    SAY @200
  IF ~~ + 1
  END

/* darts
  IF ~~ BEGIN g_familiar_dart
    SAY @203
    IF ~~ DO
     ~SetGlobal("g_fam_take_dart","GLOBAL",1)~ GOTO 1
  END
*/

END
