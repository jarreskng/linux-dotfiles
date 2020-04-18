(defconst emacs-data-dir
  (or
   (getenv "EMACS_DATA_HOME")
   (expand-file-name "emacs" (getenv "XDG_DATA_HOME"))))

(defconst emacs-cache-dir
  (or
   (getenv "EMACS_CACHE_HOME")
   (expand-file-name "emacs" (getenv "XDG_CACHE_HOME"))))

(defconst emacs-gnupg-dir
  (or
   (getenv "GNUPGHOME")
   (expand-file-name "gnupg" (getenv "XDG_CONFIG_HOME"))))

(provide 'config-directories)
