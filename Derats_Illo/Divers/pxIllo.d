BEGIN ~PxIllo~

IF ~OR(3)
	AreaCheck("AR0305")
	AreaCheck("AR2100")
	AreaCheck("OH8100")~ THEN BEGIN intro SAY @501
	IF ~Global("PxIllo","LOCALS",0)~ THEN REPLY @502 DO ~SetGlobal("PxIllo","LOCALS",1)~ GOTO Tatoo
	IF ~~ THEN REPLY @503 DO ~StartStore("pxillo",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @504 EXIT
END

IF ~~ THEN BEGIN Tatoo SAY @505
	IF ~~ THEN REPLY @506 GOTO magiques
	IF ~~ THEN REPLY @507 GOTO temps
	IF ~~ THEN REPLY @508 GOTO magiques
END

IF ~~ THEN BEGIN magiques SAY @509
	IF ~~ THEN REPLY @5011 DO ~StartStore("pxillo",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @5012 EXIT
END

IF ~~ THEN BEGIN temps SAY @5010
	IF ~~ THEN REPLY @5011 DO ~StartStore("pxillo",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @5012 EXIT
END
