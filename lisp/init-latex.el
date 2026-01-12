(use-package auctex
  :ensure t
  :defer t
  :config
  (setq TeX-auto-save t
        TeX-parse-self t
        TeX-save-query nil
        TeX-PDF-mode t
        TeX-show-compilation nil))
;; Activar la correlación de fuente (SyncTeX) automáticamente
(add-hook 'LaTeX-mode-hook 'TeX-source-correlate-mode)
(add-hook 'LaTeX-mode-hook 'TeX-fold-mode)

;; Configurar para que no pregunte y use siempre SyncTeX
(setq TeX-source-correlate-start-server t)
(setq TeX-source-correlate-method 'synctex)

(setq TeX-fold-type-list '(env macro comment))

(setq TeX-fold-env-spec-list
      '(("[table]" ("table"))
        ("[figure]" ("figure"))
        ("[equation]" ("equation" "displaymath"))
        ("[env]" ("enumerate" "itemize" "description"))))

(provide 'init-latex)
