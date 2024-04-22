@echo off

rem We redirect output to NUL device to avoide displaying the message "Active code page: 437".
chcp 437>NUL

setlocal ENABLEDELAYEDEXPANSION

rem We wrap assignments into quotes to ensure that there are no hidden spaces at the end of line.
set "xo=XO" & set "ox=OX"
set "player0=1st player"
set "player1=2nd player"
set "otherplayer0=%player1%"
set "otherplayer1=%player0%"
set "increment=3816"
set "directions= Down  Left Right   Up  "
set "string0=  Press RETURN or ENTER to move.      "
set "string1=  Input D/L/R/U to change direction.  "
set "string2=  Input X/O to play the move.         "
set "littlegap=                      "
set "smallgap=                                "
set "gap=                                      "
set "biggap=                                            "
set "largegap=                                                   "
set "littlebackspace="
set "smallbackspace="
rem Quoted assignment cannot be broken into two lines.
set largebackspace=^
& rem
rem A is ANSI Escape Sequence that moves cursor up in the console.
set "ANSI_Escape=AAAAAAAAAAAAAAAAAAAA"

:repeat
rem We end each line with & rem to ensure that there are no additional invisible spaces.
set field00= & set field01= & set field02= & rem
set field10= & set field11= & set field12= & rem
set field20= & set field21= & set field22= & rem

set /a counter=1
set /a player=0
set /a direction=2
set /a field=0
set /a row=0
set /a column=0
set /a draw=0

cls
echo=Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^
Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^
Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^
Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û
echo=Û^Û %largegap%  %smallgap% Û^Û
goto row0

:anycolumn
echo=Û^Û   º       º       º       º                ³%gap%³   Û^Û
for /l %%a in (%draw%,1,%draw%) do echo=Û^Û   º   !field%%a0!   º   !field%%a1!   ^
º   !field%%a2!   º                ³!string%%a!³   Û^Û
echo=Û^Û   º       º       º       º                ³%gap%³   Û^Û
set /a draw+=1
goto row%draw%

:column0
echo=Û^Û   º Ú^Ä^Ä^Ä^¿ º       º       º                ³%gap%³   Û^Û
for /l %%b in (%draw%,1,%draw%) do echo=Û^Û   º ³ !field%%b0! ³ º   !field%%b1!   ^
º   !field%%b2!   º                ³!string%%b!³   Û^Û
echo=Û^Û   º À^Ä^Ä^Ä^Ù º       º       º                ³%gap%³   Û^Û
set /a draw+=1
goto row%draw%

:column1
echo=Û^Û   º       º Ú^Ä^Ä^Ä^¿ º       º                ³%gap%³   Û^Û
for /l %%c in (%draw%,1,%draw%) do echo=Û^Û   º   !field%%c0!   º ³ !field%%c1! ³ ^
º   !field%%c2!   º                ³!string%%c!³   Û^Û
echo=Û^Û   º       º À^Ä^Ä^Ä^Ù º       º                ³%gap%³   Û^Û
set /a draw+=1
goto row%draw%

:column2
echo=Û^Û   º       º       º Ú^Ä^Ä^Ä^¿ º                ³%gap%³   Û^Û
for /l %%d in (%draw%,1,%draw%) do echo=Û^Û   º   !field%%d0!   º   !field%%d1!   º ^
³ !field%%d2! ³ º                ³!string%%d!³   Û^Û
echo=Û^Û   º       º       º À^Ä^Ä^Ä^Ù º                ³%gap%³   Û^Û
set /a draw+=1
goto row%draw%

:row0
echo=Û^Û   É^Í^Í^Í^Í^Í^Í^Í^Ë^Í^Í^Í^Í^Í^Í^Í^Ë^Í^Í^Í^Í^
Í^Í^Í^»                ^Ú^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^
Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^¿   Û^Û
if %row%==0 (goto column%column%) else goto anycolumn

:row1
echo=Û^Û   Ì^Í^Í^Í^Í^Í^Í^Í^Î^Í^Í^Í^Í^Í^Í^Í^
Î^Í^Í^Í^Í^Í^Í^Í^¹                ³%gap%³   Û^Û
if %row%==1 (goto column%column%) else goto anycolumn

:row2
echo=Û^Û   Ì^Í^Í^Í^Í^Í^Í^Í^Î^Í^Í^Í^Í^Í^Í^Í^
Î^Í^Í^Í^Í^Í^Í^Í^¹                ³%gap%³   Û^Û
if %row%==2 (goto column%column%) else goto anycolumn

:row3
echo=Û^Û   È^Í^Í^Í^Í^Í^Í^Í^Ê^Í^Í^Í^Í^Í^Í^Í^
Ê^Í^Í^Í^Í^Í^Í^Í^¼                ³%gap%³   Û^Û

echo=Û^Û%biggap%³                     Ú^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^¿       ³   Û^Û
set /a x=6*direction
for /l %%i in (%x%,1,%x%) do ^
echo=Û^Û%biggap%³  Current direction: ³ !directions:~%%i,6! ³       ³   Û^Û
echo=Û^Û%biggap%³                     À^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ù       ³   Û^Û
echo=Û^Û   Ú^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^
Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ù%gap%³   Û^Û
echo=Û^Û   ³%gap%%gap%   ³   Û^Û
for /l %%i in (%player%,1,%player%) do ^
echo=Û^Û   ³  !player%%i! is on the move:%largegap%³   Û^Û
echo=Û^Û   ³%gap%%gap%   ³   Û^Û
echo=Û^Û   À^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^
Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^
Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^
Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ù   Û^Û

echo=Û^Û %largegap%  %smallgap% Û^Û
echo=Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^
Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^
Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^
Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^Û^A

rem ======================================================================================================

echo=%ANSI_Escape:~0,10%

rem We use backspaces to clear potential garbage from the previous moves.
for /l %%e in (%player%,1,%player%) do (
	for /l %%f in (0,1,2) do (
		if "!field%%f0!!field%%f1!!field%%f2!"=="!ox:~%%e,1!!ox:~%%e,1!!ox:~%%e,1!" (
			set /p answer="Û^Û   ³  !otherplayer%%e! won^! Do you want to play another game ^(Y/N^)?%littlegap%%littlebackspace%"
			goto end
			)
		if "!field0%%f!!field1%%f!!field2%%f!"=="!ox:~%%e,1!!ox:~%%e,1!!ox:~%%e,1!" (
			set /p answer="Û^Û   ³  !otherplayer%%e! won^! Do you want to play another game ^(Y/N^)?%littlegap%%littlebackspace%"
			goto end
			)
		)
	if "!field00!!field11!!field22!"=="!ox:~%%e,1!!ox:~%%e,1!!ox:~%%e,1!" (
		set /p answer="Û^Û   ³  !otherplayer%%e! won^! Do you want to play another game ^(Y/N^)?%littlegap%%littlebackspace%"
		goto end
		)
	if "!field02!!field11!!field20!"=="!ox:~%%e,1!!ox:~%%e,1!!ox:~%%e,1!" (
		set /p answer="Û^Û   ³  !otherplayer%%e! won^! Do you want to play another game ^(Y/N^)?%littlegap%%littlebackspace%"
		goto end
		)
	)
rem ECHO ! and SET /P ="!"<NUL do not work when delayed expansion is enabled.
rem ECHO ^^! and SET /P ="^!"<NUL should be used instead.
if !counter!==10 (
	set /p answer="Û^Û   ³  Draw^! Do you want to play another game ^(Y/N^)?%smallgap%%smallbackspace%"
	goto end
	)

:loop
set "input="
for /l %%j in (%player%,1,%player%) do ^
set /p input="Û^Û   ³  !player%%j! is on the move:%largegap%%largebackspace%"
if "%input:d=D%"=="D" (set /a direction=0 & set "input=") ^
else if "%input:l=L%"=="L" (set /a direction=1 & set "input=") ^
else if "%input:r=R%"=="R" (set /a direction=2 & set "input=") ^
else if "%input:u=U%"=="U" (set /a direction=3 & set "input=")
if "%input%"=="" (
	for /l %%k in (%direction%,1,%direction%) do set /a field+=!increment:~%%k,1!
	set /a y=field/9
	set /a field-=9*y
	set /a row=field/3
	set /a column=field-3*row
	set /a draw=0
	echo=%ANSI_Escape:~0,40%
	goto row0
	)
set "input=%input:x=X%"
set "input=%input:o=O%"
for /l %%l in (%player%,1,%player%) do (
	for /l %%m in (%row%,1,%row%) do (
		for /l %%n in (%column%,1,%column%) do (
			rem The following condition emulates logical conjunction.
			if "%input%.!field%%m%%n!"=="!xo:~%%l,1!. " (
				set field%%m%%n=%input%
				set /a counter+=1
				set /a player*=-1
				set /a player+=1
				set /a draw=0
				echo=%ANSI_Escape:~0,40%
				goto row0
				)
			)
		)
	)
rem The sound of bell indicates error.
echo=%ANSI_Escape:~0,4%
goto loop

:end
rem The following condition emulates logical disjunction.
if "%answer:y=Y%"=="Y" (
	set "answer="
	goto repeat
	)
echo=
echo=
echo=
echo=
