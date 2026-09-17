@echo off
setlocal enabledelayedexpansion

set FILES=Am_Be_ISO_8529_spectrum.inp

for %%f in (%FILES%) do (
    if exist %%f (
        echo Starting simulation: %%f
        phits.bat %%f
    ) else (
        echo Error: %%f not found, skipping...
    )
)

echo Batch sweep complete. Ready for Python analysis.
pause