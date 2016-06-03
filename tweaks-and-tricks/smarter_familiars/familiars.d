EXTEND_TOP %familiar_dialog% 1 4
  +~InPartySlot(LastTalkedToBy,0)~+ @167 + g_familiar_follow
  +~InPartySlot(LastTalkedToBy,0)~+ @168 + g_familiar_loot
  +~InPartySlot(LastTalkedToBy,0)~+ @169 + g_familiar_combat
END


APPEND %familiar_dialog%
  IF ~~ g_familiar_follow
    SAY @170

    + ~Global("g_FamFollowMaster","LOCALS",0)~
    + @171 DO ~SetGlobal("g_FamFollowMaster","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamFollowMaster","LOCALS",1)~
    + @172 DO ~SetGlobal("g_FamFollowMaster","LOCALS",0)~
    + g_familiar_confirm

    ++ @173 + 1
  END
END


APPEND %familiar_dialog%
  IF ~~ g_familiar_combat
    SAY @170

    + ~Global("g_FamJumpToPack","LOCALS",0)~
    + @174 DO ~SetGlobal("g_FamJumpToPack","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamJumpToPack","LOCALS",1)~
    + @175 DO ~SetGlobal("g_FamJumpToPack","LOCALS",0)~ 
    + g_familiar_confirm

    + ~Global("g_FamJumpToPackInjured","LOCALS",0)~
    + @176 DO ~SetGlobal("g_FamJumpToPackInjured","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamJumpToPack","LOCALS",1)~
    + @177 DO ~SetGlobal("g_FamJumpToPackInjured","LOCALS",0)~ 
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
      DO ~SetGlobal("g_FamPickupGold","LOCALS",0)
          SetGlobal("g_FamPickupJewelsCommon","LOCALS",0)
          SetGlobal("g_FamPickupJewelsRare","LOCALS",0)
          SetGlobal("g_FamPickupJewelsMagic","LOCALS",0)
          SetGlobal("g_FamPickupAmmoMagic","LOCALS",0)
          SetGlobal("g_FamPickupPotions","LOCALS",0)
          SetGlobal("g_FamPickupScrolls","LOCALS",0)
          SetGlobal("g_FamPickupTrophy","LOCALS",0)
         ~
    + g_familiar_confirm

    ++ @182
      DO ~SetGlobal("g_FamPickupGold","LOCALS",1)
          SetGlobal("g_FamPickupJewelsCommon","LOCALS",1)
          SetGlobal("g_FamPickupJewelsRare","LOCALS",1)
          SetGlobal("g_FamPickupJewelsMagic","LOCALS",1)
          SetGlobal("g_FamPickupAmmoMagic","LOCALS",1)
          SetGlobal("g_FamPickupPotions","LOCALS",1)
          SetGlobal("g_FamPickupScrolls","LOCALS",1)
          SetGlobal("g_FamPickupTrophy","LOCALS",1)
         ~
    + g_familiar_confirm

    +~Global("g_FamPickupGold","LOCALS",0)~+ @183 DO ~SetGlobal("g_FamPickupGold","LOCALS",1)~ + g_familiar_confirm
    +~Global("g_FamPickupGold","LOCALS",1)~+ @184 DO ~SetGlobal("g_FamPickupGold","LOCALS",0)~ + g_familiar_confirm

    + ~OR(3)
        Global("g_FamPickupJewelsCommon","LOCALS",0)
        Global("g_FamPickupJewelsRare","LOCALS",0)
        Global("g_FamPickupJewelsMagic","LOCALS",0)
      ~
    + @185
      DO ~SetGlobal("g_FamPickupJewelsCommon","LOCALS",1)
          SetGlobal("g_FamPickupJewelsRare","LOCALS",1)
          SetGlobal("g_FamPickupJewelsMagic","LOCALS",1)
         ~
    + g_familiar_confirm

    ++ @186
        DO ~SetGlobal("g_FamPickupJewelsCommon","LOCALS",0)
        SetGlobal("g_FamPickupJewelsRare","LOCALS",1)
        SetGlobal("g_FamPickupJewelsMagic","LOCALS",1)
       ~
    + g_familiar_confirm

    ++ @187
        DO ~SetGlobal("g_FamPickupJewelsCommon","LOCALS",0)
        SetGlobal("g_FamPickupJewelsRare","LOCALS",0)
        SetGlobal("g_FamPickupJewelsMagic","LOCALS",1)
       ~
    + g_familiar_confirm

    + ~OR(3)
        Global("g_FamPickupJewelsCommon","LOCALS",1)
        Global("g_FamPickupJewelsRare","LOCALS",1)
        Global("g_FamPickupJewelsMagic","LOCALS",1)
      ~
    + @188
        DO ~SetGlobal("g_FamPickupJewelsCommon","LOCALS",0)
        SetGlobal("g_FamPickupJewelsRare","LOCALS",0)
        SetGlobal("g_FamPickupJewelsMagic","LOCALS",0)
      ~
    + g_familiar_confirm

    + ~Global("g_FamPickupAmmo","LOCALS",0)~
    + @189 DO ~SetGlobal("g_FamPickupAmmo","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupAmmo","LOCALS",1)~
    + @190 DO ~SetGlobal("g_FamPickupAmmo","LOCALS",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupPotions","LOCALS",0)~
    + @191 DO ~SetGlobal("g_FamPickupPotions","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupPotions","LOCALS",1)~
    + @192 DO ~SetGlobal("g_FamPickupPotions","LOCALS",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScrolls","LOCALS",0)~
    + @193 DO ~SetGlobal("g_FamPickupScrolls","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScrolls","LOCALS",1)~
    + @194 DO ~SetGlobal("g_FamPickupScrolls","LOCALS",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScalps","LOCALS",0)~
    + @195 DO ~SetGlobal("g_FamPickupScalps","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScalps","LOCALS",1)~
    + @196 DO ~SetGlobal("g_FamPickupScalps","LOCALS",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupTrophy","LOCALS",0)~
    + @197 DO ~SetGlobal("g_FamPickupTrophy","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupTrophy","LOCALS",1)~
    + @198 DO ~SetGlobal("g_FamPickupTrophy","LOCALS",0)~
    + g_familiar_confirm

    ++ @199 + 1

  END

  IF ~~ g_familiar_confirm
    SAY @200
  IF ~~ + 1
  END

END
