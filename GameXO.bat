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
echo=�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�
echo=�^� %largegap%  %smallgap% �^�
goto row0

:anycolumn
echo=�^�   �       �       �       �                �%gap%�   �^�
for /l %%a in (%draw%,1,%draw%) do echo=�^�   �   !field%%a0!   �   !field%%a1!   ^
�   !field%%a2!   �                �!string%%a!�   �^�
echo=�^�   �       �       �       �                �%gap%�   �^�
set /a draw+=1
goto row%draw%

:column0
echo=�^�   � �^�^�^�^� �       �       �                �%gap%�   �^�
for /l %%b in (%draw%,1,%draw%) do echo=�^�   � � !field%%b0! � �   !field%%b1!   ^
�   !field%%b2!   �                �!string%%b!�   �^�
echo=�^�   � �^�^�^�^� �       �       �                �%gap%�   �^�
set /a draw+=1
goto row%draw%

:column1
echo=�^�   �       � �^�^�^�^� �       �                �%gap%�   �^�
for /l %%c in (%draw%,1,%draw%) do echo=�^�   �   !field%%c0!   � � !field%%c1! � ^
�   !field%%c2!   �                �!string%%c!�   �^�
echo=�^�   �       � �^�^�^�^� �       �                �%gap%�   �^�
set /a draw+=1
goto row%draw%

:column2
echo=�^�   �       �       � �^�^�^�^� �                �%gap%�   �^�
for /l %%d in (%draw%,1,%draw%) do echo=�^�   �   !field%%d0!   �   !field%%d1!   � ^
� !field%%d2! � �                �!string%%d!�   �^�
echo=�^�   �       �       � �^�^�^�^� �                �%gap%�   �^�
set /a draw+=1
goto row%draw%

:row0
echo=�^�   �^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�                ^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�   �^�
if %row%==0 (goto column%column%) else goto anycolumn

:row1
echo=�^�   �^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�                �%gap%�   �^�
if %row%==1 (goto column%column%) else goto anycolumn

:row2
echo=�^�   �^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�                �%gap%�   �^�
if %row%==2 (goto column%column%) else goto anycolumn

:row3
echo=�^�   �^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�                �%gap%�   �^�

echo=�^�%biggap%�                     �^�^�^�^�^�^�^�^�^�       �   �^�
set /a x=6*direction
for /l %%i in (%x%,1,%x%) do ^
echo=�^�%biggap%�  Current direction: � !directions:~%%i,6! �       �   �^�
echo=�^�%biggap%�                     �^�^�^�^�^�^�^�^�^�       �   �^�
echo=�^�   �^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�%gap%�   �^�
echo=�^�   �%gap%%gap%   �   �^�
for /l %%i in (%player%,1,%player%) do ^
echo=�^�   �  !player%%i! is on the move:%largegap%�   �^�
echo=�^�   �%gap%%gap%   �   �^�
echo=�^�   �^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�   �^�

echo=�^� %largegap%  %smallgap% �^�
echo=�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^A

rem ======================================================================================================

echo=%ANSI_Escape:~0,10%

rem We use backspaces to clear potential garbage from the previous moves.
for /l %%e in (%player%,1,%player%) do (
	for /l %%f in (0,1,2) do (
		if "!field%%f0!!field%%f1!!field%%f2!"=="!ox:~%%e,1!!ox:~%%e,1!!ox:~%%e,1!" (
			set /p answer="�^�   �  !otherplayer%%e! won^! Do you want to play another game ^(Y/N^)?%littlegap%%littlebackspace%"
			goto end
			)
		if "!field0%%f!!field1%%f!!field2%%f!"=="!ox:~%%e,1!!ox:~%%e,1!!ox:~%%e,1!" (
			set /p answer="�^�   �  !otherplayer%%e! won^! Do you want to play another game ^(Y/N^)?%littlegap%%littlebackspace%"
			goto end
			)
		)
	if "!field00!!field11!!field22!"=="!ox:~%%e,1!!ox:~%%e,1!!ox:~%%e,1!" (
		set /p answer="�^�   �  !otherplayer%%e! won^! Do you want to play another game ^(Y/N^)?%littlegap%%littlebackspace%"
		goto end
		)
	if "!field02!!field11!!field20!"=="!ox:~%%e,1!!ox:~%%e,1!!ox:~%%e,1!" (
		set /p answer="�^�   �  !otherplayer%%e! won^! Do you want to play another game ^(Y/N^)?%littlegap%%littlebackspace%"
		goto end
		)
	)
rem ECHO ! and SET /P ="!"<NUL do not work when delayed expansion is enabled.
rem ECHO ^^! and SET /P ="^!"<NUL should be used instead.
if !counter!==10 (
	set /p answer="�^�   �  Draw^! Do you want to play another game ^(Y/N^)?%smallgap%%smallbackspace%"
	goto end
	)

:loop
set "input="
for /l %%j in (%player%,1,%player%) do ^
set /p input="�^�   �  !player%%j! is on the move:%largegap%%largebackspace%"
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
