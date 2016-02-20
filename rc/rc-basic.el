;;; rc-basic.el ---                                  -*- lexical-binding: t; -*-

;;======================================================
;; Basic
;;======================================================

;; MELPA!
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; indentation
(setq-default indent-tabs-mode nil)
(setq tab-width 2)

;; recents
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 35)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)
;;(run-with-timer 0 (* 10 60) 'recentf-save-list)

;; eval the whole buffer
(defun eval-buffer-and-message ()
  (interactive)
  (eval-buffer)
  (message "done ^^|"))

;; 這樣測試 .emacs 方便多了...
(define-key emacs-lisp-mode-map (kbd "C-c C-e") 'eval-buffer-and-message)

(provide 'rc-basic)
;;; rc-basic.el ends here
