@echo off

call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvars64.bat"

set CMAKE_USE_WIN32_THREADS_INIT=TRUE

cmake -DCMAKE_GENERATOR="Visual Studio 15 2017 Win64" ..
msbuild mailio.sln /t:Rebuild /v:q /m /p:Configuration=Release /p:platform=x64
