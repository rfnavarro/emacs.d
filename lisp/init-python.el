;;; init-python.el --- Python editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; I use nix + direnv instead of virtualenv/pyenv/pyvenv, and it is an
;; approach which extends to other languages too. I recorded a
;; screencast about this: https://www.youtube.com/watch?v=TbIHRHy7_JM


(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
                ("SConscript\\'" . python-mode))
              auto-mode-alist))

(setq python-shell-interpreter "python3")
;; (setq python-shell-interpreter "ipython"
;;       python-shell-interpreter-args "--simple-prompt -i")




(require-package 'pip-requirements)

(when (maybe-require-package 'flymake-ruff)
  (defun sanityinc/flymake-ruff-maybe-enable ()
    (when (executable-find "ruff")
      (flymake-ruff-load)))
  (add-hook 'python-mode-hook 'sanityinc/flymake-ruff-maybe-enable))

(with-eval-after-load 'eglot
  ;; This addition of "ty" has been upstreamed as of Dec 2025, but not
  ;; yet released in ELPA versions of eglot.
  (push `((python-mode python-ts-mode)
          . ,(eglot-alternatives
              '(("ty" "server")
                "pylsp"
                "pyls"
                ("basedpyright-langserver" "--stdio")
                ("pyright-langserver" "--stdio")
                ("pyrefly" "lsp")
                "jedi-language-server" ("ruff" "server") "ruff-lsp")))
        eglot-server-programs))

(maybe-require-package 'ruff-format)

(when (maybe-require-package 'toml-mode)
  (add-to-list 'auto-mode-alist '("\\(poetry\\|uv\\)\\.lock\\'" . toml-mode)))

(when (maybe-require-package 'reformatter)
  (reformatter-define black :program "black" :args '("-")))

(with-eval-after-load 'project
  (add-to-list 'project-vc-extra-root-markers "pyproject.toml"))
(with-eval-after-load 'projectile
  (add-to-list 'projectile-project-root-files "pyproject.toml"))


;; atajos con outline y hsline

(add-hook 'python-mode-hook
          (lambda ()
            ;; 1. Hideshow: Ocultar bloques de código (funciones, clases, if/for)
            (hs-minor-mode 1)

            ;; 2. Outline: Plegar el archivo basado en tus comentarios "# ---"
            (outline-minor-mode 1)

            ;; Detecta líneas que empiecen con "# ---" (incluso si tienen espacios antes)
            (setq-local outline-regexp "# ---")))



(provide 'init-python)
;;; init-python.el ends here
