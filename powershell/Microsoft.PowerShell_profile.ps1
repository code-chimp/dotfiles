$Shell = $Host.UI.RawUI
$Shell.WindowTitle="Ubergeek PS A-Go-Go"
$Shell.BackgroundColor = "Black"
$Shell.ForegroundColor = "Gray"

# Love me some F# REPL
set-alias fsi 'C:\Program Files (x86)\Microsoft SDKs\F#\3.1\Framework\v4.0\fsi.exe'

# Sublime Text 2
#set-alias subl 'C:\Program Files\Sublime Text 2\sublime_text.exe'

# Sublime Text 3
set-alias subl 'C:\Program Files\Sublime Text 3\sublime_text.exe'

if(!(Test-Path Function:\TabExpansion)) { New-Item Function:\Global:TabExpansion -value '' | Out-Null }

# load virtualenv wrapper
import-module virtualenvwrapper

#clear-host

# Load posh-git example profile
. 'C:\Users\tgoshinski\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1'


# Load posh-hg example profile
. 'C:\Users\tgoshinski\Documents\WindowsPowerShell\Modules\posh-hg\profile.example.ps1'

