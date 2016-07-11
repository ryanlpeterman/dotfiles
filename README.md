# Setup
Notes for myself. Also so I can access my setup on different computers.

## Terminal

1. [zsh](https://github.com/robbyrussell/oh-my-zsh)
* For improved autocompletion, spell correction, performance, and appearance

2. [autojump](https://github.com/wting/autojump)
* To simplify file browsing common locations
* Instead of spamming cd/ls -> j dest switches directory in one command
* Requires directory to have been visited before for autojump to track it
* Requires following command in .zshrc
```sh
source /usr/share/autojump/autojump.sh
```

3. [tmux](https://github.com/tmux/tmux)
* To open multiple terminal sessions in the same window
* Works together well with vim

## Editor
1. [Vim](https://github.com/vim/vim)
* For fast text editing, customizability, and ubiquity
* Copy of current minimal vimrc included in this repo with explanations

2. [Sublime](https://www.sublimetext.com/)
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
