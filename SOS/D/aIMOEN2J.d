APPEND IMOEN2J

IF ~Global("CbOriginalPeopleInteract","AR1100",1)
AreaCheck("AR1100")
~ THEN BEGIN SOS110
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO SOS111
  IF ~~ THEN REPLY @2 GOTO SOS113
  IF ~~ THEN REPLY @3 GOTO SOS118
END

IF ~~ THEN BEGIN SOS111
  SAY @4
  IF ~~ THEN GOTO SOS112
END

IF ~~ THEN BEGIN SOS112
  SAY @5
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR1100",0)
SetGlobal("CbImoenInteract_1100","AR1100",1)~ EXIT
END

IF ~~ THEN BEGIN SOS113
  SAY @6
  IF ~~ THEN GOTO SOS114
END

IF ~~ THEN BEGIN SOS114
  SAY @7
  IF ~~ THEN REPLY @8 GOTO SOS115
  IF ~~ THEN REPLY @9 GOTO SOS116
END

IF ~~ THEN BEGIN SOS115
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR1100",0)
SetGlobal("CbImoenInteracted_1100","AR1100",1)~ EXIT
END

IF ~~ THEN BEGIN SOS116
  SAY @11
  IF ~~ THEN GOTO SOS117
END

IF ~~ THEN BEGIN SOS117
  SAY @12
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR1100",0)
SetGlobal("CbImoenInteracted_1100","AR1100",1)~ EXIT
END

IF ~~ THEN BEGIN SOS118
  SAY @13
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR1100",0)
SetGlobal("CbImoenInteracted_1100","AR1100",1)~ EXIT
END

IF ~Global("CbImoenInteractMayor","GLOBAL",1)~ THEN BEGIN SOS119
  SAY @14
  IF ~~ THEN REPLY @15GOTO SOS120
  IF ~~ THEN REPLY @16 GOTO SOS121
  IF ~~ THEN REPLY @17 GOTO SOS122
  IF ~~ THEN REPLY @18 GOTO SOS123
END

IF ~~ THEN BEGIN SOS120
  SAY @19
  IF ~~ THEN DO ~SetGlobal("CbImoenInteractMayor","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN SOS121
  SAY @20
  IF ~~ THEN DO ~SetGlobal("CbImoenInteractMayor","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN SOS122
  SAY @21
  IF ~~ THEN DO ~SetGlobal("CbImoenInteractMayor","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN SOS123
  SAY @22
  IF ~~ THEN DO ~SetGlobal("CbImoenInteractMayor","GLOBAL",2)~ EXIT
END

END
