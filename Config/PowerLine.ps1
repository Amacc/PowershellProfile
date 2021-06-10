<#
    .Synopsis
        This script is to configure the prompt with powerline

    .Description
        This script uses powerline to configure the prompt with a list of
        script blocks. This changes to use a reletive path and also prints
        the powershell version if you move between a lot
#>
#requires -Module powerline

Import-Module powerline

$psVersionSlug = $PSVersionTable.PSVersion |
    ForEach-Object { @($_.Major,$_.Minor) -join "." }

Set-PowerLinePrompt `
    -colors  "871929 ","dd7540","eee600","00a877","03b2dd", "505291" `
    -PowerLineFont `
    -Prompt @(
        # { Write-VcsStatus }
        { $MyInvocation.HistoryId }
        { (Get-SegmentedPath) -join "\" }
        { if(Test-Path "$PWD/.git"){ "  $(Get-GitBranch)" } }

        # Get Elapsed and date
        { "`t" }
        { Get-Elapsed }
        { Get-Date -f "T" }

        { "`n" }
        { "PS $psVersionSlug $('>' * ($nestedPromptLevel + 1))" }
    )
