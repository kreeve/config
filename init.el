(require 'package)

(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
(package-initialize)
(require 'ob-prolog)
(org-babel-do-load-languages
      'org-babel-load-languages
      '((emacs-lisp . t)
        (dot . t)
	(python . t)
	(ocaml . t)
	(java . t)
	(prolog . t)
	(C . t)))
(setq org-confirm-babel-evaluate nil)
(setq org-src-preserve-indentation t)
(setq org-src-fontify-native t)

(require 'auto-complete)
(global-auto-complete-mode t)
;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base ## keep this line
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(jdee-server-dir "/home/kreeve/jar")
 '(package-selected-packages
   (quote
    (ob-prolog tuareg htmlize ## flycheck jdee sbt-mode scala-mode magit auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-set-key "\C-j" 'backward-kill-word)
(global-set-key "\C-x\C-m" 'execute-extended-command)


(global-set-key (kbd "C-c t") 'magit-status)
(define-generic-mode 'bnf-mode
 () ;; comment char: inapplicable because # must be at start of line
 nil ;; keywords
 '(
   ("^#.*" . 'font-lock-comment-face) ;; comments at start of line
   ("^<[^ \t\n]*?>" . 'font-lock-function-name-face) ;; LHS nonterminals
   ("<[^ \t\n]*?>" . 'font-lock-builtin-face) ;; other nonterminals
   ("::=" . 'font-lock-const-face) ;; "goes-to" symbol
   ("\|" . 'font-lock-warning-face) ;; "OR" symbol
   )
 '("\\.bnf\\'") ;; filename suffixes
 nil ;; extra function hooks
 "Major mode for BNF highlighting.")
(eval-after-load 'org
'(progn
     (add-to-list 'org-structure-template-alist
		  '("d" "#+BEGIN_SRC dot :file fig_1?.png\n\n#+END_SRC" "<src lang=\"?\">\n\n</src>"))
     (add-to-list 'org-structure-template-alist
		  '("p" "#+BEGIN_EXPORT latex  \n \\begin{prooftree} \n ? \n \\end{prooftree} \n#+END_EXPORT")
     )))
