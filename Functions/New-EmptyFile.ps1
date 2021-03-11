<#
    .Synopsis
        Creates a new empty file and its alias touch
#>
Function New-EmptyFile {
    $args |
        ForEach-Object {
            Set-Content -Path $_  -Encoding ascii -Value $null
        }
}

New-Alias -Force touch New-EmptyFile
