# git-lib
A bash script to expose some shortcut git helper of my choice.

## Currently Supported commands:
 - `g p` -> `git push -u origin {currentBranchName}`
 - `g c "my commit messages"` -> `git add --all && git commit -m "my commit messages"`
 - `g l` -> `git pull origin {currentBranchName}`
 - `g sync` -> `syncs and resets current Branch with remote.`
 - `g wip` -> `creates a new WIP commit on current changes and pushes to current branch`
 - `g update` -> `ammends current commit and pushes to remote repository (hard push)`
 
 ## Installation
Clone the repository and put the line `. /path/to/git-lib/g.sh` anywhere in your .bashrc (or .zshrc if you are using oh-my-zsh)

### Supported OS
- macos
- linux
