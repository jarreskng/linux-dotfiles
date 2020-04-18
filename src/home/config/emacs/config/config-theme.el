(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tooltip-mode) (tooltip-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(global-hl-line-mode t)
(global-display-line-numbers-mode t)

(use-package doom-themes
  :ensure t
  :init (load-theme 'doom-nord t))

(provide 'config-theme)
