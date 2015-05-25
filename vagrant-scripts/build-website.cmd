echo "Building project ..."

SET Directory=C:\website

"%PROGRAMFILES(x86)%\MSBuild\12.0\Bin\msbuild" C:\website\web-test-app.csproj /p:outdir="%Directory%\bin";webprojectoutputdir="%Directory%";debugsymbols=false;debugtype=none;TreatWarningsAsErrors=true /t:Clean,Build /p:Configuration=Release
