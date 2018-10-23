function Edit-PowershellPrompt{
  if (!(Test-Path -Path $PROFILE)){
    New-Item -Path $PROFILE -Force -ItemType File 
  } 
  vim $PROFILE
}

Export-ModuleMember -Function *
