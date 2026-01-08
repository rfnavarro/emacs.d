(setq ispell-program-name "hunspell")
;; Debe coincidir con el nombre del archivo descargado (sin extensión)
(setq ispell-dictionary "es_ES")

;; (use-package cape
;;   :ensure t
;;   :demand t
;;   :init
;;   ;; Añade las palabras de ispell/hunspell a las sugerencias de Corfu
;;   (add-to-list 'completion-at-point-functions #'cape-ispell))


(add-hook 'latex-mode-hook #'flyspell-mode)
(add-hook 'LaTeX-mode-hook #'flyspell-mode) ;; AUCTeX

(setq flyspell-issue-message-flag nil) ;; no mensajes molestos

(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq flyspell-generic-check-word-predicate
                  'flyspell-generic-progmode-verify)))


(use-package cape
  :ensure t)

(add-hook 'text-mode-hook
          (lambda ()
            (add-to-list 'completion-at-point-functions
                         #'cape-dict)))

;; (add-hook 'LaTeX-mode-hook
;;           (lambda ()
;;             (add-to-list 'completion-at-point-functions
;;                          #'cape-dict)))
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (flyspell-mode -1)))

;(setq cape-dict-file "/Users/rafael/Library/Spelling/es_ES") ;; inglés



(provide 'init-ispell)
