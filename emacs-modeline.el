(defun modeline.hide-modeline ()
  (dolist (window (window-list))
    (with-selected-window window
      (with-current-buffer (window-buffer window)
	(set-window-parameter window 'mode-line-format 'none)))))

(defun modeline.compose ()
  (concat 
   "|"
   (propertize
    (winum-get-number-string)
    'face `(:foreground , emacs-theme.color-1))
   "| "
   (propertize
    (abbreviate-file-name buffer-file-name)
    'face `(:foreground , emacs-theme.color-2))))

(defun modeline.make-header-line ()
  (interactive)
  (setq-default header-line-format '((:eval (modeline.compose)))))

(add-hook 'window-configuration-change-hook 'modeline.hide-modeline)
(modeline.make-header-line)

(provide 'emacs-modeline)
