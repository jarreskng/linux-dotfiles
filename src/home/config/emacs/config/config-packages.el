(require 'config-locations)
(require 'package)

(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))

(setq package-gnupghome-dir emacs-gnupg-dir)
(setq package-user-dir emacs-packages-dir)

(package-initialize)

(add-to-list 'package-selected-packages 'use-package)
(add-to-list 'package-selected-packages 'auto-compile)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package use-package
  :config
  (setq use-package-verbose t)
  (setq use-package-always-ensure t))

(provide 'config-packages)

