;; --- Org-mode and Org-Babel Configurations ---
(require 'org)
(require 'org-tempo)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (sql . t)
   (python . t)
   (emacs-lisp . t)
   (C . t)))

(setq org-confirm-babel-evaluate nil
      org-src-fontify-natively t
      org-src-tab-acts-natively t
      org-hide-emphasis-markers t
      org-image-actual-width nil)

;; --- Required Babel Packages ---
(require 'ob-sqlite)
(require 'ob-sql)
(require 'python)
(require 'ob-emacs-lisp)
(require 'ob-R)
(require 'ob-C)
(require 'ob-shell)
(require 'ob-python)

;; --- Key Bindings ---
(global-set-key (kbd "<f6>") 'org-display-inline-images)
(global-set-key (kbd "<f7>") 'org-remove-inline-images)

;; --- Optional Configurations ---
;; Uncomment to use these settings

;; Load Emacs-Speaks-Statistics (ESS)
;(load "ess-autoloads")

;; Configure SQLite options
;; (setq sql-sqlite-options '("-interactive"))

;; Load SQL package
;; (require 'sql)

(provide 'init-org)
