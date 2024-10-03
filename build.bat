@ECHO OFF

rmdir /s /q bld
mkdir bld
cd bld
cmake --preset=windows-release .. ^
                    || (echo "CMake configure error" & exit /b 1)
cmake --build . --config Release ^
                    || (echo "Build error" & exit /b 1)
cd ..

