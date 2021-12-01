(unless (package-installed-p 'visual-fill-column)
  (package-install 'visual-fill-column)
  (package-refresh-contents))

(require 'visual-fill-column)

(defun emacs-visual-fill-column/fill-column-mode ()
  (setq visual-fill-column-width 80)
  (setq visual-fill-column-center-text t)
  (visual-fill-column-mode 1))

(add-hook 'prog-mode-hook 'emacs-visual-fill-column/fill-column-mode)
(provide 'emacs-visual-fill-column)
