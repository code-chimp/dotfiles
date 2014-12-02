$pshost = get-host
$pswindow = $pshost.ui.rawui

$pswindow.windowtitle="PS A-Go-Go"
$pswindow.backgroundcolor = "Black"
$pswindow.foregroundcolor = "Gray"

set-alias fsi 'C:\Program Files (x86)\Microsoft SDKs\F#\3.1\Framework\v4.0\fsi.exe'

if(!(Test-Path Function:\TabExpansion)) { New-Item Function:\Global:TabExpansion -value '' | Out-Null }

# load virtualenv wrapper
import-module virtualenvwrapper

# Load posh-git example profile
. 'C:\Users\tgoshinski\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1'

#clear-host
