(setq ispell-program-name "hunspell")
;; Debe coincidir con el nombre del archivo descargado (sin extensión)
(setq ispell-dictionary "es_ES")

(use-package cape
  :ensure t
  :init
  ;; Añade las palabras de ispell/hunspell a las sugerencias de Corfu
  (add-to-list 'completion-at-point-functions #'cape-ispell))

(provide 'init-ispell)
