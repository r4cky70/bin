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
SET/A t=%x%-3
echo %x% Success Pulls / %t% Fails.
