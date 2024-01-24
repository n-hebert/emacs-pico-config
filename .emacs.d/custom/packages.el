;; ======================== Prepare Package Install ========================= ;;
;; Avoid awkward version errors when switching to older emacs versions
;; https://www.reddit.com/r/emacs/comments/qbnrao/symbols_function_definition_is_void_makeclosure/
(setq package-user-dir (locate-user-emacs-file
                         (concat
                           (file-name-as-directory "elpa")
                           emacs-version)))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
;; http://www.lunaryorn.com/2015/01/06/my-emacs-configuration-with-use-package.html
;; use-package autoloads will make sure it get pulled in at the right time
;; read "package autoloads":  http://www.lunaryorn.com/2014/07/02/autoloads-in-emacs-lisp.html
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package use-package
  :config
  (setq use-package-verbose t) ; Verbose if necessary
  (setq use-package-always-ensure t)

)

;; ============================ Install Packages ============================ ;;
(require 'use-package)

(use-package evil)
(use-package gruvbox-theme)
(use-package undo-fu)
; (use-package ob-go) ;; if using go-lang in org-babel
; (use-package org-pomodoro) ;; if using pomodoro's

(provide 'packages)
