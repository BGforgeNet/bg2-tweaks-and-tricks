/** @tra faster_forging.tra */

EXTEND_TOP %dlg% %START_STATE% #4
  + ~~ + @1 + g_item_type
END

APPEND %dlg%
  IF ~~ g_item_type
    SAY @2
    ++ @3 + g_weapon
    ++ @4 + g_armor
    ++ @5 + g_trinket
    ++ @6 + %START_STATE%
  END
END

APPEND %dlg%
  IF ~~ g_weapon
    SAY @7
    %cromwell_weapon%
    ++ @10 + g_item_type
    ++ @6 + %START_STATE%
  END
END

APPEND %dlg%
  IF ~~ g_armor
    SAY @8
    %cromwell_armor%
    ++ @10 + g_item_type
    ++ @6 + %START_STATE%
  END
END

APPEND %dlg%
  IF ~~ g_trinket
    SAY @9
    %cromwell_trinket%
    ++ @10 + g_item_type
    ++ @6 + %START_STATE%
  END
END
