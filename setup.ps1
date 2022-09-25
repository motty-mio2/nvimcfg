# install packer.nvim
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

# nvim config directory
New-Item -ErrorAction Ignore -ItemType Directory -Path '~\AppData\Local\nvim'

New-Item -ErrorAction Ignore -ItemType SymbolicLink -Path '~\AppData\Local\nvim' -Name 'init.lua' -Value $(Join-Path $PSScriptRoot "\config\init.lua")
New-Item -ErrorAction Ignore -ItemType SymbolicLink -Path '~\AppData\Local\nvim' -Name 'lua' -Value $(Join-Path $PSScriptRoot "\config\lua")

New-Item -ErrorAction Ignore -ItemType SymbolicLink -Path $HOME -Name ".vim" -Value $(Join-Path $PSScriptRoot "\config\vim")
