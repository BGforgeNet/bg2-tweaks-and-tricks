BEGIN ~Bags~
IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~<CHARNAME>, wait. I've been told that you are leaving Candlekeep.~IF ~~ THEN REPLY ~Hello, Thorius. Yes, Gorion told me to prepare for a travel.~ GOTO 1
IF ~~ THEN REPLY ~Get lost, old man. I've no time.~ GOTO 2
END
IF ~~ THEN BEGIN 1
	SAY ~You have always been my favorite pupil, I want to help you whatever I can. Take these things, it's not weapon or armor, but experienced adventurers know its real value. And I have no need in it here.~
IF ~~ THEN REPLY ~I'm very grateful for your lessons and your help, Thorius.~ DO ~SetNumTimesTalkedTo(0) GiveItemCreate("wb_gem",Player1,1,1,1) GiveItemCreate("wb_pot",Player1,1,1,1) GiveItemCreate("wb_scr",Player1,1,1,1) EscapeArea()~
EXIT
END
IF ~~ THEN BEGIN 2
	SAY ~But...Well, I see you have no need in my help.~ 
IF ~~ THEN DO ~SetNumTimesTalkedTo(0) EscapeArea()~  EXIT
END
