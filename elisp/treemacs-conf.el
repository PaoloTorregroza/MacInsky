(use-package treemacs
  :bind
  (:map global-map
	([f8] . treemacs-select-window)
	("C-<f8>" . treemacs))
  :config
  (setq treemacs-is-never-other-window t))

(use-package treemacs-projectile
  :after treemacs projectile)

(use-package treemacs-all-the-icons)

(treemacs-load-theme "all-the-icons")


(provide 'treemacs-conf)
