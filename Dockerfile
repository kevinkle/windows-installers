FROM mcr.microsoft.com/windows/servercore:ltsc2019

# download.jetbrains.com/idea/ideaIC-2019.2.3.exe
RUN powershell.exe -Command Invoke-WebRequest -Uri "https://download.jetbrains.com/idea/ideaIC-2019.2.3.exe" -OutFile "C:\ideaIC-2019.2.3.exe"

# Silent IntelliJ arguments are from:
# intellij-support.jetbrains.com/hc/en-us/articles/206827139-Silent-or-Unattended-installation-on-Windows
# Execute structure from:
# docs.microsoft.com/en-us/virtualization/windowscontainers/manage-docker/manage-windows-dockerfile#examples-of-using-run-with-windows
RUN powershell.exe -Command Start-Process c:\ideaIC-2019.2.3.exe -ArgumentList '/S /CONFIG=d:\temp\silent.config /D=W:\Program Files\IntelliJ IDEA 2018' -Wait