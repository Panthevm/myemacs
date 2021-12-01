(unless (package-installed-p 'winum)
  (package-install 'winum)
  (package-refresh-contents))

(require 'winum)
(winum-mode)
(provide 'emacs-winum)
