(require 'package)

(push '("gnu"   . "http://elpa.gnu.org/packages/") package-archives)
(push '("melpa" . "https://melpa.org/packages/")   package-archives)

(defun defpackage (path)
  (load-file (expand-file-name path "~/.emacs.d/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(defpackage "emacs-evil.el")
(defpackage "emacs-winum.el")
(defpackage "emacs-company-statistics.el")
(defpackage "emacs-google-translate.el")
(defpackage "emacs-org-bullets.el")
(defpackage "emacs-rainbow-mode.el")
(defpackage "emacs-clojure-mode.el")
(defpackage "emacs-company.el")
(defpackage "emacs-helm-ag.el")
(defpackage "emacs-paredit.el")
(defpackage "emacs-cider.el")
(defpackage "emacs-avy.el")
(defpackage "emacs-theme.el")
(defpackage "emacs-layout.el")
(defpackage "emacs-modeline.el")
(defpackage "emacs-general.el")
(defpackage "emacs-visual-fill-column.el")

(load-theme 'emacs t)
(show-paren-mode t)
(defalias 'yes-or-no-p 'y-or-n-p)

(push '(font . "-BE5N-Iosevka Term-normal-normal-expanded-*-20-*-*-*-d-0-iso10646-1") default-frame-alist)

(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)
(setq ring-bell-function 'ignore)
(setq make-backup-files nil)
(setq create-lockfiles nil)
(setq auto-save-default nil)
(setq vc-handled-backends nil)
(setq redisplay-dont-pause t)

(defun init/prog-mode-hook ()
  (setq show-trailing-whitespace t))

(add-hook 'prog-mode-hook 'init/prog-mode-hook)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(google-translate org-bullets winum visual-fill-column rainbow-mode paredit helm-ag general evil company-statistics cider avy)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
