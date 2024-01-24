;; Emacs dumps this junk. You can't move it, sorry
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d" default))
 '(package-selected-packages
   '(gruvbox-theme undo-fu)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; =========================== Configure Settings =========================== ;;

;; ---- Add my own directory for keeping things tidy.
;;      Should be loaded *after* the above to ensure variables are all set
(add-to-list 'load-path "~/.emacs.d/custom/")

;; ---- Require local configs
(require 'packages) ;; ~/.emacs.d/custom/packages.el
(require 'basics) ;; ~/.emacs.d/custom/basics.el
(require 'cosmetic) ;; ~/.emacs.d/custom/cosmetics.el
(require 'org-config) ;; ~/.emacs.d/custom/org-config.el
(require 'org-roam-config) ;; ~/.emacs.d/custom/org-roam-config.el
