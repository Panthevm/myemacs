(unless (package-installed-p 'paredit)
  (package-install 'paredit)
  (package-refresh-contents))

(require 'paredit)

(add-hook 'prog-mode-hook #'enable-paredit-mode)

(provide 'emacs-paredit)
