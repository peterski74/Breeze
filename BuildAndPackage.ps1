# $srcDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

$ScriptPath = Split-Path $MyInvocation.InvocationName
& "$ScriptPath\buildRelease.ps1"
& "$ScriptPath\packageRelease.ps1"
& "$ScriptPath\packageNuget.ps1"