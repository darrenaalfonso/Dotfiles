# Dotfiles and Dev Machine Settings

## PyCharm
- Run `defaults write -g ApplePressAndHoldEnabled -bool false` to allow holding down to repeat a key.  This allows you to navigate quickly with j and k using Vim keybindings.
- Can use settings sync within PyCharm for keybindings, window preferences, etc.

## BetterSnapTool
See bettersnaptool-keybindings.png

## Displays
### Install displayplacer
Automatically set external display placement
- `brew tap jakehilborn/jakehilborn && brew install displayplacer`
- [https://github.com/jakehilborn/displayplacer](https://github.com/jakehilborn/displayplacer)

### Open new windows in tabs (useful in mergetools with popups)
- On your Mac, choose Apple menu  > System Preferences, then click Dock.
- Click the “Prefer tabs when opening documents” pop-up menu, then choose an option:
- Always

## Vim
- Run `brew install vim`
- Install compilers by running `brew install cmake python go nodejs`

## Sublime Text
- Turn on Vintage Mode [https://www.sublimetext.com/docs/vintage.html](https://www.sublimetext.com/docs/vintage.html)

## zsh and Development
- Install oh-my-zsh [https://ohmyz.sh/#install](https://ohmyz.sh/#install)
- Install `zsh-autosuggestions` [https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
- `brew install direnv`
- Install autocompletion `brew install bash-completion`

## .zshrc
- The .zshrc file should be specific to the machine, thus there isn't one in this repo
- The .shrc file can be shared between machines
- To source the .shrc file from the .zshrc file, add `source ~/.shrc` into the .zshrc file

## DiffMerge
- [https://sourcegear.com/diffmerge/downloads.html](https://sourcegear.com/diffmerge/downloads.html)
- [Set diffmerge as merge tool](https://sourcegear.com/diffmerge/webhelp/sec__git__mac.html)

## Other productivity apps 
- AltTab
- Flycut
- Handmirror
- HiddenBar
- iTerm2
- Obsidian
