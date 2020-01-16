function Remove-AllUntagedDockerImages {
  docker images | ConvertFrom-String | where {$_.P2 -eq "<none>"} | % { docker rmi $_.P3 }
}

function Remove-AllDockerContainers {
  docker ps -aq | ForEach-Object { docker stop -t 1 $_ } |  ForEach-Object { docker rm -vf $_ }
}

function Get-DockerRegistryContent {
  [CmdletBinding()]
  Param(
  $Filter=".*",
  #TODO: handle https & no basic auth as well..
  $RegistryEndpoint = "sda-container-registry:5000"
)

  $allRepos = (Invoke-RestMethod -Uri "http://$RegistryEndpoint/v2/_catalog" -Method Get ).repositories 
  $reposMatchingFilter = $allRepos -Match $Filter
  $reposMatchingFilter | ForEach-Object {(Invoke-RestMethod -Uri "http://$RegistryEndpoint/v2/$_/tags/list" -Method Get )}
}

Export-ModuleMember -Function *
