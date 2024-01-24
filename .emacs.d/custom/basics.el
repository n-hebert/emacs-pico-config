;; Mwahahaha 👹
(evil-mode 1)

;; Don't hit me with a splash screen
(setq inhibit-startup-screen t)

;; Less typing -- seriously, who types 'yes' or 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

;; Do not use audible bell
(setq visible-bell 1)

;; Accept new changes from the filesystem, e.g. syncthing, immediately
(global-auto-revert-mode)

;; Tabs are not great https://www.emacswiki.org/emacs/NoTabs
(setq-default indent-tabs-mode nil)

;; Enable emojis in Emacs >=27
;; c/o https://emacs.stackexchange.com/questions/62219/how-do-i-get-colour-emoji-to-display-in-emacs
(if (>= emacs-major-version 27)
  (set-fontset-font t 'symbol "Noto Color Emoji" nil 'append)
  (set-fontset-font t 'symbol "Segoe UI Emoji" nil 'append)
  (set-fontset-font t 'symbol "Symbola" nil 'append)
  (set-fontset-font t 'symbol "Apple Color Emoji")
  )

;; Autosave in Emacs >=26. See more examples at http://xahlee.info/emacs/emacs/emacs_auto_save.html
(when (>= emacs-major-version 26)
  (setq auto-save-visited-mode 1)
  )

;; Install and use 'orderless' regex compatible autocompletion -- don't leave home without it
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

;; ---------------------
;; ---------------------
;; ---------------------
(provide 'basics)
