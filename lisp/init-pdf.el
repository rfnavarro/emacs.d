
;; instalar visor de pdf
(use-package pdf-tools
  :ensure t
  :config
  ;; Inicializa el paquete
  (pdf-tools-install)
  ;; Opcional: abre los pdfs ajustados al ancho de la ventana
  (setq-default pdf-view-display-size 'fit-width)
  ;; Desactiva números de línea en pdfs (molestan)
  (add-hook 'pdf-view-mode-hook (lambda () (display-line-numbers-mode -1))))

(provide 'init-pdf)
