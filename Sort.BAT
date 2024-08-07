:: This file sorts various documents and place them inside respective folders. The documents are identified by the parterns in their file names. Any file that is not named properly will be placed inside the OTHERS folder

:: After the equal sign, insert the name of the folder where you have placed the documents to be sorted.
set dateFolder=202407_Jul

if not exist Logs\ mkdir Logs\
echo Program ran at %time% on %date% >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\HERBAL_GREEN* mkdir HERBAL_GREEN\%dateFolder%\
MOVE %dateFolder%\HERBAL_GREEN* HERBAL_GREEN\%dateFolder%\
echo HERBAL_GREEN executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\HERBAL_WHITE* mkdir HERBAL_WHITE\%dateFolder%\
MOVE %dateFolder%\HERBAL_WHITE* HERBAL_WHITE\%dateFolder%\
echo HERBAL_WHITE executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt


if exist %dateFolder%\MAXFRESH_BLUE* mkdir MAX_FRESH_BLUE\%dateFolder%\
MOVE %dateFolder%\MAXFRESH_BLUE* MAX_FRESH_BLUE\%dateFolder%\
echo MAXFRESH_BLUE executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\MAXFRESH_GREEN* mkdir MAX_FRESH_GREEN\%dateFolder%\
MOVE %dateFolder%\MAXFRESH_GREEN* MAX_FRESH_GREEN\%dateFolder%\
echo MAXFRESH_GREEN executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\*RED* mkdir MAX_FRESH_RED\%dateFolder%\
MOVE %dateFolder%\*RED* MAX_FRESH_RED\%dateFolder%\
echo MAX_FRESH_RED executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt

if exist %dateFolder%\*MCP* mkdir MCP\%dateFolder%\
MOVE %dateFolder%\*MCP* MCP\%dateFolder%\
echo MCP executed >> Logs\%date:~10,4%%date:~4,2%%date:~7,2%_log.txt


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

