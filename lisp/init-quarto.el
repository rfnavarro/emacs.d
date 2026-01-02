(use-package markdown-mode
  :ensure t
  :mode ("\\.md\\'" . gfm-mode)
  :init
  (setq markdown-command "pandoc") ;; Evita el error multimarkdown
  (setq markdown-enable-math t))

(use-package quarto-mode
  :ensure t
  :after markdown-mode
  :mode (("\\.qmd\\'" . poly-quarto-mode))
  :config
  (setq quarto-render-kasten t))

;; ;; Esto vincula Python con Polymode correctamente
;; (with-eval-after-load 'polymode
;;   (setq-default polymode-eval-region-function 'python-shell-send-region))


;; ;; 1. Configuración para Python (Solo se activa en bloques Python)
;; (add-hook 'python-mode-hook
;;           (lambda () 
;;             (setq-local polymode-eval-region-function 'python-shell-send-region)))

;; ;; 2. Configuración para R (Solo se activa en bloques R con ESS)
;; (add-hook 'ess-r-mode-hook
;;           (lambda () 
;;             (setq-local polymode-eval-region-function 'ess-eval-region)))




;; Guardar y renderizar el preview

(defun mi/quarto-save-and-render ()
  "Guarda el buffer actual y renderiza el documento Quarto."
  (interactive)
  (save-buffer)
  (quarto-preview)
  )
;; Asignar a F5 en los modos de Quarto
(with-eval-after-load 'poly-quarto-mode
  (define-key poly-quarto-mode-map (kbd "<f5>") 'mi/quarto-save-and-render))

;esto tiene una justificacion: evitar que flymake corrija (erroneamente) codigo en el yaml
(add-hook 'poly-quarto-mode-hook
          (lambda ()
            (flymake-mode -1)))


(provide 'init-quarto)
