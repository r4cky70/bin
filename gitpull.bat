@echo off

cd AA
git pull
SET x=0
IF %ERRORLEVEL% EQU 0 (SET /A x+=1)
cd ../SolvedProblems/
git pull
IF %ERRORLEVEL% EQU 0 (SET /A x+=1)
cd ../Algorithms/
git pull 
IF %ERRORLEVEL% EQU 0 (SET /A x+=1)
cd ../bin/
git pull
IF %ERRORLEVEL% EQU 0 (SET /A x+=1)
cd ../
SET/A t=%x%-4
echo %x% Success Pulls / %t% Fails.
