BeforeAll {
    # . $PSScriptRoot\PSGitHubCopilotCLI.psm1
    Import-Module $PSScriptRoot\PSGitHubCopilotCLI.psm1
}

Describe 'Invoke-GitHubCopilotWhatTheWsl' {
    It 'Asked to print date, should not throw an error' {
        InModuleScope PSGitHubCopilotCLI {
            { Invoke-GitHubCopilotWhatTheWsl print date } | Should -Not -Throw
            $dateTime = Invoke-GitHubCopilotWhatTheWsl print date
            $dateTime | Should -Not -BeNullOrEmpty
        }
    }
}