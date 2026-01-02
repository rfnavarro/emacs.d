;; Rainbow Delimeter

(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))


;; Helpful Help Commands

(use-package helpful
  :ensure t
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))


;; Ivy and Counsel. Completition

(use-package ivy
  :ensure t
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

(use-package ivy-rich
  :ensure t
  :init
  (ivy-rich-mode 1))

(use-package counsel
  :ensure t
  :bind (("C-M-j" . 'counsel-switch-buffer)
         :map minibuffer-local-map
         ("C-r" . 'counsel-minibuffer-history))
  :custom
  (counsel-linux-app-format-function #'counsel-linux-app-format-function-name-only)
  :config
  (counsel-mode 1))



;; recordar mis funciones mas ejecutadas, guardar historial
(use-package ivy-prescient
  :ensure t
  :after counsel
  :config
  (ivy-prescient-mode 1)
  (prescient-persist-mode 1)) ;; Esto guarda el historial cuando cierras Emacs


;; Menu desplegable de ayuda con C-c
(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1))


;; evitar parpadeo de cursor
(blink-cursor-mode 1)

;; Autocompletar parentesis
(use-package electric
  :ensure nil
  :config
  (electric-pair-mode 1))


;; iluminar codigo igual en todas las lineas y reemplazarlo. Iluminiacion y edicion
(use-package iedit
  :ensure ;TODO: 
  :bind ("C-;" . iedit-mode)) ;; Asigna Control + punto y coma


;; ;;EN TERMINAL: Flecha hacia arriba muestre el ultimo codigo ejecutado
;;  (with-eval-after-load 'comint
;;    (define-key comint-mode-map (kbd "<up>") 'comint-previous-input)
;;    (define-key comint-mode-map (kbd "<down>") 'comint-next-input))



;; (use-package ef-themes
;;   :ensure t
;;   :config
;;   (load-theme 'wombat))


(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)


;; (let ((mono-spaced-font "Monospace")
;;       (proportionately-spaced-font "Sans"))
;;   (set-face-attribute 'default nil :family mono-spaced-font :height 125)
;;   (set-face-attribute 'fixed-pitch nil :family mono-spaced-font :height 1.0)
;;   (set-face-attribute 'variable-pitch nil :family proportionately-spaced-font :height 1.0))


;;Mostrar el path completo del archivo

;; (setq-default mode-line-buffer-identification
;;               (list 'buffer-file-name
;;                     (propertized-buffer-identification "%12f")
;;                     (propertized-buffer-identification "%12b")))



(provide 'init-me)






