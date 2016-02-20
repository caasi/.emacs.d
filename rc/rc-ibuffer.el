;;; rc-ibuffer.el ---                                -*- lexical-binding: t; -*-

;;======================================================
;; IBuffer from kuanyui
;;======================================================

;; 啟用ibuffer
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

(add-hook 'ibuffer-mode-hook 'hl-line-mode)
;; Kill ibuffer after quit
(defadvice ibuffer-quit (after kill-ibuffer activate)
  "Kill the ibuffer buffer on exit."
  (kill-buffer "*Ibuffer*"))

;; Let's group buffers with ibuffer!!!

(setq ibuffer-saved-filter-groups
      (quote (("default"
               ("Dired" (mode . dired-mode))
               ("Markdown" (or
                            (name . "^diary$")
                            (mode . markdown-mode)))
               ("ReStructText" (mode . rst-mode))
               ("JS" (or
                      (mode . javascript-mode)
                      (mode . js2-mode)
                      (mode . json-mode)
                      (mode . nodejs-repl-mode)))
               ("CSS" (or
                       (mode . css-mode)
                       (mode . stylus-mode)))
               ("Web Development" (or
                                   (mode . html-mode)
                                   (mode . web-mode)
                                   (name . "\\.yml$")))
               ("QML" (mode . qml-mode))
               ("Haskell" (or (mode . haskell-mode)
                              (mode . interactive-haskell-mode)
                              (mode . inferior-haskell-mode)
                              (name . "HS-Error")
                              (name . "*haskell-process-log*")))
               ("Python" (or (mode . python-mode)
                             (mode . ipython-mode)
                             (mode . inferior-python-mode)))
               ("Ruby" (or
                        (mode . ruby-mode)
                        (mode . enh-ruby-mode)
                        (mode . inf-ruby-mode)))
               ("LaTeX" (or (mode . latex-mode)
                            (name . "*.tex$")))
               ("IRC" (or
                       (mode . erc-mode)
                       (mode . rcirc-mode)))
               ("Lisp" (or
                        (mode . emacs-lisp-mode)
                        (mode . slime-mode)
                        (name . "^\\*scratch\\*$")
                        (mode . lisp-mode)))
               ("Scheme" (or
                          (name . "Guile")
                          (name . "geiser")
                          (mode . scheme-mode)
                          (mode . geiser-mode)))
               ("Shell Script" (or (mode . shell-script-mode)
                                   (mode . shell-mode)
                                   (mode . sh-mode)))
               ("Perl"  (or (mode . cperl-mode)
                            (mode . perl-mode)))
               ("Twitter" (mode . twittering-mode))
               ("Magit" (or (name . "*magit*")
                            (mode . magit-mode)))
               ("Emacs" (or
                         (name . "^\\*Messages\\*$")
                         (name . "^\\*Compile-Log\\*$")))
               ("Help" (or (mode . woman-mode)
                           (mode . man-mode)
                           (mode . info-mode)
                           (mode . help-mode)
                           (name . "\\*Help\\*$")
                           (name . "\\*info\\*$")))
               ("Terminal" (or (mode . eshell-mode)
                               (mode . term-mode)
                               (mode . eshell-mode)
                               (mode . comint-mode)
                               (name . "\\*scheme\\*$")))
               ("Agenda Files" (filename . "agenda/.+.org$"))
               ("Org" (or
                       (mode . org-mode)
                       (name . "^\\*Calendar\\*$")))))))

;;; rc-ibuffer.el ends here
