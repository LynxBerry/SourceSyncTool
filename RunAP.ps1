
param(
    [string] $outPutFolder = 'C:\Users\stevensh\Desktop\APGoldSyncOutput\'
)

$strScriptDir = $PSScriptRoot # Requires Powershell 3.0+
$strLogDir = ""

if (-not $(Test-Path $outPutFolder)) {
    throw $('Error>>The path {0} does not exist.' -f $outPutFolder)
} else {
    $strLogDir = $outPutFolder
}

$hour = get-date -f '_HH_00'
$outputfilename = Join-Path $strLogDir $('APSyncOutput' + $hour +  '.txt')
& $(Join-Path $strScriptDir APGoldSync.bat) > $outputfilename 2>&1