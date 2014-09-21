;; set the width (characters wide) and height (lines high)
(setq initial-frame-alist '((top . 0) (left . 0) (width . 120) (height . 40)))

;; use 9pt Consolas as default font
(set-face-attribute 'default nil
  :family "Consolas" :height 108)

;; make indentation commands use space only (never tab character)
(setq-default indent-tabs-mode nil) ; emacs 23.1, 24.2, default to tab

;; set default tab char's display width to 4 spaces
(setq-default tab-width 4) ; emacs 23.1, 24.2, default to 8

;; set current buffer's tab char's display width to 4 spaces
(setq tab-width 4)

;; make whitespace-mode use just basic coloring
(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))

(setq whitespace-display-mappings
   ;; all numbers are Unicode codepoint in decimal. try (insert-char 182 ) to see it
  '(
    (space-mark 32 [183] [46]) ; 32 SPACE, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
    (newline-mark 10 [182 10]) ; 10 LINE FEED
    (tab-mark 9 [9655 9] [92 9]) ; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE 「▷」
    ))

(global-linum-mode t)
(global-whitespace-mode t)
(electric-indent-mode 1)

(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)

(require 'rainbow-delimiters)
;; (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(global-rainbow-delimiters-mode)

;; lisp
(setq inferior-lisp-program "clisp")
(load (expand-file-name "~/quicklisp\\slime-helper.el"))

;; tools

;; Save here instead of littering current directory with emacs backup files
(setq backup-directory-alist `(("." . "~/.saves")))
