*/ MR.DO.BANK1(PAL) LAST EDIT:9/15/83
********************************
* FINAL LISTING FOR ATARI VCS "MR. DO!"
* PAL VERSION.... 9/11/83
* BY ED ENGLISH OF INDIVIDEO,INC
********************************
                         ;
* 1ST 4K BANK OF MR.DO! ->
                         ;
* THIS IS THE MAIN FILE FOR BANK1
* OF MR.DO!
********************************
TOP2     =    $3012
BEGORG   =    $2000
BEGOBJ   =    $8004
                         ;
         LST  CN
********************************
* ATARI 2600 EQUATE FILE       *
********************************
         PUT  MR.DO.VCSDEF1
         PAG
********************************
* RAM DEFINITION & EQUATES     *
********************************
         PUT  MR.DO.EQU
         PUT  MR.DO.SOUND EQUATES
                        ;
         ORG  BEGORG-4
         DA   BEGORG
         DA   END
         PAG
********************************
* POWERUP INITIALIZATION       *
********************************
         PUT  MR.DO.INIT
         PAG
********************************
* BOTTOM VERTICAL INTERVAL     *
********************************
         PUT  MR.DO.BOTVI
         PAG
********************************
* APPLE CONTROL CODE           *
********************************
         PUT  MR.DO.APPLE
         PAG
********************************
* VERTICAL RETRACE CODE        *
********************************
         PUT  MR.DO.VINT
         PAG
********************************
* JOYSTICK & SWITCH READING    *
********************************
         PUT  MR.DO.JOYSTICK
         PAG
********************************
* POWERBALL CONTROL CODE       *
********************************
         PUT MR.DO.PWRBALL
         PAG
********************************
* BANK SWITCH FOR REST OF TOPVI*
********************************
         JMP  TOPSW
         PAG
********************************
* BANK1 SUBROUTINES
********************************
         PUT  MR.DO.SUBS1
         PAG
         PUT  MR.DO.FIELD.RTNS
         PAG
         OBJ  BEGOBJ+$E07
         ORG  BEGORG+$E07
********************************
* ORCHARD DATA FILES
********************************
         PUT  MR.DO.FIELD DATA
         PAG
         OBJ  BEGOBJ+$F00
         ORG  BEGORG+$F00
********************************
* CHERRY DATA TABLES
********************************
         PUT  MR.DO.CHERRY TABLES
         PAG
         OBJ  BEGOBJ+$FFC
         ORG  BEGORG+$FFC
         DA   PWRUP
END