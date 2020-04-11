;(add-to-list 'load-path (expand-file-name "config/settings" user-emacs-directory))
;(add-to-list 'load-path (expand-file-name "config/modules" user-emacs-directory))

;(require 'settings)
;(require 'modules)

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

(defvar emacs-autosave-dir
  (file-name-as-directory (expand-file-name "autosave" emacs-data-dir)))

(defvar emacs-backup-dir
  (file-name-as-directory (expand-file-name "backup" emacs-data-dir)))



(setq backup-directory-alist `((".*" . ,emacs-backup-dir)))
(setq auto-save-file-name-transforms `((".*" ,emacs-autosave-dir t)))
(setq auto-save-list-file-prefix emacs-autosave-dir)

(setq make-backup-files t)
(setq backup-by-copying t)
(setq version-control t)
(setq vc-make-backup-files t)
(setq kept-old-versions 4)
(setq kept-new-versions 8)
(setq delete-old-versions t)

(setq auto-save-default t)
(setq auto-save-timeout 20)
(setq auto-save-interval 250)



(require 'package)

(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))

(setq package-gnupghome-dir emacs-gnupg-dir)
(setq package-user-dir (expand-file-name "elpa" emacs-data-dir))

(add-to-list 'package-selected-packages 'use-package)
(add-to-list 'package-selected-packages 'auto-compile)

(package-initialize)

(unless (seq-every-p #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (package-install-selected-packages))

(require 'use-package)



(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tooltip-mode) (tooltip-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(global-hl-line-mode t)
(global-display-line-numbers-mode t)



(use-package doom-themes
  :ensure t
  :init (load-theme 'doom-nord t))



(use-package yaml-mode
  :ensure t
  :mode ("\\.yml$" . yaml-mode))



(use-package org
  :ensure t
  :mode ("\\.org\\'" . org-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (doom-themes auto-compile use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
