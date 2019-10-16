# This is because the Host is running 1903.
FROM mcr.microsoft.com/windows:1903

# Download OpenJDK
ADD https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u222-b10/OpenJDK8U-jdk_x86-32_windows_hotspot_8u222b10.msi C:\OpenJDK8U-jdk_x86-32_windows_hotspot_8u222b10.msi

# You could alternatively copy over the installer
# COPY example.msi c:\example.msi

# Execute structure from:
# docs.microsoft.com/en-us/virtualization/windowscontainers/manage-docker/manage-windows-dockerfile#examples-of-using-run-with-windows
RUN powershell.exe -Command Start-Process -Wait -FilePath msiexec -ArgumentList /i, "C:\OpenJDK8U-jdk_x86-32_windows_hotspot_8u222b10.msi", /qn