:: This file sorts various documents and places them inside respective folders.
:: Documents are identified by patterns in their file names.
:: Any file not named properly will be placed inside the OTHERS folder.

set dateFolder=202410_Oct



:: Create Logs folder if it doesn't exist
set log=Logs\%year%%month%%day%_log.txt
if not exist Logs\ mkdir Logs\

:: Get the current date parts
set day=%date:~0,2%
set month=%date:~3,3%
set year=20%date:~7,2%

:: Convert month abbreviation to numeric format
if /i %month%==Jan set month=01
if /i %month%==Feb set month=02
if /i %month%==Mar set month=03
if /i %month%==Apr set month=04
if /i %month%==May set month=05
if /i %month%==Jun set month=06
if /i %month%==Jul set month=07
if /i %month%==Aug set month=08
if /i %month%==Sep set month=09
if /i %month%==Oct set month=10
if /i %month%==Nov set month=11
if /i %month%==Dec set month=12

:: Write log entry to file with the format YYYYMMDD_log.txt
echo Program ran at %time% on %date% >> %log%

:: HGP
:: Create folders for batch and preweigh
if exist %dateFolder%\*HGP* (
    if not exist HERBAL_GREEN\%year%\ (
        mkdir HERBAL_GREEN\%year%\
        echo Created folder HERBAL_GREEN\%year%\ >> %log% 2>&1
    )
    if not exist HERBAL_GREEN\%year%\Batch\ (
        mkdir HERBAL_GREEN\%year%\Batch\
        echo Created folder HERBAL_GREEN\%year%\Batch\ >> %log% 2>&1
    )
    if not exist HERBAL_GREEN\%year%\Preweigh\ (
        mkdir HERBAL_GREEN\%year%\Preweigh\
        echo Created folder HERBAL_GREEN\%year%\Preweigh\ >> %log% 2>&1
    )
    if not exist HERBAL_GREEN\%year%\Printout\ (
        mkdir HERBAL_GREEN\%year%\Printout\
        echo Created folder HERBAL_GREEN\%year%\Printout\ >> %log% 2>&1
    )
    echo Folders created >> %log%
    MOVE %dateFolder%\*HGP*Preweigh*.pdf HERBAL_GREEN\%year%\Printout\ >> %log% 2>&1
    echo Printout moved >> %log%
    MOVE %dateFolder%\*HGP*PR*CP_Report*.xls HERBAL_GREEN\%year%\Preweigh\ >> %log% 2>&1
    echo Preweigh moved >> %log%
    MOVE %dateFolder%\*HGP*CP_Report*.xls HERBAL_GREEN\%year%\Batch\ >> %log% 2>&1
    echo Batch report moved >> %log%
    echo HERBAL_GREEN checked successfully >> %log%
)
:: Insert empty lines for spacing
echo "" >> %log%
echo "" >> %log%
echo "" >> %log%



:: HWP
:: Create folders for batch and preweigh
if exist %dateFolder%\*HWP* (
    if not exist HERBAL_WHITE\%year%\ (
        mkdir HERBAL_WHITE\%year%\
        echo Created folder HERBAL_WHITE\%year%\ >> %log% 2>&1
    )
    if not exist HERBAL_WHITE\%year%\Batch\ (
        mkdir HERBAL_WHITE\%year%\Batch\
        echo Created folder HERBAL_WHITE\%year%\Batch\ >> %log% 2>&1
    )
    if not exist HERBAL_WHITE\%year%\Preweigh\ (
        mkdir HERBAL_WHITE\%year%\Preweigh\
        echo Created folder HERBAL_WHITE\%year%\Preweigh\ >> %log% 2>&1
    )
    if not exist HERBAL_WHITE\%year%\Printout\ (
        mkdir HERBAL_WHITE\%year%\Printout\
        echo Created folder HERBAL_WHITE\%year%\Printout\ >> %log% 2>&1
    )
    echo Folders created >> %log%
    MOVE %dateFolder%\*HWP*Preweigh*.pdf HERBAL_WHITE\%year%\Printout\ >> %log% 2>&1
    echo Printout moved >> %log%
    MOVE %dateFolder%\*HWP*PR*CP_Report*.xls HERBAL_WHITE\%year%\Preweigh\ >> %log% 2>&1
    echo Preweigh moved >> %log%
    MOVE %dateFolder%\*HWP*CP_Report*.xls HERBAL_WHITE\%year%\Batch\ >> %log% 2>&1
    echo Batch report moved >> %log%
    echo HERBAL_WHITE checked successfully >> %log%
)
:: Insert empty lines for spacing
echo "" >> %log%
echo "" >> %log%
echo "" >> %log%





:: MFB
:: Create folders for batch and preweigh
if exist %dateFolder%\*MFB* (
    if not exist MAXFRESH_BLUE\%year%\ (
        mkdir MAXFRESH_BLUE\%year%\
        echo Created folder MAXFRESH_BLUE\%year%\ >> %log% 2>&1
    )
    if not exist MAXFRESH_BLUE\%year%\Batch\ (
        mkdir MAXFRESH_BLUE\%year%\Batch\
        echo Created folder MAXFRESH_BLUE\%year%\Batch\ >> %log% 2>&1
    )
    if not exist MAXFRESH_BLUE\%year%\Preweigh\ (
        mkdir MAXFRESH_BLUE\%year%\Preweigh\
        echo Created folder MAXFRESH_BLUE\%year%\Preweigh\ >> %log% 2>&1
    )
    if not exist MAXFRESH_BLUE\%year%\Printout\ (
        mkdir MAXFRESH_BLUE\%year%\Printout\
        echo Created folder MAXFRESH_BLUE\%year%\Printout\ >> %log% 2>&1
    )
    echo Folders created >> %log%
    MOVE %dateFolder%\*MFB*Preweigh*.pdf MAXFRESH_BLUE\%year%\Printout\ >> %log% 2>&1
    echo Printout moved >> %log%
    MOVE %dateFolder%\*MFB*PR*CP_Report*.xls MAXFRESH_BLUE\%year%\Preweigh\ >> %log% 2>&1
    echo Preweigh moved >> %log%
    MOVE %dateFolder%\*MFB*CP_Report*.xls MAXFRESH_BLUE\%year%\Batch\ >> %log% 2>&1
    echo Batch report moved >> %log%
    echo MAXFRESH_BLUE checked successfully >> %log%
)
:: Insert empty lines for spacing
echo "" >> %log%
echo "" >> %log%
echo "" >> %log%




:: MFG
:: Create folders for batch and preweigh
if exist %dateFolder%\*MFG* (
    if not exist MAXFRESH_GREEN\%year%\ (
        mkdir MAXFRESH_GREEN\%year%\
        echo Created folder MAXFRESH_GREEN\%year%\ >> %log% 2>&1
    )
    if not exist MAXFRESH_GREEN\%year%\Batch\ (
        mkdir MAXFRESH_GREEN\%year%\Batch\
        echo Created folder MAXFRESH_GREEN\%year%\Batch\ >> %log% 2>&1
    )
    if not exist MAXFRESH_GREEN\%year%\Preweigh\ (
        mkdir MAXFRESH_GREEN\%year%\Preweigh\
        echo Created folder MAXFRESH_GREEN\%year%\Preweigh\ >> %log% 2>&1
    )
    if not exist MAXFRESH_GREEN\%year%\Printout\ (
        mkdir MAXFRESH_GREEN\%year%\Printout\
        echo Created folder MAXFRESH_GREEN\%year%\Printout\ >> %log% 2>&1
    )
    echo Folders created >> %log%
    MOVE %dateFolder%\*MFG*Preweigh*.pdf MAXFRESH_GREEN\%year%\Printout\ >> %log% 2>&1
    echo Printout moved >> %log%
    MOVE %dateFolder%\*MFG*PR*CP_Report*.xls MAXFRESH_GREEN\%year%\Preweigh\ >> %log% 2>&1
    echo Preweigh moved >> %log%
    MOVE %dateFolder%\*MFG*CP_Report*.xls MAXFRESH_GREEN\%year%\Batch\ >> %log% 2>&1
    echo Batch report moved >> %log%
    echo MAXFRESH_GREEN checked successfully >> %log%
)
:: Insert empty lines for spacing
echo "" >> %log%
echo "" >> %log%
echo "" >> %log%




:: MFR
:: Create folders for batch and preweigh
if exist %dateFolder%\*MFR* (
    if not exist MAXFRESH_RED\%year%\ (
        mkdir MAXFRESH_RED\%year%\
        echo Created folder MAXFRESH_RED\%year%\ >> %log% 2>&1
    )
    if not exist MAXFRESH_RED\%year%\Batch\ (
        mkdir MAXFRESH_RED\%year%\Batch\
        echo Created folder MAXFRESH_RED\%year%\Batch\ >> %log% 2>&1
    )
    if not exist MAXFRESH_RED\%year%\Preweigh\ (
        mkdir MAXFRESH_RED\%year%\Preweigh\
        echo Created folder MAXFRESH_RED\%year%\Preweigh\ >> %log% 2>&1
    )
    if not exist MAXFRESH_RED\%year%\Printout\ (
        mkdir MAXFRESH_RED\%year%\Printout\
        echo Created folder MAXFRESH_RED\%year%\Printout\ >> %log% 2>&1
    )
    echo Folders created >> %log%
    MOVE %dateFolder%\*MFR*Preweigh*.pdf MAXFRESH_RED\%year%\Printout\ >> %log% 2>&1
    echo Printout moved >> %log%
    MOVE %dateFolder%\*MFR*PR*CP_Report*.xls MAXFRESH_RED\%year%\Preweigh\ >> %log% 2>&1
    echo Preweigh moved >> %log%
    MOVE %dateFolder%\*MFR*CP_Report*.xls MAXFRESH_RED\%year%\Batch\ >> %log% 2>&1
    echo Batch report moved >> %log%
    echo MAXFRESH_RED checked successfully >> %log%
)
:: Insert empty lines for spacing
echo "" >> %log%
echo "" >> %log%
echo "" >> %log%



:: MCP
:: Create folders for batch and preweigh
if exist %dateFolder%\*MCP* (
    if not exist MAXIMUM_CAVITY\%year%\ (
        mkdir MAXIMUM_CAVITY\%year%\
        echo Created folder MAXIMUM_CAVITY\%year%\ >> %log% 2>&1
    )
    if not exist MAXIMUM_CAVITY\%year%\Batch\ (
        mkdir MAXIMUM_CAVITY\%year%\Batch\
        echo Created folder MAXIMUM_CAVITY\%year%\Batch\ >> %log% 2>&1
    )
    if not exist MAXIMUM_CAVITY\%year%\Preweigh\ (
        mkdir MAXIMUM_CAVITY\%year%\Preweigh\
        echo Created folder MAXIMUM_CAVITY\%year%\Preweigh\ >> %log% 2>&1
    )
    if not exist MAXIMUM_CAVITY\%year%\Printout\ (
        mkdir MAXIMUM_CAVITY\%year%\Printout\
        echo Created folder MAXIMUM_CAVITY\%year%\Printout\ >> %log% 2>&1
    )
    echo Folders created >> %log%
    MOVE %dateFolder%\*MCP*Preweigh*.pdf MAXIMUM_CAVITY\%year%\Printout\ >> %log% 2>&1
    echo Printout moved >> %log%
    MOVE %dateFolder%\*MCP*PR*CP_Report*.xls MAXIMUM_CAVITY\%year%\Preweigh\ >> %log% 2>&1
    echo Preweigh moved >> %log%
    MOVE %dateFolder%\*MCP*CP_Report*.xls MAXIMUM_CAVITY\%year%\Batch\ >> %log% 2>&1
    echo Batch report moved >> %log%
    echo MAXIMUM_CAVITY checked successfully >> %log%
)
:: Insert empty lines for spacing
echo "" >> %log%
echo "" >> %log%
echo "" >> %log%





if exist %dateFolder%\*BENZ* mkdir CIP_REPORT\BENZ\%dateFolder%\
MOVE %dateFolder%\*BENZ* CIP_REPORT\BENZ\%dateFolder%\
echo BENZ executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\*BETAIN* mkdir CIP_REPORT\BETAIN\%dateFolder%\
MOVE %dateFolder%\*BETAIN* CIP_REPORT\BETAIN\%dateFolder%\
echo BETAIN executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\*FILLER* mkdir CIP_REPORT\FILLER\%dateFolder%\
MOVE %dateFolder%\*FILLER* CIP_REPORT\FILLER\%dateFolder%\
echo FILLER executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\*FLV* mkdir CIP_REPORT\FLV\%dateFolder%\
if exist %dateFolder%\*FLAVOR* mkdir CIP_REPORT\FLV\%dateFolder%\
MOVE %dateFolder%\*FLV* CIP_REPORT\FLV\%dateFolder%\
MOVE %dateFolder%\*FLAVOR* CIP_REPORT\FLV\%dateFolder%\
echo FLAVOR executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\*LINE* mkdir CIP_REPORT\LINE\%dateFolder%\
MOVE %dateFolder%\*LINE* CIP_REPORT\LINE\%dateFolder%\
echo LINE executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\*MAKING* mkdir CIP_REPORT\MAKING\%dateFolder%\
MOVE %dateFolder%\*MAKING* CIP_REPORT\MAKING\%dateFolder%\
echo MAKING executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\*SELF* mkdir CIP_REPORT\MAKING\SELF\%dateFolder%\
MOVE %dateFolder%\*SELF* CIP_REPORT\MAKING\SELF\%dateFolder%\
echo SELF executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\*MIXER* mkdir CIP_REPORT\MIXER\%dateFolder%\
MOVE %dateFolder%\*MIXER* CIP_REPORT\MIXER\%dateFolder%\
echo MIXER executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\*PEG* mkdir CIP_REPORT\PEG\%dateFolder%\
MOVE %dateFolder%\*PEG* CIP_REPORT\PEG\%dateFolder%\
echo PEG executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\*PLATFORM* mkdir CIP_REPORT\PLATFORM\%dateFolder%\
MOVE %dateFolder%\*PLATFORM* CIP_REPORT\PLATFORM\%dateFolder%\
echo PLATFORM executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\*SOBITOL* mkdir CIP_REPORT\SOBITOL\%dateFolder%\
MOVE %dateFolder%\*SOBITOL* CIP_REPORT\SOBITOL\%dateFolder%\
echo SOBITOL executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\*WIP* mkdir CIP_REPORT\WIP\%dateFolder%\
MOVE %dateFolder%\*WIP* CIP_REPORT\WIP\%dateFolder%\
echo WIP executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt


if exist %dateFolder%\*Preweigh* mkdir PRE-WEIGH\%dateFolder%\
MOVE %dateFolder%\*Preweigh* PRE-WEIGH\%dateFolder%\
echo Preweigh executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\*PR_* mkdir PRE-WEIGH\%dateFolder%\
MOVE %dateFolder%\*PR_* PRE-WEIGH\%dateFolder%\
echo PR executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\*.* mkdir Others\%dateFolder%\
MOVE %dateFolder%\*.* Others\%dateFolder%\
echo Others executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

echo Program terminated gracefully at %time% on %date% >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

echo --- >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt
echo --------------------------------------------------------------------------------- >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt
echo --- >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt


