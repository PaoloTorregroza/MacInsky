(use-package doom-themes
  :ensure
  :init
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled


  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)

  (setq doom-themes-treemacs-theme "doom-colors") ; use the colorful treemacs theme
  (doom-themes-treemacs-config)

  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(use-package powerline
	     :ensure t
	     :config
	     (powerline-default-theme))

(require 'doom-themes)
(load-theme 'doom-rouge t)
;; I like doom-acario-dark, doom-gruvbox, doom-vibrant, doom-rouge

(use-package all-the-icons)

(provide 'theme)
