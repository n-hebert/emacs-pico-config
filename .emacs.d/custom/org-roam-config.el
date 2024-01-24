;; --- Org-Roam trial
(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/Documents/OrgMode/Roam/"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ("C-c n j" . org-roam-dailies-capture-today)
         ("C-c n x" . org-roam-extract-subtree)
         ("C-c n w" . org-roam-refile)
         :map org-mode-map
         (("C-M-i"     . completion-at-point)))
  :config
  (org-roam-db-autosync-mode)
  ;; If using org-roam-protocol
  (require 'org-roam-protocol))
;;

;; If you don't have these lines, you have to escape them with C-q every time
;; c.f. https://org-roam.discourse.group/t/org-roam-node-find-space-not-allowed-in-node-title/1847/6
(define-key minibuffer-local-completion-map (kbd "SPC") 'self-insert-command)
(define-key minibuffer-local-completion-map (kbd ":") 'self-insert-command)
