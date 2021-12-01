(unless (package-installed-p 'general)
  (package-install 'general))

(require 'general)

(define-prefix-command 'main-key)
(define-key evil-normal-state-map (kbd "SPC") 'main-key)

(general-create-definer space-map-command
  :prefix "SPC")

(general-define-key
 :states 'normal
 [f1]  'helm-for-files
 [f2]  'avy-goto-word-1
 [f12] 'eshell-command
 "M-x" 'helm-M-x)

(space-map-command
  :states 'normal
  ;; Search
  :peffix "SPC" "s p" 'helm-do-ag-project-root
  :peffix "SPC" "s d" 'find-file
  ;; Modes
  :peffix "SPC" "m r" 'rainbow-mode
  ;; Cider
  :peffix "SPC" "c f v" 'cider-find-var
  :peffix "SPC" "c j j" 'cider-jack-in-clj
  :peffix "SPC" "c j s" 'cider-jack-in-cljs
  :peffix "SPC" "c j x" 'cider-jack-in-cljs
  :peffix "SPC" "c c j" 'cider-connect-clj
  :peffix "SPC" "c c s" 'cider-connect-cljs
  :peffix "SPC" "c c x" 'cider-connect-clj&cljs
  :peffix "SPC" "e p"   'cider-eval-sexp-at-point
  :peffix "SPC" "e b"   'cider-eval-buffer
  :peffix "SPC" "c p l" 'cider-pprint-eval-last-sexp
  :peffix "SPC" "c t n" 'cider-test-run-ns-tests
  :peffix "SPC" "c t c" 'cider-test-run-test
  ;; Pair
  :peffix "SPC" "p r" 'paredit-raise-sexp
  :peffix "SPC" "p s" 'paredit-forward-slurp-sexp
  ;; Window
  :peffix "SPC" "0" 'winum-select-window-0-or-10
  :peffix "SPC" "1" 'winum-select-window-1
  :peffix "SPC" "2" 'winum-select-window-2
  :peffix "SPC" "3" 'winum-select-window-3
  :peffix "SPC" "3" 'winum-select-window-3
  :peffix "SPC" "4" 'winum-select-window-4
  :peffix "SPC" "5" 'winum-select-window-5
  :peffix "SPC" "6" 'winum-select-window-6
  :peffix "SPC" "7" 'winum-select-window-6
  :peffix "SPC" "8" 'winum-select-window-8
  :peffix "SPC" "9" 'winum-select-window-9
  :peffix "SPC" "w f" 'visual-fill-column-mode
  :peffix "SPC" "w /" 'split-window-horizontally
  :peffix "SPC" "w -" 'split-window-vertically
  :peffix "SPC" "w <right>" 'windmove-right
  :peffix "SPC" "w <left>" 'windmove-left
  :peffix "SPC" "w <up>" 'windmove-up
  :peffix "SPC" "w <down>" 'windmove-down)

(provide 'emacs-general)
