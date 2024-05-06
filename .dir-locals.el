;;; $ANSIBLE_BASE_DIR/.dir-locals.el -*- lexical-binding: t; -*-

;;(setq-local
;;  lsp-bridge-get-single-lang-server-by-project
;;  (lambda (project-path filepath)
;;    (when (string-equal filepath "./workstation/roles/cli_workstation/tasks/main.yml")
;;      "ansible-language-server --stdio")))

((".dir-locals.el"
  . ((lisp-mode . ((eval . (parinfer-rust-mode))))))
 (yaml-mode
  . ((eval . (+ansible-yaml-mode))))
 (yaml-ts-mode
  . ((eval . (+ansible-yaml-mode))))
 (nil . ((eval . (setq lsp-bridge-get-single-lang-server-by-project
                              (lambda (project-path filepath)
                                (when (string-equal project-path "~/.local/ansible/workstation")
                                                                 ;;(file-name-directory buffer-file-name)
                                  (ansible-language-server))))))))
