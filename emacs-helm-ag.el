(unless (package-installed-p 'helm-ag)
  (package-install 'helm-ag)
  (package-refresh-contents))
(require 'helm-ag)
(provide 'emacs-helm-ag)
