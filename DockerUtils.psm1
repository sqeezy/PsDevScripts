function Remove-AllUntagedDockerImages {
  docker images | ConvertFrom-String | where {$_.P2 -eq "<none>"} | % { docker rmi $_.P3 }
}

function Remove-AllDockerContainers {
  docker ps -a -q | % { docker rm $_ }
}

Export-ModuleMember -Function *
