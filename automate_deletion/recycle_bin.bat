:: This code clean up recycle bin
:: Set drive as C disk
set drive=C:

if exist %drive%\$RECYCLE.BIN (
    pushd %drive%\$RECYCLE.BIN
    del /s /q .
    popd
)
