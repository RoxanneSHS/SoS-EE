APPEND NALIAJ

IF ~Global("CbOriginalPeopleInteract","AR4203",1)
AreaCheck("AR4203")
Global("CbBetraChanged","GLOBAL",0)
Global("CbNaliaInteracted_4203","AR4203",0)~ THEN BEGIN SOS152
  SAY @0
  IF ~~ THEN REPLY @1 GOTO SOS153
  IF ~~ THEN REPLY @2 GOTO SOS154
END

IF ~~ THEN BEGIN SOS153
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4203",0)
SetGlobal("CbNaliaInteracted_4203","AR4203",1)
SetGlobal("CbBetraCanChangeNow","GLOBAL",1)
ActionOverride("CBDRBUCK",StartDialogNoSet(Player1))~ EXIT
END

IF ~~ THEN BEGIN SOS154
  SAY @4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("CbOriginalPeopleInteract","AR4203",0)
SetGlobal("CbNaliaInteracted_4203","AR4203",1)
SetGlobal("CbBetraCanChangeNow","GLOBAL",1)
ActionOverride("CBDRBUCK",StartDialogNoSet(Player1))~ EXIT
END

IF ~Global("CbOriginalPeopleInteract","AR4203",1)
Global("CbNaliaInteracted_4203","AR4203",0)
AreaCheck("AR4203")
Global("CbBetraChanged","GLOBAL",1)~ THEN BEGIN SOS155
  SAY @6
  IF ~~ THEN GOTO SOS156
END

IF ~~ THEN BEGIN SOS156
  SAY @7
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4203",0)
SetGlobal("CbNaliaInteracted_4203","AR4203",1)~ EXIT
END

IF ~Global("CbCharlotteAndNaliaMeet","GLOBAL",0)
AreaCheck("AR4220")
InParty("CHARLOTT")~ THEN BEGIN SOS157
  SAY @8
  IF ~~ THEN EXTERN ~CHARLOTJ~ 100
END

IF ~~ THEN BEGIN SOS158
  SAY @9
  IF ~~ THEN GOTO SOS162
END

IF ~~ THEN BEGIN SOS159
  SAY @10
  IF ~~ THEN DO ~SetGlobal("CbOriginalPeopleInteract","AR4220",0)
SetGlobalTimer("CbCharlotteAndNaliaSecond","GLOBAL",TWO_DAYS)
SetGlobal("CbCharlotteAndNaliaMeet","GLOBAL",5)
AddexperienceParty(5000)
AddXPObject("NALIA",2500)
AddXPObject("CHARLOTT",2500)~ EXIT
END

IF ~~ THEN BEGIN SOS160
  SAY @11
  IF ~~ THEN GOTO SOS161
END

IF ~~ THEN BEGIN SOS161
  SAY @12
  IF ~~ THEN EXTERN ~CHARLOTJ~ 105
END

IF ~~ THEN BEGIN SOS162
  SAY @13
  IF ~~ THEN EXTERN ~CHARLOTJ~ 108
END

IF ~Global("CbCharlotteAndNaliaGirlTalk","GLOBAL",0)
Global("CbCharlotteAndNaliaMeet","GLOBAL",5)
GlobalTimerExpired("CbCharlotteAndNaliaSecond","GLOBAL")~ THEN BEGIN SOS163
  SAY @14
  IF ~~ THEN GOTO SOS164
END

IF ~~ THEN BEGIN SOS164
  SAY @15
  IF ~~ THEN EXTERN ~CHARLOTJ~ 109
END

IF ~~ THEN BEGIN SOS165
  SAY @16
  IF ~~ THEN GOTO SOS166
END

IF ~~ THEN BEGIN SOS166
  SAY @17
  IF ~~ THEN EXTERN ~CHARLOTJ~ 110
END

IF ~~ THEN BEGIN SOS167
  SAY @18
  IF ~~ THEN GOTO SOS168
END

IF ~~ THEN BEGIN SOS168
  SAY @19
  IF ~IsValidForPartyDialog("jaheira")~ THEN EXTERN ~JAHEIRAJ~ SOS143
  IF ~!IsValidForPartyDialog("jaheira")~ THEN EXTERN ~CHARLOTJ~ 120
END

IF ~~ THEN BEGIN SOS169
  SAY @20
  IF ~~ THEN EXTERN ~CHARLOTJ~ 112
END

IF ~~ THEN BEGIN SOS170
  SAY @21
  IF ~~ THEN GOTO SOS171
END

IF ~~ THEN BEGIN SOS171
  SAY @22
  IF ~GENDER([PC],MALE)~ THEN EXTERN ~CHARLOTJ~ 117
  IF ~!GENDER([PC],MALE)~ THEN EXTERN ~CHARLOTJ~ 119
END

IF ~~ THEN BEGIN SOS172
  SAY @23
  IF ~~ THEN EXTERN ~CHARLOTJ~ 120
END

IF ~~ THEN BEGIN SOS173
  SAY @24
  IF ~~ THEN DO ~SetGlobal("CbCharlotteAndNaliaGirlTalk","GLOBAL",14)
SetGlobalTimer("CbCharlotteAndNaliaThirdBanter","GLOBAL",THREE_DAYS)
AddexperienceParty(10000)
AddXPObject("NALIA",5000)
AddXPObject("CHARLOTT",5000)~ EXIT
END

IF ~~ THEN BEGIN SOS174
  SAY @25
  IF ~~ THEN EXTERN ~CHARLOTJ~ 130
END

IF ~~ THEN BEGIN SOS175
  SAY @26
  IF ~~ THEN EXTERN ~CHARLOTJ~ 132
END

IF ~~ THEN BEGIN SOS176
  SAY @27
  IF ~IsValidForPartyDialog("jaheira")
Gender([PC],MALE)~ THEN EXTERN ~JAHEIRAJ~ SOS147
  IF ~IsValidForPartyDialog("jaheira")
!Gender([PC],MALE)~ THEN EXTERN ~JAHEIRAJ~ SOS149
  IF ~!IsValidForPartyDialog("jaheira")~ THEN GOTO SOS182
END

IF ~~ THEN BEGIN SOS177
  SAY @28
  IF ~~ THEN GOTO SOS178
END

IF ~~ THEN BEGIN SOS178
  SAY @29
  IF ~~ THEN EXTERN ~CHARLOTJ~ 132
END

IF ~~ THEN BEGIN SOS179
  SAY @30
  IF ~~ THEN GOTO SOS180
END

IF ~~ THEN BEGIN SOS180
  SAY @31
  IF ~~ THEN EXTERN ~CHARLOTJ~ 132
END

IF ~~ THEN BEGIN SOS181
  SAY @29
  IF ~~ THEN EXTERN ~CHARLOTJ~ 132
END

IF ~~ THEN BEGIN SOS182
  SAY @32
  IF ~~ THEN EXTERN ~CHARLOTJ~ 132
END

IF ~~ THEN BEGIN SOS183
  SAY @33
  IF ~~ THEN EXTERN ~CHARLOTJ~ 133
END

IF ~~ THEN BEGIN SOS184
  SAY @34
  IF ~~ THEN EXTERN ~CHARLOTJ~ 135
END

IF ~~ THEN BEGIN SOS185
  SAY @35
  IF ~~ THEN EXTERN ~CHARLOTJ~ 137
END

IF ~~ THEN BEGIN SOS186
  SAY @36
  IF ~~ THEN EXTERN ~CHARLOTJ~ 139
END

IF ~~ THEN BEGIN SOS187
  SAY @37
  IF ~Gender([PC],MALE)~ THEN GOTO SOS188
  IF ~InParty("MINSC")~ THEN GOTO SOS189
  IF ~InParty("ANOMEN")
~ THEN GOTO SOS190
  IF ~InParty("KELDORN")~ THEN GOTO SOS191
  IF ~InParty("VALYGAR")~ THEN GOTO SOS192
  IF ~InParty("HAERDALIS")~ THEN GOTO SOS193
  IF ~InParty("EDWIN")~ THEN GOTO SOS194
  IF ~InParty("YOSHIMO")~ THEN GOTO SOS195
  IF ~InParty("CERND")~ THEN GOTO SOS196
  IF ~!GENDER([PC],MALE)~ THEN GOTO SOS197
END

IF ~~ THEN BEGIN SOS188
  SAY @38
  IF ~~ THEN EXTERN ~CHARLOTJ~ 140
END

IF ~~ THEN BEGIN SOS189
  SAY @39
  IF ~~ THEN EXTERN ~CHARLOTJ~ 140
END

IF ~~ THEN BEGIN SOS190
  SAY @40
  IF ~~ THEN EXTERN ~CHARLOTJ~ 140
END

IF ~~ THEN BEGIN SOS191
  SAY @41
  IF ~~ THEN EXTERN ~CHARLOTJ~ 140
END

IF ~~ THEN BEGIN SOS192
  SAY @42
  IF ~~ THEN EXTERN ~CHARLOTJ~ 140
END

IF ~~ THEN BEGIN SOS193
  SAY @43
  IF ~~ THEN EXTERN ~CHARLOTJ~ 140
END

IF ~~ THEN BEGIN SOS194
  SAY @44
  IF ~~ THEN EXTERN ~CHARLOTJ~ 140
END

IF ~~ THEN BEGIN SOS195
  SAY @45
  IF ~~ THEN EXTERN ~CHARLOTJ~ 140
END

IF ~~ THEN BEGIN SOS196
  SAY @46
  IF ~~ THEN EXTERN ~CHARLOTJ~ 140
END

IF ~~ THEN BEGIN SOS197
  SAY @47
  IF ~~ THEN EXTERN ~CHARLOTJ~ 140
END

IF ~~ THEN BEGIN SOS198
  SAY @48
  IF ~~ THEN GOTO SOS199
END

IF ~~ THEN BEGIN SOS199
  SAY @49
  IF ~~ THEN EXTERN ~CHARLOTJ~ 142
END

IF ~~ THEN BEGIN SOS200
  SAY @50
  IF ~~ THEN GOTO SOS201
END

IF ~~ THEN BEGIN SOS201
  SAY @51
  IF ~~ THEN EXTERN ~CHARLOTJ~ 143
END

END
