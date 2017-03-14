Route9Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route9TrainerHeaders
	ld de, Route9ScriptPointers
	ld a, [wRoute9CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute9CurScript], a
	ret

Route9ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

Route9TextPointers:
	dw Route9Text1
	dw Route9TextAJ
	dw Route9Text3
	dw Route9Text4
	dw Route9Text5
	dw Route9Text6
	dw Route9Text7
	dw Route9Text8
	dw Route9Text9
	dw PickUpItemText
	dw Route9Text11

Route9TrainerHeaders:
Route9TrainerHeader0:
	dbEventFlagBit EVENT_BEAT_ROUTE_9_TRAINER_0
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_9_TRAINER_0
	dw Route9BattleText1 ; TextBeforeBattle
	dw Route9AfterBattleText1 ; TextAfterBattle
	dw Route9EndBattleText1 ; TextEndBattle
	dw Route9EndBattleText1 ; TextEndBattle

Route9TrainerHeader2:
	dbEventFlagBit EVENT_BEAT_ROUTE_9_TRAINER_2
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_9_TRAINER_2
	dw Route9BattleTextAJ ; TextBeforeBattle
	dw Route9AfterBattleTextAJ ; TextAfterBattle
	dw Route9EndBattleTextAJ ; TextEndBattle
	dw Route9EndBattleTextAJ ; TextEndBattle

Route9TrainerHeader3:
	dbEventFlagBit EVENT_BEAT_ROUTE_9_TRAINER_3
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_9_TRAINER_3
	dw Route9BattleText3 ; TextBeforeBattle
	dw Route9AfterBattleText3 ; TextAfterBattle
	dw Route9EndBattleText3 ; TextEndBattle
	dw Route9EndBattleText3 ; TextEndBattle

Route9TrainerHeader4:
	dbEventFlagBit EVENT_BEAT_ROUTE_9_TRAINER_4
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_9_TRAINER_4
	dw Route9BattleText4 ; TextBeforeBattle
	dw Route9AfterBattleText4 ; TextAfterBattle
	dw Route9EndBattleText4 ; TextEndBattle
	dw Route9EndBattleText4 ; TextEndBattle

Route9TrainerHeader5:
	dbEventFlagBit EVENT_BEAT_ROUTE_9_TRAINER_5
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_9_TRAINER_5
	dw Route9BattleText5 ; TextBeforeBattle
	dw Route9AfterBattleText5 ; TextAfterBattle
	dw Route9EndBattleText5 ; TextEndBattle
	dw Route9EndBattleText5 ; TextEndBattle

Route9TrainerHeader6:
	dbEventFlagBit EVENT_BEAT_ROUTE_9_TRAINER_6
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_9_TRAINER_6
	dw Route9BattleText6 ; TextBeforeBattle
	dw Route9AfterBattleText6 ; TextAfterBattle
	dw Route9EndBattleText6 ; TextEndBattle
	dw Route9EndBattleText6 ; TextEndBattle

Route9TrainerHeader7:
	dbEventFlagBit EVENT_BEAT_ROUTE_9_TRAINER_7
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_9_TRAINER_7
	dw Route9BattleText7 ; TextBeforeBattle
	dw Route9AfterBattleText7 ; TextAfterBattle
	dw Route9EndBattleText7 ; TextEndBattle
	dw Route9EndBattleText7 ; TextEndBattle

Route9TrainerHeader8:
	dbEventFlagBit EVENT_BEAT_ROUTE_9_TRAINER_8, 1
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_9_TRAINER_8, 1
	dw Route9BattleText8 ; TextBeforeBattle
	dw Route9AfterBattleText8 ; TextAfterBattle
	dw Route9EndBattleText8 ; TextEndBattle
	dw Route9EndBattleText8 ; TextEndBattle

Route9TrainerHeader9:
	dbEventFlagBit EVENT_BEAT_ROUTE_9_TRAINER_9, 1
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_9_TRAINER_9, 1
	dw Route9BattleText9 ; TextBeforeBattle
	dw Route9AfterBattleText9 ; TextAfterBattle
	dw Route9EndBattleText9 ; TextEndBattle
	dw Route9EndBattleText9 ; TextEndBattle

	db $ff

Route9Text1:
	TX_ASM
	ld hl, Route9TrainerHeader0
	jr Route9TalkToTrainer

Route9TextAJ:
	TX_ASM
	ld hl, Route9TrainerHeader2
	jr Route9TalkToTrainer

Route9Text3:
	TX_ASM
	ld hl, Route9TrainerHeader3
	jr Route9TalkToTrainer

Route9Text4:
	TX_ASM
	ld hl, Route9TrainerHeader4
	jr Route9TalkToTrainer

Route9Text5:
	TX_ASM
	ld hl, Route9TrainerHeader5
	jr Route9TalkToTrainer

Route9Text6:
	TX_ASM
	ld hl, Route9TrainerHeader6
	jr Route9TalkToTrainer

Route9Text7:
	TX_ASM
	ld hl, Route9TrainerHeader7
	jr Route9TalkToTrainer

Route9Text8:
	TX_ASM
	ld hl, Route9TrainerHeader8
	jr Route9TalkToTrainer

Route9Text9:
	TX_ASM
	ld hl, Route9TrainerHeader9
Route9TalkToTrainer:
	call TalkToTrainer
	jp TextScriptEnd

Route9BattleText1:
	TX_FAR _Route9BattleText1
	db "@"

Route9EndBattleText1:
	TX_FAR _Route9EndBattleText1
	db "@"

Route9AfterBattleText1:
	TX_FAR _Route9AfterBattleText1
	db "@"

Route9BattleTextAJ:
	TX_FAR _Route9BattleTextAJ
	db "@"

Route9EndBattleTextAJ:
	TX_FAR _Route9EndBattleTextAJ
	db "@"

Route9AfterBattleTextAJ:
	TX_FAR _Route9AfterBattleTextAJ
	db "@"

Route9BattleText3:
	TX_FAR _Route9BattleText3
	db "@"

Route9EndBattleText3:
	TX_FAR _Route9EndBattleText3
	db "@"

Route9AfterBattleText3:
	TX_FAR _Route9AfterBattleText3
	db "@"

Route9BattleText4:
	TX_FAR _Route9BattleText4
	db "@"

Route9EndBattleText4:
	TX_FAR _Route9EndBattleText4
	db "@"

Route9AfterBattleText4:
	TX_FAR _Route9AfterBattleText4
	db "@"

Route9BattleText5:
	TX_FAR _Route9BattleText5
	db "@"

Route9EndBattleText5:
	TX_FAR _Route9EndBattleText5
	db "@"

Route9AfterBattleText5:
	TX_FAR _Route9AfterBattleText5
	db "@"

Route9BattleText6:
	TX_FAR _Route9BattleText6
	db "@"

Route9EndBattleText6:
	TX_FAR _Route9EndBattleText6
	db "@"

Route9AfterBattleText6:
	TX_FAR _Route9AfterBattleText6
	db "@"

Route9BattleText7:
	TX_FAR _Route9BattleText7
	db "@"

Route9EndBattleText7:
	TX_FAR _Route9EndBattleText7
	db "@"

Route9AfterBattleText7:
	TX_FAR _Route9AfterBattleText7
	db "@"

Route9BattleText8:
	TX_FAR _Route9BattleText8
	db "@"

Route9EndBattleText8:
	TX_FAR _Route9EndBattleText8
	db "@"

Route9AfterBattleText8:
	TX_FAR _Route9AfterBattleText8
	db "@"

Route9BattleText9:
	TX_FAR _Route9BattleText9
	db "@"

Route9EndBattleText9:
	TX_FAR _Route9EndBattleText9
	db "@"

Route9AfterBattleText9:
	TX_FAR _Route9AfterBattleText9
	db "@"

Route9Text11:
	TX_FAR _Route9Text11
	db "@"
