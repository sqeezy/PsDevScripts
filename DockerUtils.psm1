function Remove-AllUntagedDockerImages {
  docker images `
    | ConvertFrom-String `
    | Where-Object {$_.P2 -eq "<none>"} `
    | ForEach-Object { docker rmi $_.P3 }
}

function Remove-AllDockerContainers {
  docker ps -aq `
    | ForEach-Object { docker stop -t 1 $_ } `
    | ForEach-Object { docker rm -vf $_ }
}

function Start-ContainerWithLocalPathMounted {
  param (
    [string]$Image,
    [string]$Entrypoint="powershell",
    [string]$Command=""
  )
  docker run -it --rm -v "$(Resolve-Path .):C:/mount" -w C:/mount --entrypoint $Entrypoint $image $Command
}

function Get-DockerRegistryContent {
  [CmdletBinding()]
  Param(
  $Filter=".*",
  #TODO: handle https & no basic auth as well..
  $RegistryEndpoint
)

  $allRepos = (Invoke-RestMethod -Uri "http://$RegistryEndpoint/v2/_catalog" -Method Get ).repositories 
  $reposMatchingFilter = $allRepos -Match $Filter
  $reposMatchingFilter | ForEach-Object {(Invoke-RestMethod -Uri "http://$RegistryEndpoint/v2/$_/tags/list" -Method Get )}
}

Export-ModuleMember -Function *
