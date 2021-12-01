(unless (package-installed-p 'avy)
  (package-install 'avy)
  (package-refresh-contents))

(require 'avy)

(setq avy-background 1)
(setq avy-keys
      (nconc (number-sequence ?a ?z)
	     (number-sequence ?1 ?9)
	     (number-sequence ?A ?Z)))

(provide 'emacs-avy)
