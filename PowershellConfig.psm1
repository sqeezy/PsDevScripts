function Set-PowershellPrompt{
  if (!(Test-Path -Path $PROFILE)){
    New-Item -Path $PROFILE -ItemType File 
  } 
  powershell_ise.exe $PROFILE
}
