;; Set default font size
(defvar pao/default-font-size 100)
(set-face-attribute 'default nil :height pao/default-font-size :font "FiraCode Nerd Font")

;; Custom file
(defvar pao/custom-file (expand-file-name "custom.el" user-emacs-directory))

;; Package repositories
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Install use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)

; (defconst private-dir  (expand-file-name "private" user-emacs-directory))
; (defconst temp-dir (format "%s/cache" private-dir) "elisp temp directories")

;; Emacs customizations
(setq custom-file                        pao/custom-file
      make-backup-files                  nil
      display-line-numbers-type          'relative
      ; inhibit-startup-message            t
      use-package-always-ensure          t)

;; Keep buffers automatically up to date
(global-auto-revert-mode t)

;; Display line number
;; (global-display-line-numbers-mode) ;; Always show line numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode) ;; Only in prog mode

;; Show matching parentheses
(show-paren-mode 1)

;; Need to load custom file to avoid being overwritten
;; more at https://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Customizations.html
(if (file-exists-p pao/custom-file)
  (load custom-file))

;; Delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Hide toolbar
(tool-bar-mode -1)

;; Set smooth scroll
;; scroll one line at a time (less "jumpy" than defaults)

(setq mouse-wheel-scroll-amount '(2 ((shift) . 2))) ;; one line at a time

(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling

(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse

(setq scroll-step 1) ;; keyboard scroll one line at a time

(provide 'base)
