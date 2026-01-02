;; trasladado a init-elpy.el
;; elpy mode - autocompletado python
(use-package elpy
  :ensure t
  :init
  (setq elpy-rpc-backend "rpc") ; Fuerza a Elpy a NO usar jedi
  :config
  (elpy-enable)
  (add-hook 'python-mode-hook 'elpy-mode)
  (setq python-shell-interpreter "ipython")
  (setq python-shell-interpreter-args "--simple-prompt -i")
  (pyvenv-mode 1)
  (setq gud-pdb-command-name "python -m pdb "))


;; Configuración para Python
(add-hook 'python-mode-hook
          (lambda ()
            (hs-minor-mode 1)
            (outline-minor-mode 1)
            (setq-local outline-regexp "# ---")))

;; Desplazar al final al escribir comandos
(setq comint-scroll-to-bottom-on-input t)

;; Desplazar al final cuando aparezca nueva salida (output)
(setq comint-scroll-to-bottom-on-output t)

;; Mover el cursor al final de la salida automáticamente
(setq comint-move-point-for-output t)

;;!!!!! require "requiere: pip install jedi service_factory flake8"

 (provide 'init-elpy)

