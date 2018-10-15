function Get-OwnIp{
    Invoke-RestMethod http://ipinfo.io/json | Select -exp ip
}

export-modulemember -function *
