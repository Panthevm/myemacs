(unless (package-installed-p 'org-bullets)
  (package-install 'org-bullets)
  (package-refresh-contents))

(require 'org-bullets)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(provide 'emacs-org-bullets)
