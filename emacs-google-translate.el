(unless (package-installed-p 'google-translate)
  (package-install 'google-translate)
  (package-refresh-contents))

(unless (package-installed-p 'popup)
  (package-install 'popup)
  (package-refresh-contents))

(require 'google-translate)
(require 'google-translate-smooth-ui)
(defun google-translate--get-b-d1 () (list 427110 1469889687))
(setq google-translate-backend-method 'curl)
(setq google-translate-show-phonetic t)
(setq google-translate-default-source-language "ru")
(setq google-translate-default-target-language "en")

(defun emacs-google-translate/translate-to-russian (&optional override-p)
  (interactive "P")
  (let ((google-translate-default-source-language "auto")
	(google-translate-default-target-language "ru"))
    (google-translate-at-point override-p)))

(provide 'emacs-google-translate)
