# ComExample

This is a slightly modified version of the Microsoft article [How to call a managed DLL from native Visual C++ code in Visual Studio.NET or in Visual Studio 2005](https://support.microsoft.com/en-us/help/828736/how-to-call-a-managed-dll-from-native-visual-c-code-in-visual-studio-n). It demonstrates how to integrate .NET DLLs into legacy applications per COM.

## Getting started

* Open a Visual Studio Command Prompt with "Run as Adminstrator". Elevated permissions are required for the registration of the COM DLL.
* Change directory to your development folder, for example `cd /d d:\dev`
* `git clone https://github.com/Toqe/ComExample.git`
* `msbuild ManagedDLL.sln`
* `ManagedDLL\register.bat`
* `msbuild CPPClient.sln`
* `x64\Debug\CPPClient.exe`

The output should look like this:

```cmd
Hello World!
The result is 15
```

The result of "15" has been calculated by the .NET DLL integrated per COM.
