(use-package conda
  :ensure t
  :init
  ;; 1. Busca automáticamente la ruta de Anaconda/Miniconda
  (let ((conda-path (cond
                     ((file-exists-p "~/anaconda3") (expand-file-name "~/anaconda3"))
                     ((file-exists-p "~/miniconda3") (expand-file-name "~/miniconda3"))
                     ((file-exists-p "/opt/anaconda3") "/opt/anaconda3")
                     ;; Si usas Windows, puedes añadir rutas aquí:
                     ((file-exists-p "C:/ProgramData/anaconda3") "C:/ProgramData/anaconda3"))))
    (when conda-path
      (setq conda-anaconda-home conda-path)
      (setq conda-env-home-directory conda-path)))

  :config
  ;; 2. Integración estándar
  (conda-env-initialize-interactive-shells)
  (conda-env-initialize-eshell)
  (conda-env-autoactivate-mode 1)
  
  ;; 3. Forzar que el shell de Python siga al entorno de Conda
  (add-hook 'python-mode-hook 'conda-env-activate-for-buffer))

(provide 'init-conda)
