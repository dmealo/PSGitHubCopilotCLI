BeforeAll {
    . $PSScriptRoot/Invoke-GitHubCopilotWhatTheWsl.ps1
}

Describe 'Invoke-GitHubCopilotWhatTheWsl' {
    It 'Asked to print date, should not throw an error' {
        { Invoke-GitHubCopilotWhatTheWsl print date } | Should -Not -Throw
        $dateTime = Invoke-GitHubCopilotWhatTheWsl print date
        $dateTime | Should -Not -BeNullOrEmpty
    }
}