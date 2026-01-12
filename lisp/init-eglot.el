;;; init-eglot.el --- LSP support via eglot          -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(when (maybe-require-package 'eglot)
  (maybe-require-package 'consult-eglot))

(with-eval-after-load 'eglot
    (add-to-list 'eglot-server-programs
        '(stan-ts-mode . ("/Users/rafael/.emacs.d/bin/stan-language-server" "--stdio"))))

;use in MacOs bash xattr -d com.apple.quarantine ~/.emacs.d/bin/stan-languageserver


(provide 'init-eglot)
;;; init-eglot.el ends here
 
