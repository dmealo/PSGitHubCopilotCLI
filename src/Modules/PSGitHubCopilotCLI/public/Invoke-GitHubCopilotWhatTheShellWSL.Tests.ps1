BeforeAll {
    . $PSScriptRoot/Invoke-GitHubCopilotWhatTheShellWsl.ps1
}

Describe 'Invoke-GitHubCopilotWhatTheShellWsl' {
    It 'Asked to print date and time, should not throw an error' {
        { Invoke-GitHubCopilotWhatTheShellWsl print date and time } | Should -Not -Throw
        $dateTime = Invoke-GitHubCopilotWhatTheShellWsl print date and time
        $dateTime | Should -Not -BeNullOrEmpty
    }
}