@echo off

set commonJar=complete-0.1-all.jar
set subCommonJar=complete-0.1-runner.jar

set commonDir=dir4
set subCommonDir=dir5

:: jarの削除
for /d %%d in (*) do (

    echo dirname = %%d

    del %%d\opt\lib\%copyJar1%
    del %%d\opt\lib\%copyJar2%
    
    echo delete completed
)

:: jarのコピー
for /d %%d in (*) do (

    echo dirname = %%d

    if not %%d == %commonDir% if not %%d == %subCommonDir% (
        copy %commonJar% %%d\opt\lib\%commonJar%
        copy %subCommonJar% %%d\opt\lib\%subCommonJar%
    )
)