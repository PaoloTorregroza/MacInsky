(use-package projectile
  :diminish projectile-mode
  :config
  (setq projectile-completion-system 'ivy)
  (projectile-global-mode)
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :init
  (setq projectile-project-search-path '("~/documents/code/"))
  (setq projectile-switch-project-action #'projectile-dired))

(use-package counsel-projectile
  :after projectile
  :bind
  :config
  (counsel-projectile-mode))

;; Tabs
(use-package centaur-tabs
  :demand
  :config
  (centaur-tabs-mode t)
  (setq centaur-tabs-style "box")
  (setq centaur-tabs-set-icons t)  (setq centaur-tabs-set-modified-marker t)
  (centaur-tabs-group-by-projectile-project) ;; Group tabs by projectile project
  (setq centaur-tabs-set-bar 'under)
  (setq x-underline-at-descent-line t)
  :bind
  ("<M-right>" . centaur-tabs-forward)
  ("<M-left>" . centaur-tabs-backward))


;; Search in files
(use-package helm-ag)

(provide 'workspace)
