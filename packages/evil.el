(use-package evil :ensure t

  :functions
  evil-mode

  :init
  (evil-mode 1)
  (define-prefix-command 'main-key)
  (define-key evil-normal-state-map (kbd "SPC") 'main-key))
