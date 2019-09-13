@echo off

echo Compilling %1.cpp...
IF [%2] == [] (
  g++ %1.cpp -std=c++14 -o sla
) ELSE (   
  g++ %1.cpp -std=c++14 -g -DLOCAL -o sla
)
echo Compilled.

IF [%2] == [1] ( 
  gdb -q -batch -x C:\Users\ESRELA\Documents\CProgramming\bin\threads.txt sla >out.txt

) ELSE (
  gdb -q -batch -x C:\Users\ESRELA\Documents\CProgramming\bin\threads.txt sla
)
