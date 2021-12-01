(unless (package-installed-p 'company-statistics)
  (package-install 'company-statistics))

(require 'company-statistics)

(company-statistics-mode)

(provide 'emacs-company-statistics)
