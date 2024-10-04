@echo off

if not exist vcpkg\ (
  echo "Run script from project\build:"
  echo "build\setup-win.bat"
  exit /b 1
)

set scriptDir=%cd%
cd %USERPROFILE%

if exist vcpkg\ (
  rmdir /s /q vcpkg
)

git clone https://github.com/microsoft/vcpkg ^
            || (echo "vcpkg repo cloning error" & exit /b 1)
cd vcpkg
call bootstrap-vcpkg.bat -disableMetrics

vcpkg install cgal
vcpkg install eigen:x64-windows
