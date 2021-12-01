(unless (package-installed-p 'evil)
  (package-install 'evil)
  (package-refresh-contents))

(require 'evil)

(evil-mode 1)

(provide 'emacs-evil)
