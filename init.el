(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(org-babel-do-load-languages
      'org-babel-load-languages
      '((emacs-lisp . t)
        (dot . t)))
(setq org-confirm-babel-evaluate nil)
