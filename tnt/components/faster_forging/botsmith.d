/** @tra faster_forging.tra */

EXTEND_BOTTOM %dlg% %START_STATE%
  + ~~ + @20 + g_item_type
END

APPEND %dlg%
  IF ~~ g_item_type
    SAY @21
    ++ @3 + g_weapon
    ++ @4 + g_armor
    ++ @5 + g_trinket
    ++ @6 + %START_STATE%
  END
END

APPEND %dlg%
  IF ~~ g_weapon
    SAY @22
    %cespenar_weapon%
    ++ @10 + g_item_type
    ++ @6 + %START_STATE%
  END
END

APPEND %dlg%
  IF ~~ g_armor
    SAY @23
    %cespenar_armor%
    ++ @10 + g_item_type
    ++ @6 + %START_STATE%
  END
END

APPEND %dlg%
  IF ~~ g_trinket
    SAY @24
    %cespenar_trinket%
    ++ @10 + g_item_type
    ++ @6 + %START_STATE%
  END
END
