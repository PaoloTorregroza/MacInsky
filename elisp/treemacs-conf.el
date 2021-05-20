(use-package treemacs
  :ensure t
  :defer t
  :init
  :bind
  (:map global-map
	([f8] . treemacs))
  :config
  (setq treemacs-is-never-other-window t)
  (setq treemacs-litter-directories '("/node_modules" "/.venv" "/.cask" "/build" "/ext")))

;;(use-package treemacs-projectile
;;  :after treemacs projectile)

(use-package treemacs-evil
  :after (treemacs evil)
  :ensure t)

(use-package treemacs-all-the-icons)

(treemacs-load-theme "all-the-icons")

(provide 'treemacs-conf)
