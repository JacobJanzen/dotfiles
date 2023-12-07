;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Jacob Janzen"
      user-mail-address "jacob.a.s.janzen@gmail.com")

;; visuals
(setq doom-font (font-spec :family "SauceCodePro Nerd Font" :size 14 :weight 'regular))
(setq doom-theme 'doom-fairy-floss)
(setq display-line-numbers-type t)

;; org setup
(setq org-directory "~/org/")
(setq org-roam-directory (file-truename "~/org-roam"))
(org-roam-db-autosync-mode)

(setq confirm-kill-emacs nil) ; disable kill confirm
(setq doc-view-continuous t) ; pdf scroll
(add-hook 'text-mode-hook 'auto-fill-mode) ; auto-fill text modes
(elcord-mode) ; enable elcord

;; new functions
(map! :leader :desc "Open LaTeX preview pane mode" :nv "C-l" #'latex-preview-pane-mode)
(map! :leader :desc "Toggle fold" :nv "C-f" #'+fold/toggle)
