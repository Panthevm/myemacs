(unless (package-installed-p 'company)
  (package-install 'company)
  (package-refresh-contents))

(require 'company)

(global-company-mode)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)

(provide 'emacs-company)
