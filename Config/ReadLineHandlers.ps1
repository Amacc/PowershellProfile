<#
    .Synopsis
        Sets Read Line Handlers
#>
# Dont use these too often
Set-PSReadLineKeyHandler -Key Ctrl+b -Function BeginningOfHistory
Set-PSReadLineKeyHandler -Key Ctrl+d -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key Ctrl+f -Function HistorySearchForward
Set-PSReadLineKeyHandler -Key Ctrl+e -Function EndOfHistory

# Must have
Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadlineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
