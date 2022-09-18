@echo off

set copyJar1=complete-0.1-all.jar
set copyJar2=complete-0.1-runner.jar

for /d %%d in (*) do (

    echo dirname = %%d

    del %%d\opt\lib\%copyJar1%
    del %%d\opt\lib\%copyJar2%
    
    echo delete completed
)