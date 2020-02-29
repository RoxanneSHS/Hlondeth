BEGIN ~CBGONAST~

IF ~Global("CbRynnsQuest","GLOBAL",3)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~SetGlobal("CbRynnsQuest","GLOBAL",4)
EraseJournalEntry(@908)
AddJournalEntry(@907,QUEST)
EscapeArea()~ EXIT
END

IF ~Global("CbRynnsQuest","GLOBAL",5)
InMyArea("RYNNPC11")
~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @6
IF ~InMyArea("RYNNPC11")~ THEN DO ~GiveItemCreate("CBHLGATE",LastTalkedToBy(Myself),1,0,0)
EraseJournalEntry(@909)
AddJournalEntry(@9010,QUEST)
SetGlobal("CbRynnsQuest","GLOBAL",6)
ActionOverride("RYNNPC11",SetDialog("RYNN"))
ActionOverride("RYNNPC11",StartDialogNoSet(Player1))
EscapeArea()~ EXIT
END
