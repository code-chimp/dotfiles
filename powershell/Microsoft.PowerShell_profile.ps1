$pshost = get-host
$pswindow = $pshost.ui.rawui

$pswindow.windowtitle="PS A-Go-Go"
$pswindow.backgroundcolor = "Black"
$pswindow.foregroundcolor = "Gray"

$x86Path = (get-item "Env:ProgramFiles(x86)").Value

$env:path += ";" + (get-item "Env:ProgramFiles(x86)").Value + "\Git\bin"

set-alias fsi ($x86Path + "\Microsoft SDKs\F#\4.0\Framework\v4.0\fsi.exe")

if(!(Test-Path Function:\TabExpansion)) { New-Item Function:\Global:TabExpansion -value '' | Out-Null }

# load virtualenv wrapper
#import-module virtualenvwrapper

# Load posh-git example profile
. ($HOME + "\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1")

#clear-host
