function Get-OwnIp{
    Invoke-RestMethod http://ipinfo.io/json | Select-Object -ExpandProperty ip
}
Export-ModuleMember -Function *
