function Update-AllRepositories {
param(
    [string] $Path = "."
    )
    $folder = Get-ChildItem -Directory $Path
    $folder| ForEach-Object {svn update $_.FullName}
}