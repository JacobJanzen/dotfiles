;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Jacob Janzen"
      user-mail-address "jacob.a.s.janzen@gmail.com")

;; visuals
(setq doom-font (font-spec :family "SauceCodePro Nerd Font" :size 14 :weight 'regular))
;;(setq doom-variable-pitch-font (font-spec :family "CMU Serif" :size 14 :weight 'regular))
(setq doom-theme 'doom-fairy-floss)
(setq display-line-numbers-type t)

;; Citar setup
(setq! citar-bibliography '("~/Documents/bib/references.bib"))

;; org setup
(setq org-directory "~/org/")
(setq org-roam-directory (file-truename "~/org-roam"))
(setq org-hide-emphasis-markers t)
(font-lock-add-keywords 'org-mode
                        '(("^ *\\([-]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
(add-hook 'org-mode-hook 'variable-pitch-mode)
(add-hook 'org-mode-hook 'visual-line-mode)
(add-hook 'org-mode-hook #'(lambda () (setq display-line-numbers nil)))
(custom-set-faces
 '(variable-pitch ((t (:family "CMU Serif" :height 180 :weight thin))))
 '(fixed-pitch ((t (:family "SauceCodePro Nerd Font" :height 160 :weight regular))))
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-code ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
 '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
 '(org-table ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-title ((t (:inherit title :height 2.0 :underline nil))))
 '(org-level-1 ((t (:inherit outline-1 :weight: bold :height 1.75))))
 '(org-level-2 ((t (:inherit outline-2 :weight: bold :height 1.5))))
 '(org-level-2 ((t (:inherit outline-3 :weight: bold :height 1.25))))
 '(org-level-2 ((t (:inherit outline-4 :weight: bold :height 1.1))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.1))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.0))))
 )
(org-roam-db-autosync-mode)

(setq confirm-kill-emacs nil) ; disable kill confirm
(setq doc-view-continuous t) ; pdf scroll
;;(add-hook 'text-mode-hook 'auto-fill-mode) ; auto-fill text modes
(elcord-mode) ; enable elcord

;; org-roam-ui
(use-package! websocket
  :after org-roam)
(use-package! org-roam-ui
  :after org-roam
  :config
  (setq org-roam-ui-sync-theme t
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start t))

;; new keymaps
(map! :leader :desc "Open LaTeX preview pane mode" :nv "C-l" #'latex-preview-pane-mode)
(map! :leader :desc "Toggle fold" :nv "C-f" #'+fold/toggle)
(map! :leader (:prefix ("r" . "Org Roam")
               :desc "insert node" :nv "i" #'org-roam-node-insert
               :desc "find node" :nv "f" #'org-roam-node-find
               :desc "org capture" :nv "c" #'org-capture
               (:prefix ("a" . "alias")
                :desc "add alias" :nv "a" #'org-roam-alias-add
                :desc "remove alias" :nv "r" #'org-roam-alias-remove)
               (:prefix ("r" . "reference")
                :desc "add reference" :nv "a" #'org-roam-ref-add
                :desc "remove reference" :nv "r" #'org-roam-ref-remove)
               :desc "display org-roam graph" :nv "g" #'org-roam-graph))

(after! lsp-mode
  ;; https://github.com/emacs-lsp/lsp-mode/issues/3577#issuecomment-1709232622
  (delete 'lsp-terraform lsp-client-packages))
