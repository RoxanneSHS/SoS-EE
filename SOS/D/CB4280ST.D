BEGIN ~CB4280ST~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 9.1 8.1 0.1
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 9.2 8.2 0.2
  SAY @7
  IF ~~ THEN DO ~StartStore("CB4280ST",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 9
  IF ~~ THEN REPLY @18 GOTO 2
  IF ~~ THEN REPLY @19 GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 10
  IF ~~ THEN REPLY @18 GOTO 2
  IF ~~ THEN REPLY @19 GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @1
  IF ~~ THEN REPLY @5 EXIT
END

IF ~True()~ THEN BEGIN 12
  SAY @24
  IF ~~ THEN DO ~StartStore("CB4280ST",LastTalkedToBy())~ EXIT
END
