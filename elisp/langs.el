;; LSP configuration thanks to System Crafters

;; Work hooking the language server protocol of any language to emacs.
;; Some language servers are best than others

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (setq lsp-headerline-breadcrumb-enable nil)
  (lsp-enable-which-key-integration t)
  ;;(lsp-mode . pao/lsp-mode-setup))
)

;; Show direction of file
;;(defun pao/lsp-mode-setup ()
;;  (setq lsp-headerline-breadcrumb-segments '(path-up-to-project file symbols))
;;  (lsp-headerline-breadcrumb-mode))


;; Typescript
(use-package typescript-mode
  :mode "\\.ts\\'"                       ;; Say where you want to enable the mode
  :hook (typescript-mode . lsp-deferred) ;; Hook the LSP to the enable command
  :config                                ;; Set some unique configs for the language server
  (setq typescript-indent-level 2))

;; Javascript
(use-package js2-mode
  :mode "\\.js\\'"
  :hook (js2-mode . lsp-deferred))

;; CSS
(use-package css-mode ;; This dude is auto enabled in CSS, SASS, LessCSS and SCSS
  :hook (css-mode . lsp-deferred))

;; HTML
;; web-mode is not only for html, work whit great part of tempalte engines see web-mode.org
(use-package web-mode ;; Same as CSS, auto enabled in HTML files
  :hook (html-mode . lsp-deferred))

(provide 'langs)
