(unless (package-installed-p 'cider)
  (package-install 'cider)
  (package-refresh-contents))

(require 'cider)

(setq cider-repl-pop-to-buffer-on-connect  nil)
(setq cider-dynamic-indentation            nil)
(setq nrepl-log-messages                   nil)
(setq cider-auto-select-test-report-buffer nil)
(setq cider-auto-select-error-buffer       nil)

(defun cider-persistent-scope (&optional argument)
  )

(provide 'emacs-cider)
