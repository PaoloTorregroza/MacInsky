;; elisp files
(add-to-list 'load-path (concat user-emacs-directory "elisp"))

;; Base configuration
(require 'base)

;; Theme
(require 'theme)

;; Evil mode
(require 'vim)

;; Completion
(require 'comp)

;; Project management
(require 'workspace)

;; Splash screen
(require 'splash)

;; Treemacs
(require 'treemacs-conf)

;; Keymaps
(require 'keymappings)
