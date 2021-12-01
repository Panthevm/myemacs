(unless (package-installed-p 'rainbow-mode)
  (package-install 'rainbow-mode)
  (package-refresh-contents))

(require 'rainbow-mode)

(provide 'emacs-rainbow-mode)
