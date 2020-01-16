function Remove-SvnCheckoutDirt {
  svn status --no-ignore | ForEach-Object { if($_ -match '^[?I]\s+(.+)'){ $matches[1]} } | Remove-Item -whatif
}

Export-ModuleMember -Function *
