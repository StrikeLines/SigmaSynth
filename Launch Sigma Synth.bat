@echo off
rem Opens Sigma Synth in an app-style window (Chrome, then Edge, else default browser).
set "PAGE=%~dp0index.html"
set "URL=file:///%PAGE:\=/%"
for %%B in (
  "%ProgramFiles%\Google\Chrome\Application\chrome.exe"
  "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
  "%LocalAppData%\Google\Chrome\Application\chrome.exe"
  "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
  "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
) do if exist %%B ( start "" %%B --app="%URL%" & exit /b )
start "" "%PAGE%"
