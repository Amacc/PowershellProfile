<#
    .Synopsis
        Powershell profile; A place to make powershell feel like home.
#>
@(
    "$PSScriptRoot/Config",
    "$PSScriptRoot/Functions"
    # "$PSScriptRoot/Variables"
)                 |
    Get-ChildItem |
    ForEach-Object {
        Write-Verbose "Importing $_"
        . $_.FullName
    }
