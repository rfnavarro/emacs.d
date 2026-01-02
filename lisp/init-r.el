
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



;; insertar chunk de r
(defun tws-insert-r-chunk (header) 
  "Insert an r-chunk in markdown mode. Necessary due to interactions between polymode and yas snippet" 
  (interactive "sHeader: ") 
  (insert (concat "```{r " header "}\n\n```")) 
  (forward-line -1))



(provide 'init-r)
