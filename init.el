;;; summary


(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file :no-error-if-file-is-missing)
(eval-when-compile
  (add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory)))
(defconst *is-a-mac* (eq system-type 'darwin))


;;; Set up the package manager
(require 'package)
(require 'init-utils) ;purcel
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el purcel
(require 'init-elpa) ;purcel
(require 'init-windows)
(require 'init-mackeys)
(require 'init-uniquify)
(require 'init-gui-frames)
(require 'init-ibuffer)
(require 'minibuffer)
(require 'init-misc)
(require 'init-paredit)
(require 'init-treesitter)
(require 'init-benchmarking)
(require 'init-sessions)
(require 'init-whitespace)
(require 'init-editing-utils)
(defvar warning-minimum-level)
 (setq warning-minimum-level :error)



;;Autodesplazar terminal hacia abajo
(setq comint-move-point-for-output t)


;; creo que aqui se configura que no se cambie de buffer en automatico
(add-to-list 'display-buffer-alist
             '("\\`\\*\\(Warnings\\|Compile-Log\\)\\*\\'"
               (display-buffer-no-window)
               (allow-no-window . t)))



;;; summary
;; Load configs for specific features and modes
(require-package 'diminish)



;; IDE
(require 'init-r)
(require 'init-quarto)
(require 'init-yaml)
(require 'init-stan)
(require 'init-python)
(require 'init-flymake)
(require 'init-eglot)

;; Development
;(require 'init-company)
(require 'init-org)
(require 'init-corfu)
(require 'init-protesislaous)
(require 'init-yasnippet)


;; Version Control
(require 'init-magit)
(require 'init-projectile)

;;me
(require 'init-me)
(require 'init-themes)
;; Envs
(require 'init-conda)
(require 'init-vterm)

;;Visor
(require 'init-pdf)
