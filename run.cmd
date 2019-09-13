@echo off

echo Compilling %1.cpp...
IF [%2] == [] (
  g++ %1.cpp -std=c++14 -Wall -Wextra -Wfatal-errors -Wl,--stack=268435456 -o sla
) ELSE (   
  g++ %1.cpp -std=c++14 -Wall -Wextra -Wfatal-errors -Wl,--stack=268435456 -DLOCAL -o sla
)
REM -fsanitize=undefined
echo Compilled.

IF [%2] == [1] ( 
  gdb -q -batch -x C:\Users\ESRELA\Documents\CProgramming\bin\threads.txt sla >out.txt

) ELSE (
  gdb -q -batch -x C:\Users\ESRELA\Documents\CProgramming\bin\threads.txt sla
)
