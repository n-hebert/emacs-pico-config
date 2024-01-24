;; ========================================================================== ;;
;; ======================== Org Mode Configuration ========================== ;;
;; ========================================================================== ;;

;; Agenda keys
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

;; When I mark things as Done, put a timestamp
;; c/o https://www.gnu.org/software/emacs/manual/html_node/org/Closing-items.html
(setq org-log-done 'time)

;; My TODO Sequence
(setq org-todo-keywords '((sequence "TODO(t)" "IN-PROGRESS(p)" "BLOCKED(b)" "|" "SKIP(s)" "DONE(d)" )))
(setq org-agenda-span 1) ; Agenda should only show one day by default

;; Priorities
; (setq org-enable-priority-commands t) ;; If you want hotkeys to set priorities on tasks
; (setq org-default-priority ?C)
; (setq org-lowest-priority ?E)

;; Highly important to me -- don't let evil take over OrgMode's tab feature. It kills OrgMode entirely
(with-eval-after-load 'evil-maps (define-key evil-motion-state-map (kbd "TAB") nil))

;; ---- Automatically add CREATED property with the timestamp on new headings --- ;;
; (defun my/log-todo-creation-date (&rest ignore)
;   "Log TODO creation time in the property drawer under the key 'CREATED'."
;   (when (not (org-entry-get nil "CREATED"))
;     (org-entry-put nil "CREATED" (format "%s" (format-time-string (org-time-stamp-format t t) (current-time)))
;                    )
;     )
;   )
; (advice-add 'org-insert-todo-heading :after #'my/log-todo-creation-date)
; (advice-add 'org-insert-todo-heading-respect-content :after #'my/log-todo-creation-date)
; (advice-add 'org-insert-heading-respect-content :after #'my/log-todo-creation-date)
; (advice-add 'org-insert-heading-after-current :after #'my/log-todo-creation-date)
; (add-hook 'org-capture-before-finalize-hook #'my/log-todo-creation-date)
;; -- End automatically add CREATED - ;;

;; ---- Enable golang in OrgMode ---- ;;
; (require 'ob-go)
; (org-babel-do-load-languages
;   'org-babel-load-languages
;   '((go . t)))
;; ------ End golang in OrgMode ----- ;;

;; ------ Permit org-capture -------- ;;
;; https://orgmode.org/worg/org-contrib/org-protocol.html
;; https://github.com/sprig/org-capture-extension for firefox
; (load "server")
; (unless (server-running-p) (server-start))

; (require 'org-protocol)

; (setq org-capture-templates `(
;                               ("p" "Protocol" entry (file+headline ,(concat org-directory "Home.org") "Captured Quotes")
;                                "* %^{Title}\nSource: [[%:link][%:description]]\nCaptured On: %u,\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n")
;                               ("L" "Protocol Link" entry (file+headline ,(concat org-directory "Home.org") "Captured Links")
;                                "* %?[[%:link][%:description]]\nCaptured On: %U")
;                               ))

;; Then, add this to ~/.local/share/applications/org-protocol.desktop
; [Desktop Entry]
; Name=org-protocol
; Exec=emacsclient %u
; Type=Application
; Terminal=false
; Categories=System;
; MimeType=x-scheme-handler/org-protocol;
; NoDisplay=true

;; Make sure to run $ update-desktop-database ~/.local/share/applications
;; And restart any browsers
;;   c/o https://unix.stackexchange.com/a/565807
;; ------- End org-capture --------- ;;

;; ---------------------
;; ---------------------
;; ---------------------
(provide 'org-config)
