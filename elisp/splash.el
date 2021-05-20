;; Dependencies
(use-package page-break-lines)
(use-package all-the-icons)

(use-package dashboard
  :config
  (setq show-week-agenda-p t)
  (setq dashboard-items '((recents . 15) (agenda . 5)))
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-startup-banner "~/.emacs.d/logo/pao.txt")
  (dashboard-setup-startup-hook))

;; Set startup window size
(when (or window-system (daemonp))
  (setq default-frame-alist '(
                              (width . 135)
                              (height . 47)
 ))
)

(provide 'splash)
