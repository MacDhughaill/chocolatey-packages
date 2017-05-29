$ErrorActionPreference = 'Stop';

$ProcessActive = Get-Process IdleMaster* -ErrorAction SilentlyContinue
if($ProcessActive -ne $null)
{
  Stop-Process -ProcessName IdleMaster*
}