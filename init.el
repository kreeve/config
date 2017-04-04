(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(org-babel-do-load-languages
      'org-babel-load-languages
      '((emacs-lisp . t)
        (dot . t)
	(python . t)
	(ocaml . t)
	(C . t)))
(setq org-confirm-babel-evaluate nil)
(setq org-src-preserve-indentation t)
(setq org-src-fontify-native t)
(package-initialize)
(require 'auto-complete)
(global-auto-complete-mode t)
;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base ## keep this line
