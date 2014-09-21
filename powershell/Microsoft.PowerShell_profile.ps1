$env:path += ";" + (Get-Item "Env:ProgramFiles(x86)").Value + "\Git\bin"

set-location d:\work\lab
$Shell = $Host.UI.RawUI
$Shell.WindowTitle="Ubergeek PS A-Go-Go"
$Shell.BackgroundColor = "Black"
$Shell.ForegroundColor = "Gray"

set-alias fsi 'C:\Program Files (x86)\Microsoft SDKs\F#\3.0\Framework\v4.0\fsi.exe'
set-alias subl 'C:\Program Files\Sublime Text 2\sublime_text.exe'

if(!(Test-Path Function:\TabExpansion)) { New-Item Function:\Global:TabExpansion -value '' | Out-Null }

# load virtualenv wrapper
import-module virtualenvwrapper

#clear-host

# Load posh-git example profile
. 'C:\Users\tgoshinski\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1'


# Load posh-hg example profile
. 'C:\Users\tgoshinski\Documents\WindowsPowerShell\Modules\posh-hg\profile.example.ps1'

