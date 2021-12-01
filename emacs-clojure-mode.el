(unless (package-installed-p 'clojure-mode)
  (package-install 'clojure-mode)
  (package-refresh-contents))

(require 'clojure-mode)

(add-hook 'clojure-mode #'clojure-mode)

(provide 'emacs-clojure-mode)
