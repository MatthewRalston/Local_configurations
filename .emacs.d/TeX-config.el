(add-hook 'reftex-load-hook 'imenu-add-menubar-index)
(add-hook 'reftex-mode-hook 'imenu-add-menubar-index)
(getenv "PATH")
 (setenv "PATH"
(concat
 "/usr/texbin" ":"
(getenv "PATH")))
(setq TeX-PDF-mode t)
