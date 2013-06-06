Instructions
============
1. Launch powershell.exe as an administrator
   1. Set-ExecutionPolicy Unrestricted -Force
   2. Start-Job { Set-ExecutionPolicy Unrestricted -Force } -RunAs32
2. Test-Path $profile
3. New-Item -type file -Force $profile
4. [Install][1] PsGet and install posh-git and posh-hg

[1]: http://haacked.com/archive/2011/12/13/better-git-with-powershell.aspx "Haack's Guide"
