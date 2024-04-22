@echo off

rem We redirect output to NUL device to avoide displaying the message "Active code page: 437".
chcp 437>NUL

setlocal ENABLEDELAYEDEXPANSION

rem We wrap the assignments in quotes to ensure there are no additional invisible spaces.
set "xo=*xo" & set "ox=*ox"
set "player1=1st player"
set "player2=2nd player"
set "otherplayer1=%player2%"
set "otherplayer2=%player1%"

:repeat
rem We end each line with & rem to ensure that there are no additional invisible spaces.
set a11= & set a12= & set a13= & rem
set a21= & set a22= & set a23= & rem
set a31= & set a32= & set a33= & rem

set /a brojac=0

:loop
for /l %%i in (1,1,2) do (
	set /a brojac+=1
	rem The following batch script code is best viewed in Notepad++ under UTF-8 encoding.
	rem We draw the playing table using graphical extended ASCII characters from Code Page 850.
	rem We separate graphical ASCII characters with the escape character (caret) to prevent
	rem certain symbols (according to UTF-8) from being displayed in Notepad++.
	cls
	rem ========================================================================================
	echo=
	echo=   Ú^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^
Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^
Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^¿
	echo=   ³                                                             ³
	echo=   ³    É^Í^Í^Í^Ë^Í^Í^Í^Ë^Í^Í^Í^»                     ^
É^Í^Í^Í^Í^Í^Ë^Í^Í^Í^Í^Í^Ë^Í^Í^Í^Í^Í^»    ³
	echo=   ³    º !a13! º !a23! º !a33! º                     ^
º^(1,3^)º^(2,3^)º^(3,3^)º    ³
	echo=   ³    Ì^Í^Í^Í^Î^Í^Í^Í^Î^Í^Í^Í^¹                     ^
Ì^Í^Í^Í^Í^Í^Î^Í^Í^Í^Í^Í^Î^Í^Í^Í^Í^Í^¹    ³
	echo=   ³    º !a12! º !a22! º !a32! º                     ^
º^(1,2^)º^(2,2^)º^(3,2^)º    ³
	echo=   ³    Ì^Í^Í^Í^Î^Í^Í^Í^Î^Í^Í^Í^¹                     ^
Ì^Í^Í^Í^Í^Í^Î^Í^Í^Í^Í^Í^Î^Í^Í^Í^Í^Í^¹    ³
	echo=   ³    º !a11! º !a21! º !a31! º                     ^
º^(1,1^)º^(2,1^)º^(3,1^)º    ³
	echo=   ³    È^Í^Í^Í^Ê^Í^Í^Í^Ê^Í^Í^Í^¼                     ^
È^Í^Í^Í^Í^Í^Ê^Í^Í^Í^Í^Í^Ê^Í^Í^Í^Í^Í^¼    ³
	echo=   ³                                                             ³
	echo=   À^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^
Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^
Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ù

	echo=

	echo=   Ú^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^
Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^
Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^¿
	echo=   ³                                                             ³
	echo=   ³                                                             ³
	echo=   ³                                                             ³
	echo=   ³                                                             ³
	echo=   ³                                                             ³
	echo=   ³                                                             ³
	echo=   ³                                                             ³
	echo=   ³                                                             ³
	echo=   ³                                                             ³
	echo=   À^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^
Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^
Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ä^Ù^A
	rem A is ANSI Escape Sequence that moves cursor up.
	echo=AAAAAAAAA
	rem ========================================================================================

	for /l %%l in (1,1,3) do (
		if "!a%%l1!!a%%l2!!a%%l3!"=="!ox:~%%i,1!!ox:~%%i,1!!ox:~%%i,1!" (
			echo=   ³    !otherplayer%%i! won^^!
			goto end
			)
		if "!a1%%l!!a2%%l!!a3%%l!"=="!ox:~%%i,1!!ox:~%%i,1!!ox:~%%i,1!" (
			echo=   ³    !otherplayer%%i! won^^!
			goto end
			)
		)
	if "!a11!!a22!!a33!"=="!ox:~%%i,1!!ox:~%%i,1!!ox:~%%i,1!" (
		echo=   ³    !otherplayer%%i! won^^!
		goto end
		)
	if "!a13!!a22!!a31!"=="!ox:~%%i,1!!ox:~%%i,1!!ox:~%%i,1!" (
		echo=   ³    !otherplayer%%i! won^^!
		goto end
		)
	rem When delayed expansion is enabled, ECHO ! does not work. ECHO ^^! should be used instead.
	if !brojac!==10 echo=   ³    Draw^^! & goto end

	rem We have to use escape sequences ^( and ^) because we are in a FOR loop block.
	echo=   ³    !player%%i!: ^(X,Y^)
	rem This is a dummy line, to prevent the occasional odd blinking of the output of the next line.
	set /p =""<NUL
	rem We start the strings with BS control character to prevent next 3 spaces from being ignored.
	set /p x="   ³    X = "
	set /p =""<NUL
	set /p y="   ³    Y = "
	for /l %%j in (!x!,1,!x!) do (
		for /l %%k in (!y!,1,!y!) do (
			if "!a%%j%%k!"==" " (set a%%j%%k=!xo:~%%i,1!) else (
				echo=
				rem The sound of bell indicates error.
				echo=   ³    Error^^!
				goto end
				)
			)
		)
	)
goto loop

:end
echo=
rem We start the string with BS control character to prevent next 3 spaces from being ignored.
set /p answer="   ³    Do you want to play another game (Y/N)? "
rem The following condition emulates logical disjunction.
if "%answer:Y=y%"=="y" goto repeat
echo=
echo=
