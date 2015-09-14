EXTEND_TOP %familiar_dialog% 1 4
  +~InPartySlot(LastTalkedToBy,0)~+ ~I want to give you new instructions about the loot.~ + g_familiar_instructions
  +~InPartySlot(LastTalkedToBy,0)~+ ~Let's change your behaviour in combat.~ + g_familiar_behaviour
END

APPEND %familiar_dialog%
  IF ~~ g_familiar_behaviour
    SAY ~Yes, boss?~

    + ~Global("g_FamFollowMaster","LOCALS",0)~
    + ~Follow me at all times.~ DO ~SetGlobal("g_FamFollowMaster","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamFollowMaster","LOCALS",1)~
    + ~Stop following me all the time.~ DO ~SetGlobal("g_FamFollowMaster","LOCALS",0)~
    + g_familiar_confirm


    + ~Global("g_FamJumpToPack","LOCALS",0)~
    + ~If you see any danger, jump to my pack right away!~ DO ~SetGlobal("g_FamJumpToPack","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamJumpToPack","LOCALS",1)~
    + ~Don't hide in my pack when you see enemies.~ DO ~SetGlobal("g_FamJumpToPack","LOCALS",0)~ 
    + g_familiar_confirm

    + ~Global("g_FamJumpToPackInjured","LOCALS",0)~
    + ~If you're injured, rush to my pack immediately.~ DO ~SetGlobal("g_FamJumpToPackInjured","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamJumpToPack","LOCALS",1)~
    + ~Even when you're injured, don't hide in my pack unless I ask you.~ DO ~SetGlobal("g_FamJumpToPackInjured","LOCALS",0)~ 
    + g_familiar_confirm

    + ~Global("g_FamiliarJumpOut","GLOBAL",0)~
    + ~When the enemies are gone, get out of the pack by yourself.~ DO ~SetGlobal("g_FamiliarJumpOut","GLOBAL",1)~
    + g_familiar_confirm

    + ~Global("g_FamiliarJumpOut","GLOBAL",1)~
    + ~Stay in the pack until I tell you specifically. One cannot be too careful.~ DO ~SetGlobal("g_FamiliarJumpOut","GLOBAL",0)~
    + g_familiar_confirm

    ++ ~Ah, maybe later.~ + 1
  END
END

APPEND %familiar_dialog%
  IF ~~ g_familiar_instructions
    SAY ~Yes, boss?~

    ++ ~Stop picking up any items, okay?~
      DO ~SetGlobal("g_FamPickupGold","LOCALS",0)
          SetGlobal("g_FamPickupJewelsCommon","LOCALS",0)
          SetGlobal("g_FamPickupJewelsRare","LOCALS",0)
          SetGlobal("g_FamPickupJewelsMagic","LOCALS",0)
          SetGlobal("g_FamPickupAmmoMagic","LOCALS",0)
          SetGlobal("g_FamPickupPotions","LOCALS",0)
          SetGlobal("g_FamPickupScrolls","LOCALS",0)
         ~
    + g_familiar_confirm

    +~Global("g_FamPickupGold","LOCALS",0)~+ ~Pick up any gold that you find.~ DO ~SetGlobal("g_FamPickupGold","LOCALS",1)~ + g_familiar_confirm
    +~Global("g_FamPickupGold","LOCALS",1)~+ ~Don't pick up the gold that you find.~ DO ~SetGlobal("g_FamPickupGold","LOCALS",0)~ + g_familiar_confirm

    + ~OR(3)
        Global("g_FamPickupJewelsCommon","LOCALS",0)
        Global("g_FamPickupJewelsRare","LOCALS",0)
        Global("g_FamPickupJewelsMagic","LOCALS",0)
      ~
    + ~Pick up any jewels that you find.~
      DO ~SetGlobal("g_FamPickupJewelsCommon","LOCALS",1)
          SetGlobal("g_FamPickupJewelsRare","LOCALS",1)
          SetGlobal("g_FamPickupJewelsMagic","LOCALS",1)
         ~
    + g_familiar_confirm

    ++ ~Pick up only valuable and magical jewelry.~
        DO ~SetGlobal("g_FamPickupJewelsCommon","LOCALS",0)
        SetGlobal("g_FamPickupJewelsRare","LOCALS",1)
        SetGlobal("g_FamPickupJewelsMagic","LOCALS",1)
       ~
    + g_familiar_confirm

    ++ ~Pick up only magical jewelry.~
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
    + ~Don't pick up the jewelry.~
        DO ~SetGlobal("g_FamPickupJewelsCommon","LOCALS",0)
        SetGlobal("g_FamPickupJewelsRare","LOCALS",0)
        SetGlobal("g_FamPickupJewelsMagic","LOCALS",0)
      ~
    + g_familiar_confirm

    + ~Global("g_FamPickupAmmo","LOCALS",0)~
    + ~Pick up any magical ammo that you find.~ DO ~SetGlobal("g_FamPickupAmmo","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupAmmo","LOCALS",1)~
    + ~Don't pick up the ammo.~ DO ~SetGlobal("g_FamPickupAmmo","LOCALS",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupPotions","LOCALS",0)~
    + ~If you find any potions, bring them to me!~ DO ~SetGlobal("g_FamPickupPotions","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupPotions","LOCALS",1)~
    + ~Stop picking up potions.~ DO ~SetGlobal("g_FamPickupPotions","LOCALS",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScrolls","LOCALS",0)~
    + ~Get me any scrolls that you can find.~ DO ~SetGlobal("g_FamPickupScrolls","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScrolls","LOCALS",1)~
    + ~I don't need you to bring any more scrolls.~ DO ~SetGlobal("g_FamPickupScrolls","LOCALS",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScalps","LOCALS",0)~
    + ~Fetch scalps from those bandits we kill. There's a nice bounty for them.~ DO ~SetGlobal("g_FamPickupScalps","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupScalps","LOCALS",1)~
    + ~Stop that scalping, will you? It's disgusting.~ DO ~SetGlobal("g_FamPickupScalps","LOCALS",0)~
    + g_familiar_confirm

    + ~Global("g_FamPickupTrophy","LOCALS",0)~
    + ~Ankheg scales, winter wolf pelts, wyvern heads - I need it all.~ DO ~SetGlobal("g_FamPickupTrophy","LOCALS",1)~
    + g_familiar_confirm

    + ~Global("g_FamPickupTrophy","LOCALS",1)~
    + ~No more pelts or scales, we're stocked.~ DO ~SetGlobal("g_FamPickupTrophy","LOCALS",0)~
    + g_familiar_confirm

    ++ ~No, nothing.~ + 1

  END

  IF ~~ g_familiar_confirm
    SAY ~As you wish, master.~
  IF ~~ + 1
  END

END
