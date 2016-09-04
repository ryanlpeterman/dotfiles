## What is this?
This is a set of dotfiles that set up an entire workstation from scratch. 
In designing these dotfiles, I tried to focus on readability and simplicity.

## Usage
On a fresh install of 16.04, run the following commands:
```
wget https://raw.githubusercontent.com/RyanLPeterman/dotfiles/master/setup_ubuntu.sh
chmod u+x setup_ubuntu.sh
./setup_ubuntu.sh
```

Here is a writeup on the tools I have included and why:

## Terminal

#####[zsh](https://github.com/robbyrussell/oh-my-zsh)
* For improved autocompletion, spell correction, performance, and appearance
* Set-up handled by [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

#####[autojump](https://github.com/wting/autojump)
* To simplify file browsing common locations
* Instead of spamming cd/ls -> j dest switches directory in one command
* Requires directory to have been visited before for autojump to track it
* Requires following command in .zshrc
```sh
$ source /usr/share/autojump/autojump.sh
```

#####[tmux](https://github.com/tmux/tmux)
* To open multiple terminal sessions in the same window
* Works together well with vim/nvim

## Editor

#####[neovim](https://github.com/neovim/neovim)
* For fast text editing, customizability, and ubiquity
* Using instead of vim due to asynchronous execution and terminal emulator
* Easy to copy & paste between panes compared to tmux
* [Current vimrc with explanations](https://github.com/RyanLPeterman/workflow/blob/master/.vimrc)

#####[Sublime](https://www.sublimetext.com/)
* Slowly being phased out as I memorize vim key bindings
* Current settings are as follows:

```javascript
{
    // Material Design Theme for appearance
    "color_scheme": "Packages/Material Theme/schemes/Material-Theme.tmTheme",
    "theme": "Material-Theme.sublime-theme",

    "font_size": 10,
    "ignored_packages":[],

    // Removes trailing whie space on save
    "trim_trailing_white_space_on_save": true,

    // Sets relative line numbering
    "vintage_lines.force_mode": true,

    // Starts in vim command mode
    "vintage_start_in_command_mode": true
}
```
