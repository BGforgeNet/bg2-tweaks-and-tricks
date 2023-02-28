BEGIN ~%cre_id%~
IF ~NumTimesTalkedTo(0)~ BEGIN 0
  SAY ~<CHARNAME>, wait. I've been told that you are leaving Candlekeep.~IF ~~ THEN REPLY ~Hello, Thorius. Yes, Gorion told me to prepare for a travel.~ GOTO 1
IF ~~ THEN REPLY ~Get lost, old man. I've no time.~ GOTO 2
END
IF ~~ BEGIN 1
  SAY ~You have always been my favorite pupil, I want to help you however I can. Take these things. It's no weapon or armor, but experienced adventurers know their real value.~
IF ~~ THEN REPLY ~I'm very grateful for your lessons and your help, Thorius.~ DO ~SetNumTimesTalkedTo(0) %action_bg1_bags% EscapeArea()~
EXIT
END
IF ~~ BEGIN 2
  SAY ~But... Well, I see you have no need of my help.~ 
IF ~~ THEN DO ~SetNumTimesTalkedTo(0) EscapeArea()~  EXIT
END
