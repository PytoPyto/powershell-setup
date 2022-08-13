# Import
Import-Module posh-git
Import-Module Terminal-Icons
Import-Module oh-my-posh
Import-Module z
Import-Module PSFzf

# Settings
Set-PSReadLineOption -PredictionSource History
Set-PSReadlineOption -EditMode Emacs
Set-PSFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'
oh-my-posh --init --shell pwsh --config ~\.config\powershell\bubblesline.omp.json | Invoke-Expression

# Aliases
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias l ll
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias touch 'new-item'
Set-Alias htop 'wsl htop'

# Utilities
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
		Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

