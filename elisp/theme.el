(use-package gruvbox-theme
	:defer t
	:init
	(load-theme 'gruvbox t))

(use-package powerline
	     :ensure t
	     :config
	     (powerline-default-theme))

(provide 'theme)
