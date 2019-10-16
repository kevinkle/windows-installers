# This is because the Host is running 1903.
FROM mcr.microsoft.com/windows:1903

# download.jetbrains.com/idea/ideaIC-2019.2.3.exe
ADD https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u222-b10/OpenJDK8U-jdk_x86-32_windows_hotspot_8u222b10.msi C:\OpenJDK8U-jdk_x86-32_windows_hotspot_8u222b10.msi

# You could alternatively copy over the .exe
# COPY example.exe c:\example.exe

# Execute structure from:
# docs.microsoft.com/en-us/virtualization/windowscontainers/manage-docker/manage-windows-dockerfile#examples-of-using-run-with-windows
# Silent IntelliJ arguments are from:
# intellij-support.jetbrains.com/hc/en-us/articles/206827139-Silent-or-Unattended-installation-on-Windows
RUN msiexec C:\OpenJDK8U-jdk_x86-32_windows_hotspot_8u222b10.msi /quiet /qn /passive