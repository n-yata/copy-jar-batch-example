@echo off

set copyJar1=complete-0.1-all.jar
set copyJar2=complete-0.1-runner.jar

set nonExistsDir1=dir4
set nonExistsDir2=dir5

for /d %%d in (*) do (

    echo dirname = %%d

    if not %%d == %nonExistsDir1% if not %%d == %nonExistsDir2% (
        copy %copyJar1% %%d\opt\lib\%copyJar1%
        copy %copyJar2% %%d\opt\lib\%copyJar2%
    )
)