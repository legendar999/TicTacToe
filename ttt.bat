@echo off

Rem ###############################################################

title TicTacToe game
Rem This is a TicTacToe game made by Andriy Gryban on 15.4.2024
Rem You can visit my website at https://gribanica.me
Rem Copying this code is allowed, but you must give me credit by linking to my website
Rem If you have any questions or corrections, you can contact me at
Rem Code was written with help of GitHub Copilot (for faster writting) and StackOverflow (for solving problems)
Rem I hope you enjoy the game!

Rem ###############################################################

@echo off

:menu
    cls
    call :settingsInt
    color 0%color%
    cls
    type menu.txt
    set /p idM=Enter number from menu:
    if "%idM%"=="1" (
        cls
        type instructions.txt
    ) else if "%idM%"=="2" (
        cls
        goto StartGame
    ) else if "%idM%"=="3" (
        cls
        goto settings
    ) else if "%idM%"=="4" (
        cls
        type aboutus.txt
    ) else (
        echo "Number is invalid, try again!"
        pause
        goto menu
    )
    goto menu

:StartGame 
    cls
    type tttSelectGameMode.txt
    set /p ScndPlayerIs=Enter 1 to play with PC and 2 to play with another player:
    if "%ScndPlayerIs%"=="1" (
        cls
        goto StartGameWithComputer
    ) else if "%ScndPlayerIs%"=="2" (
        cls
        goto StartGameWithPlayer
    ) else (
        echo "Number is invalid, try again!"
        pause
        goto startGame
    )
    set /a moveCounter=0
    
:StartGameWithComputer
    set won=0
    call :initialiseBoxes
    :makeAMove
    call :checkForWin
    if %won% NEQ 0 ( goto menu) else goto nadaljuj
    :nadaljuj
    set /p move=Enter move:
    if "%move%"=="1" (
        if "%box1%"=="X" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else if "%box1%"=="O" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else (
            set box1=X
        )
    ) else if "%move%"=="2" (
        if "%box2%"=="X" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else if "%box2%"=="O" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else (
            set box2=X
        )
    ) else if "%move%"=="3" (
        if "%box3%"=="X" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else if "%box3%"=="O" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else (
            set box3=X
        )
    ) else if "%move%"=="4" (
        if "%box4%"=="X" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else if "%box4%"=="O" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else (
            set box4=X
        )
    ) else if "%move%"=="5" (
        if "%box5%"=="X" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else if "%box5%"=="O" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else (
            set box5=X
        )
    ) else if "%move%"=="6" (
        if "%box6%"=="X" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else if "%box6%"=="O" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else (
            set box6=X
        )
    ) else if "%move%"=="7" (
        if "%box7%"=="X" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else if "%box7%"=="O" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else (
            set box7=X
        )
    ) else if "%move%"=="8" (
        if "%box8%"=="X" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else if "%box8%"=="O" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else (
            set box8=X
        )
    ) else if "%move%"=="9" (
        if "%box9%"=="X" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else if "%box9%"=="O" (
            echo "Box is already taken, try again!"
            pause
            goto makeAMove
        ) else (
            set box9=X
        )
    ) else if "%move%"=="r" (
        goto menu
    ) else (
        echo "Number is invalid, try again!"
        pause
        goto nadaljuj
    )
    set /a moveCounter+=1
    cls
    call :displayBoard
    call :checkForWin
    if %won% NEQ 0 ( goto menu)
    echo Computer is making a move...
    call :computerMoveRandom
    set /a moveCounter+=1
    goto makeAMove

:initialiseBoxes
    set box1=1
    set box2=2
    set box3=3
    set box4=4
    set box5=5
    set box6=6
    set box7=7
    set box8=8
    set box9=9
    set /a moveCounter=0
    call :displayBoard
    EXIT /B
:displayBoard
    type tttBoard.txt
    echo 		        #         #
    echo .		   %box1%    #    %box2%    #    %box3%
    echo 		        #         #
    echo 		###########################
    echo 		        #         #
    echo .		   %box4%    #    %box5%    #    %box6%
    echo 		        #         #
    echo 		###########################
    echo 		        #         #
    echo .		   %box7%    #    %box8%    #    %box9%
    echo 		        #         #
    echo.
    echo ___________________________________________________________________________________________________
    echo.
    EXIT /B
    pause      
:computerMoveRandom
    color 0a
    if speedMode=="on" (
        goto jmpHere)
    timeout /t 1 /nobreak > nul
    :jmpHere
    set /a computerMove=%random% %% 9 + 1
    if %computerMove%==1 (
        if %box1%==X (
            goto computerMoveRandom
        ) else if %box1%==O (
            goto computerMoveRandom
        ) else (
            set box1=O
        )
    ) else if %computerMove%==2 (
        if %box2%==X (
            goto computerMoveRandom
        ) else if %box2%==O (
            goto computerMoveRandom
        ) else (
            set box2=O
        )
    ) else if %computerMove%==3 (
        if %box3%==X (
            goto computerMoveRandom
        ) else if %box3%==O (
            goto computerMoveRandom
        ) else (
            set box3=O
        )
    ) else if %computerMove%==4 (
        if %box4%==X (
            goto computerMoveRandom
        ) else if %box4%==O (
            goto computerMoveRandom
        ) else (
            set box4=O
        )
    ) else if %computerMove%==5 (
        if %box5%==X (
            goto computerMoveRandom
        ) else if %box5%==O (
            goto computerMoveRandom
        ) else (
            set box5=O
        )
    ) else if %computerMove%==6 (
        if %box6%==X (
            goto computerMoveRandom
        ) else if %box6%==O (
            goto computerMoveRandom
        ) else (
            set box6=O
        )
    ) else if %computerMove%==7 (
        if %box7%==X (
            goto computerMoveRandom
        ) else if %box7%==O (
            goto computerMoveRandom
        ) else (
            set box7=O
        )
    ) else if %computerMove%==8 (
        if %box8%==X (
            goto computerMoveRandom
        ) else if %box8%==O (
            goto computerMoveRandom
        ) else (
            set box8=O
        )
    ) else if %computerMove%==9 (
        if %box9%==X (
            goto computerMoveRandom
        ) else if %box9%==O (
            goto computerMoveRandom
        ) else (
            set box9=O
        )
    )
    cls
    call :displayBoard
    color 07
    EXIT /B
:checkForWin
:checkForWin

    if "%box1%"=="X" if "%box2%"=="X" if "%box3%"=="X" goto :XWins
    if "%box4%"=="X" if "%box5%"=="X" if "%box6%"=="X" goto :XWins
    if "%box7%"=="X" if "%box8%"=="X" if "%box9%"=="X" goto :XWins

    if "%box1%"=="O" if "%box2%"=="O" if "%box3%"=="O" goto :OWins
    if "%box4%"=="O" if "%box5%"=="O" if "%box6%"=="O" goto :OWins
    if "%box7%"=="O" if "%box8%"=="O" if "%box9%"=="O" goto :OWins

    if "%box1%"=="X" if "%box4%"=="X" if "%box7%"=="X" goto :XWins
    if "%box2%"=="X" if "%box5%"=="X" if "%box8%"=="X" goto :XWins
    if "%box3%"=="X" if "%box6%"=="X" if "%box9%"=="X" goto :XWins

    if "%box1%"=="O" if "%box4%"=="O" if "%box7%"=="O" goto :OWins
    if "%box2%"=="O" if "%box5%"=="O" if "%box8%"=="O" goto :OWins
    if "%box3%"=="O" if "%box6%"=="O" if "%box9%"=="O" goto :OWins

    if "%box1%"=="X" if "%box5%"=="X" if "%box9%"=="X" goto :XWins
    if "%box3%"=="X" if "%box5%"=="X" if "%box7%"=="X" goto :XWins

    if "%box1%"=="O" if "%box5%"=="O" if "%box9%"=="O" goto :OWins
    if "%box3%"=="O" if "%box5%"=="O" if "%box7%"=="O" goto :OWins

    if %moveCounter%==9 goto :Draw

    exit /b

    :XWins
    set won=X
    echo Player X wins!
    color 0a
    timeout /t 1 /nobreak > nul
    color 0b
    timeout /t 1 /nobreak > nul
    color 0c
    timeout /t 1 /nobreak > nul
    color 0d
    timeout /t 1 /nobreak > nul
    color 0a
    timeout /t 1 /nobreak > nul
    color 07
    exit /b

    :OWins
    set won=O
    color 0c
    echo Computer wins!
    timeout /t 3 /nobreak > nul
    color 07
    exit /b

    :Draw
    echo It's a draw!
    set won=D
    exit /b

:error
    echo error
    pause
    goto error

:eof
    echo the end
    pause
    exit

:settings
color 0%color%
del settingsInt.txt
echo botDificulty=%botDificulty% >> settingsInt.txt
echo speedMode=%speedMode%>> settingsInt.txt
echo color=%color% >> settingsInt.txt
cls
type settings.txt
echo    1... Bot difficulty    [ %botDificulty% /2 ]
echo    2... Clear all data    
echo    3... SpeedMode         [ %speedMode% ]
echo    4... Colour theme      [ %color% ]
echo    5... Back to menu
echo.

set /p idS=Enter number from menu:
if "%idS%"=="1" (
    if %botDificulty%==2 (
        set /a botDificulty=1
    ) else (
        set /a botDificulty=2
    )
    goto settings
) else if "%idS%"=="2" (
    cls
    type settings.txt
    echo Clearing all data...
    timeout /t 1 /nobreak > nul
    del settingsInt.txt
    echo botDificulty=1 > settingsInt.txt
    echo speedMode=off>> settingsInt.txt
    echo color=7 >> settingsInt.txt
    cls
    type settings.txt
    echo Data cleared, settings reset!
    timeout /t 1 /nobreak > nul
    call :settingsInt
    goto settings
) else if "%idS%"=="3" (
    if "%speedMode%"=="off" (
        set "speedMode=on"
    ) else (
        set "speedMode=off"
    ) 
    goto settings
) else if "%idS%"=="4" (
    set /a color+= 1
    if %color% EQU 9 (
        set /a color=0
    )
    goto settings
) else if "%idS%"=="5" (
    goto menu
) else (
    echo Number is invalid, try again!
    pause
    goto settings
)

:settingsInt
rem set variables from settingsInt.txt in format variable=value
for /f "tokens=1,2 delims==" %%a in (settingsInt.txt) do set %%a=%%b
echo %botDificulty%
echo %speedMode%
echo %color%
@echo off
exit /b
