BEGIN ~CBSOUMJ1~

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
Global("CbPlayerCanJoinSoubarMilita","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",0)
Global("CbMajorWantsStuffInBag","AR4286",3)~ THEN BEGIN 16
  SAY @1
= @24
  IF ~~ THEN REPLY @2 GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @26
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @27
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @28
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @29
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @30
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @31
  IF ~~ THEN REPLY @32  DO ~SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",1)CreateCreature("CBSOUSGT",[495.480],9)~
  UNSOLVED_JOURNAL @50108 EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)
Global("CbRoadPatrolDone","AR4286",0)~ THEN BEGIN 23
  SAY @33
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @34
  IF ~~ THEN REPLY @35 EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)
Global("CbRoadPatrolDone","AR4286",1)
Global("CbFarmPatrolDuty","AR4286",0)~ THEN BEGIN 25
  SAY @36
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @37
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @38
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @39
  IF ~~ THEN DO ~GiveItemCreate("CBTRVBAG",LastTalkedToBy(),1,0,0)
EraseJournalEntry(@50108)
SetGlobal("CbRoadPatrolDone","AR4286",2)
SetGlobal("CbFarmPatrolDuty","AR4286",1)~ 
UNSOLVED_JOURNAL @50102 EXIT
END

IF ~Global("CbPartyIsInSoubarMilitia","GLOBAL",1)
Global("CbFarmPatrolDuty","AR4286",4)~ THEN BEGIN 29
  SAY @40
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @41
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @44
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @47
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @48
  IF ~!Class(Player1,MONK)
!Class(Player2,MONK)
!Class(Player3,MONK)
!Class(Player4,MONK)
!Class(Player5,MONK)
!Class(Player6,MONK)
~ THEN DO ~AddExperienceParty(30000)
EraseJournalEntry(@50107)
SetGlobal("CbFarmPatrolDuty","AR4286",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBPROMO1")~ 
SOLVED_JOURNAL @50103 EXIT
  IF ~~ THEN DO ~AddExperienceParty(30000)
EraseJournalEntry(@50107)
SetGlobal("CbFarmPatrolDuty","AR4286",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CBFXMNKA")~
SOLVED_JOURNAL @50103 EXIT
END
