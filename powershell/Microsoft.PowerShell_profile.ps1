# Set-PoshPrompt -Theme ys

Import-Module -Name C:\Users\Velho\Documents\WindowsPowerShell\Scripts\Invoke-Environment.ps1

Import-Module posh-git
Import-Module PSReadLine

Set-PSReadLineKeyHandler -Key Tab -Function Complete

oh-my-posh init pwsh --config ~/.ys.omp.json | Invoke-Expression

