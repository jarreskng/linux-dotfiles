(require 'config-directories)
(require 'package)

(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))

(setq package-gnupghome-dir emacs-gnupg-dir)
(setq package-user-dir (expand-file-name "elpa" emacs-data-dir))

(add-to-list 'package-selected-packages 'use-package)
(add-to-list 'package-selected-packages 'auto-compile)

(package-initialize)

(unless (seq-every-p #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (package-install-selected-packages))

(require 'use-package)



(provide 'config-packages)
