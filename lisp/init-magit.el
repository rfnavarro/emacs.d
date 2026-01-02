
;; Magit setup

(use-package delight
 :ensure t)


(use-package magit
 :custom
 (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1)
 :ensure t)

(use-package git-gutter
 :ensure t
 :defer 0.3
 :delight
 :init (global-git-gutter-mode))

(use-package git-timemachine
 :ensure t
 :defer 1
:delight)

(provide 'init-magit)
