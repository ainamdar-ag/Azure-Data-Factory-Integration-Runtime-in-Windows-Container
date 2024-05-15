function InstallODBCDriver() {
    Write-Log "Install DataDirect HDP ODBC Driver"
    $ODBC_DRIVER = "odbcdriver"
    Invoke-WebRequest -Uri https://dsm.deltek.com/DFVE/ODBC/HDPDriver.zip -OutFile "C:\SHIR\$ODBC_DRIVER.zip"
    Expand-Archive -Path "C:\SHIR\$ODBC_DRIVER.zip" -Confirm
    Start-Process msiexec.exe -Wait -ArgumentList "/i C:\SHIR\$ODBC_DRIVER\HDPDriver\HDP ODBC Driver 4.6-20240501\PROGRESS_DATADIRECT_HDP_ODBC_4.6.1_WIN_64.exe /quiet"
    Write-Log "DataDirect HDP ODBC Driver installed Successfully"
}

InstallODBCDriver
