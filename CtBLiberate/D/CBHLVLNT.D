BEGIN ~CBHLVLNT~

IF ~Global("CbStoleFromValiant","AR3636",1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("CbStoleFromValiant","AR3636",2)
ApplySpellRES("CBHLVLNT",Myself)
EquipMostDamagingMelee()
SetGlobal("CbValiantEquips","LOCALS",1)
ChangeEnemyAlly(Myself,ENEMY)~ EXIT
END

IF ~!Global("CbStoleFromValiant","AR3636",1) GlobalLT("CbCloseToHome","GLOBAL",5)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~GlobalGT("CbValiantOpenedStore","LOCALS",0)~ THEN REPLY @4 GOTO 30
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~Global("CbValiantTellsStory","LOCALS",0)~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN DO ~SetGlobal("CbValiantOpenedStore","LOCALS",1) StartStore("CBHLVLNT",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 3
  IF ~~ THEN REPLY @12 DO ~SetGlobal("CbValiantTellsStory","LOCALS",1)~ GOTO 6
  IF ~~ THEN REPLY @13 DO ~SetGlobal("CbValiantTellsStory","LOCALS",1)~ GOTO 14
  IF ~GlobalGT("CbValiantOpenedStore","LOCALS",0)~ THEN REPLY @4 GOTO 30
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @15
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @16
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @17
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @18
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @19
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @20
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @21
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 19
END

IF ~~ THEN BEGIN 14
  SAY @24
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @25
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @26
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @27
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @22
  IF ~~ THEN REPLY @23 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @28
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @31
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @32
  IF ~~ THEN REPLY @33 GOTO 25
  IF ~~ THEN REPLY @34 GOTO 24
  IF ~~ THEN REPLY @35 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @36
  IF ~~ THEN DO ~SetGlobal("CbCloseToHome","GLOBAL",1)
SetGlobalTimer("CbCloseToHomeTimer","GLOBAL",THREE_DAYS)
AddJournalEntry(@9065,QUEST)
RevealAreaOnMap("AR3675")~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @37
  IF ~~ THEN DO ~SetGlobal("CbCloseToHome","GLOBAL",1)
SetGlobalTimer("CbCloseToHomeTimer","GLOBAL",THREE_DAYS)
AddJournalEntry(@9065,QUEST)
RevealAreaOnMap("AR3675")
SetGlobal("CbValiantOpenedStore","LOCALS",1)
StartStore("CBHLVLNT",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @38
  IF ~~ THEN DO ~SetGlobal("CbCloseToHome","GLOBAL",1)
SetGlobalTimer("CbCloseToHomeTimer","GLOBAL",THREE_DAYS)
AddJournalEntry(@9065,QUEST)
RevealAreaOnMap("AR3675")~ EXIT
END

IF ~!Global("CbStoleFromValiant","AR3636",1)
Global("CbCloseToHome","GLOBAL",5)
Global("CbValiantCongratulates","LOCALS",0)
Global("CbValiantReforges","LOCALS",0)~ THEN BEGIN 26
  SAY @39
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @41
  IF ~~ THEN DO ~SetGlobal("CbValiantCongratulates","LOCALS",1)
GiveItemCreate("CBVALTSS",LastTalkedToBy(Myself),1,0,0)~ GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 3
  IF ~GlobalGT("CbValiantOpenedStore","LOCALS",0)~ THEN REPLY @4 GOTO 30
  IF ~~ THEN REPLY @44 GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @45
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30
  SAY @46
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 3
  IF ~~ THEN REPLY @49 GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @50
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38
  SAY @58
  IF ~~ THEN REPLY @59 GOTO 3
  IF ~Global("CbValiantTellsStory","LOCALS",0)~ THEN REPLY @6 GOTO 4
  IF ~GlobalGT("CbValiantOpenedStore","LOCALS",0)~ THEN REPLY @4 GOTO 30
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 39
  SAY @60
  IF ~~ THEN REPLY @59 GOTO 3
  IF ~Global("CbValiantTellsStory","LOCALS",0)~ THEN REPLY @6 GOTO 4
  IF ~GlobalGT("CbValiantOpenedStore","LOCALS",0)~ THEN REPLY @4 GOTO 30
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 40
  SAY @61
  IF ~~ THEN REPLY @59 GOTO 3
  IF ~Global("CbValiantTellsStory","LOCALS",0)~ THEN REPLY @6 GOTO 4
  IF ~GlobalGT("CbValiantOpenedStore","LOCALS",0)~ THEN REPLY @4 GOTO 30
  IF ~~ THEN REPLY @14 GOTO 9
END

 //default response
IF ~!Global("CbStoleFromValiant","AR3636",1)~ THEN BEGIN 52
  SAY @42
  IF ~~ THEN REPLY @43 GOTO 3
  IF ~GlobalGT("CbValiantOpenedStore","LOCALS",0)~ THEN REPLY @4 GOTO 30
  IF ~~ THEN REPLY @44 GOTO 29
END


