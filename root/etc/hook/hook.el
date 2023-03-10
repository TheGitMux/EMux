(add-hook 'dired-mode-hook 'dired-hide-details-mode)
(add-hook 'eshell-load-hook 'abbrev-mode)
(add-hook 'eshell-load-hook 'eat-eshell-mode)
(add-hook 'makefile-mode 'abbrev-mode)
(add-hook 'prog-mode-hook 'abbrev-mode)
(add-hook 'shell-mode-hook 'abbrev-mode)

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-to-list 'find-file-not-found-functions 'wymux/make-directory)
