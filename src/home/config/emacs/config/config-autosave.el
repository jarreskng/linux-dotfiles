(require 'config-locations)

(setq auto-save-file-name-transforms `((".*" ,emacs-autosave-dir t)))
(setq auto-save-list-file-prefix emacs-autosave-dir)
(setq auto-save-default t)
(setq auto-save-timeout 20)
(setq auto-save-interval 250)

(provide 'config-autosave)
