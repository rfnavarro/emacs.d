
;;R config
;; Forma correcta para auto-instalar
(use-package ess
  :ensure t)


;; Asegura que el terminal baje automáticamente al recibir salida
(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq comint-move-point-for-output t)

;; Configuración específica para ESS (R)
(setq ess-scroll-to-bottom-on-output t)



;; Numeración en la consola de R (ESS)
;;(add-hook 'inferior-ess-r-mode-hook #'display-line-numbers-mode)

(add-hook 'inferior-ess-r-mode-hook
          (lambda ()
            (setq-local display-line-numbers nil)))

;; Alternativa rápida si usas una versión reciente de ESS

(setq ess-R-font-lock-keywords
      '((ess-R-fl-keyword:keywords . t)
        (ess-R-fl-keyword:constants . t)
        (ess-R-fl-keyword:modifiers . t)
        (ess-R-fl-keyword:fun-defs . t)
        (ess-R-fl-keyword:assign-ops . t)
        (ess-R-fl-keyword:%op% . t)
        (ess-fl-keyword:fun-calls . t)
        (ess-fl-keyword:numbers )
        (ess-fl-keyword:operators )
        (ess-fl-keyword:delimiters )
        (ess-fl-keyword:F&T )))

;; insertar chunk de r
(defun tws-insert-r-chunk (header) 
  "Insert an r-chunk in markdown mode. Necessary due to interactions between polymode and yas snippet" 
  (interactive "sHeader: ") 
  (insert (concat "```{r " header "}\n\n```")) 
  (forward-line -1))



(provide 'init-r)
