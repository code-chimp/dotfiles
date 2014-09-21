;; set the width (characters wide) and height (lines high)
(setq initial-frame-alist '((top . 0) (left . 0) (width . 120) (height . 40)))

;; make indentation commands use space only (never tab character)
(setq-default indent-tabs-mode nil)

;; set default tab char's display width to 4 spaces
(setq-default tab-width 4)

;; set current buffer's tab char's display width
(setq tab-width 4)

;; make whitespace-mode use just basic coloring
(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))

(setq whitespace-display-mappings
      ;; all numbers are Unicode codpoint in decimal. try (insert-char 182) to see it
      '(
        (space-mark 32 [183] [46]) ; 32 SPACE, 183 MIDDLE DOT, 46 FULL STOP
        (newline-mark 10 [182 10]) ; 10 LINE FEED
        (tab-mark 9 [9655 9] [92 9]) ; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE
       ))

(global-linum-mode t)
(global-whitespace-mode t)
(electric-indent-mode t)

(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; auto-start on any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)

;; lisp/clojure goodness
(require 'rainbow-delimiters)
;; (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(global-rainbow-delimiters-mode)

;; lisp
(setq inferior-lisp-program "/usr/bin/clisp")
(load (expand-file-name "~/quicklisp/slime-helper.el"))

;; tools

