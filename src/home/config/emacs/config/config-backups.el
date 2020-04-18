(require 'config-directories)

(defvar emacs-backup-dir (file-name-as-directory (expand-file-name "backup" emacs-data-dir)))
(setq backup-directory-alist `((".*" . ,emacs-backup-dir)))

(setq make-backup-files t)
(setq backup-by-copying t)
(setq version-control t)
(setq vc-make-backup-files t)
(setq kept-old-versions 4)
(setq kept-new-versions 8)
(setq delete-old-versions t)

(provide 'config-backups)
