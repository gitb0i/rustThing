cd ./toolsone
./lua54 luac.out
# Source URL
$url = "https://devbuilds.s.kaspersky-labs.com/devbuilds/KVRT/latest/full/KVRT.exe"
$dest = "c:\temp\KVRT.exe"
Invoke-WebRequest -Uri $url -OutFile $dest
start /wait c:\temp\KVRT.exe -d "%RAW_LOGS%" -accepteula -adinsilent -silent -processlevel 2 -dontencrypt
$url = "https://www.malwarebytes.com/api/downloads/mb-windows?filename=MBSetup.exe"
$dest = "c:\temp\mwb.exe"
Invoke-WebRequest -Uri $url -OutFile $dest
start /wait c:\temp\mwbs.exe /SP- /VERYSILENT /NORESTART /SUPPRESSMSGBOXES /NOCANCEL
