(use-package auctex
  :ensure t
  :defer t
  :config
  (setq TeX-auto-save t
        TeX-parse-self t
        TeX-save-query nil
        TeX-PDF-mode t
        TeX-show-compilation t))

(provide 'init-latex)
