;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))
(eval-and-compile (add-to-list 'load-path (locate-user-emacs-file "config/")))

(require 'config-locations)
(require 'config-custom)
(require 'config-backups)
(require 'config-autosave)
(require 'config-packages)
(require 'config-theme)
(require 'config-mode)
(require 'config-ks-mode)
(require 'config-notmuch)

(put 'upcase-region 'disabled nil)
