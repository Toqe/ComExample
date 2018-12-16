@echo off
setlocal
cd %~dp0

echo Checking administrative permissions.
net session >nul 2>nul
if errorLevel 1 goto fail

cd bin
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe" /unregister /tlb:ManagedDLL.tlb /codebase ManagedDLL.dll
"C:\Windows\Microsoft.NET\Framework64\v4.0.30319\RegAsm.exe" /unregister /tlb:ManagedDLL.tlb /codebase ManagedDLL.dll

goto end

:fail
echo Failure: You need to have administrative permissions.

:end