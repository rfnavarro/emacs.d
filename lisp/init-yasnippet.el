;;; init-yasnippet.el --- yasnippet config -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; yasnippet config for all ecosystem
;; visit: https://github.com/joaotavora/yasnippet

;;; Code:

;; Configuración principal de yasnippet
(use-package yasnippet
  :ensure t
  :config
  (yas-reload-all)
  (yas-global-mode 1)) ;; <--- IMPORTANTE: Activa snippets en todo lado

;; Colección oficial de snippets
(use-package yasnippet-snippets
  :ensure t
  :after yasnippet)


;; ;; Snippets para Mocha
;; (use-package mocha-snippets
;;   :ensure t
;;   :after yasnippet
;;   :config
;;   (setq mocha-snippets-string-delimiter "\"")
;;   (setq mocha-snippets-use-fat-arrows nil))


(provide 'init-yasnippet)


;;; init-yasnippet.el ends here
