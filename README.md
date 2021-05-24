# MacInsky
## The emacs config of the maraviwonderfull Paolinsky

## - Content:

 - Installation
 - Philosophy
 - File distribution
 - Used packages
 - Todo


## Installation

### - Base config

Clone the content of the repo in your .emacs.d folder, if you don't have it... Create it! (or just use this command)

```
git clone https://github.com/PaoloTorregroza/MacInsky.git ~/.emacs.d
```

It is a good idea to have a backup of your current config, this step is optional:

```
mv ~/.emacs.d ~/.emacs.d.bkp
```

### - Language Servers

 - Typescript/Javascript

 ```
 sudo npm i -g typescript-language-server typescript
 ```

**IMPORTANT**: After hours of work whit nvm (Node version manager) I find that LSP is not compatible whit it, so if you want to have this working use a normal installation of node on your pc

## File distribution

	- Elisp
		- base.el          // General editor configs
		- comp.el          // Completion engines
		- keymappings      // For your custom keybindings
		- langs.el         // LSP and language server configurations
		- splash.el        // Splash screen loader
		- theme.el         // Select your theme (From doom-themes)
		- treemacs-conf.el // Treemacs conf... duh
		- vcs.el           // Working on...
		- vim.el           // GO EVIL (vim config)
		- workspace.el     // Workspace configurations (tabs, projects, etc...)


## Todo

 - More language servers
 - Complete readme
 - Improve general development feeling (use spaces instead of tabs for example)
 - Improve UI
 - Write list of packages and how to customize them
