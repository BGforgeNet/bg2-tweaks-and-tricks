/** @tra starting_bags.tra */

BEGIN ~%cre_id%~
IF ~NumTimesTalkedTo(0)~ BEGIN 0
  SAY @20
    IF ~~ THEN REPLY @21 GOTO 1
    IF ~~ THEN REPLY @22 GOTO 2
END

IF ~~ BEGIN 1
  SAY @23
  IF ~~ THEN REPLY @24 DO ~SetNumTimesTalkedTo(0) %action_bg1_bags% EscapeArea()~ EXIT
END

IF ~~ BEGIN 2
  SAY @25
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0) EscapeArea()~  EXIT
END
