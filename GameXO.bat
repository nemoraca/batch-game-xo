@echo off

rem We redirect output to NUL device to avoide displaying the message "Active code page: 437".
chcp 437>NUL

setlocal ENABLEDELAYEDEXPANSION

rem We end each line with & rem to ensure there are no additional invisible spaces.
set a11= & set a12= & set a13= & rem
set a21= & set a22= & set a23= & rem
set a31= & set a32= & set a33= & rem

rem We wrap the assignments in quotes to ensure there are no additional invisible spaces.
set "xo=*xo" & set "ox=*ox"
set "player1=1st player"
set "player2=2nd player"
set "otherplayer1=%player2%"
set "otherplayer2=%player1%"

set /a brojac=0

:loop
for /l %%i in (1,1,2) do (
	set /a brojac+=1
	rem The following batch script code is best viewed in Notepad++ under UTF-8 encoding.
	rem We draw the playing table using graphical extended ASCII characters from Code Page 850.
	rem We separate graphical ASCII characters with the escape character (caret) to prevent
	rem certain graphical symbols (according to UTF-8) from being displayed in Notepad++.
	cls
	rem ========================================================================================
	echo=
	echo=   �^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�
	echo=   �                                                             �
	echo=   �    �^�^�^�^�^�^�^�^�^�^�^�^�                     ^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�    �
	echo=   �    � !a13! � !a23! � !a33! �                     ^
�^(1,3^)�^(2,3^)�^(3,3^)�    �
	echo=   �    �^�^�^�^�^�^�^�^�^�^�^�^�                     ^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�    �
	echo=   �    � !a12! � !a22! � !a32! �                     ^
�^(1,2^)�^(2,2^)�^(3,2^)�    �
	echo=   �    �^�^�^�^�^�^�^�^�^�^�^�^�                     ^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�    �
	echo=   �    � !a11! � !a21! � !a31! �                     ^
�^(1,1^)�^(2,1^)�^(3,1^)�    �
	echo=   �    �^�^�^�^�^�^�^�^�^�^�^�^�                     ^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�    �
	echo=   �                                                             �
	echo=   �^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^
�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�^�
	echo=
	rem ========================================================================================

	for /l %%l in (1,1,3) do (
		if "!a%%l1!!a%%l2!!a%%l3!"=="!ox:~%%i,1!!ox:~%%i,1!!ox:~%%i,1!" (
			echo=   !otherplayer%%i! won^^!
			goto end
			)
		if "!a1%%l!!a2%%l!!a3%%l!"=="!ox:~%%i,1!!ox:~%%i,1!!ox:~%%i,1!" (
			echo=   !otherplayer%%i! won^^!
			goto end
			)
		)
	if "!a11!!a22!!a33!"=="!ox:~%%i,1!!ox:~%%i,1!!ox:~%%i,1!" (
		echo=   !otherplayer%%i! won^^!
		goto end
		)
	if "!a13!!a22!!a31!"=="!ox:~%%i,1!!ox:~%%i,1!!ox:~%%i,1!" (
		echo=   !otherplayer%%i! won^^!
		goto end
		)
	rem When delayed expansion is enabled, ECHO ! does not work. ECHO ^^! should be used instead.
	if !brojac!==10 echo=   Draw^^! & goto end

	rem We have to use escape sequences ^( and ^) because we are in a FOR loop block.
	echo=   !player%%i!: ^(X,Y^)
	rem This is a dummy line, to prevent the occasional odd blinking of the output of the next line.
	set /p =""<NUL
	rem We start the strings with BS control character to prevent next 3 spaces from being ignored.
	set /p x="   X = "
	set /p =""<NUL
	set /p y="   Y = "
	for /l %%j in (!x!,1,!x!) do (
		for /l %%k in (!y!,1,!y!) do (
			if "!a%%j%%k!"==" " (set a%%j%%k=!xo:~%%i,1!) else (
				echo=
				rem The sound of bell indicates error.
				echo=   Error^^!
				goto end
				)
			)
		)
	)
goto loop
:end
echo=
rem This is a dummy line, to prevent the occasional odd blinking of the output of the next line.
set /p =""<NUL
rem We do not use ECHO because it moves cursor to the next line.
rem We start the string with BS control character to prevent next 3 spaces from being ignored.
set /p ="   Press any key to end the game..."<NUL
rem We redirect output to NUL device to prevent message "Press any key to continue..." from being displayed.
pause>NUL
echo=
