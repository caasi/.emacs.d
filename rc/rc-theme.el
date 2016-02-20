;;; rc-theme.el ---                                  -*- lexical-binding: t; -*-

;;======================================================
;; Theme
;;======================================================

;; enable moe-theme
(require 'moe-theme)
(moe-dark)
(menu-bar-mode -1)

;; use rainbow-delimiters
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(provide 'rc-theme)
;;; rc-theme.el ends here
