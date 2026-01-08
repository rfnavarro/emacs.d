(setenv "_JAVA_OPTIONS" "-Djdk.xml.totalEntitySizeLimit=2000000")

(use-package lsp-mode
  :ensure t)

(use-package lsp-ui
  :ensure t)

(use-package lsp-ltex
  :ensure t
  :hook ((text-mode . lsp)
         (latex-mode . lsp)
         (LaTeX-mode . lsp)
         (org-mode . lsp)
         (markdown-mode . lsp))
  :init
  (setq lsp-ltex-language "es")
  :config
  (setq lsp-ltex-check-frequency "save"))


(provide 'init-lsp-mode)
