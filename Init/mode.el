 (setq no-littering-etc-directory
	(expand-file-name "no-littering/etc/" user-emacs-directory))
 (setq no-littering-var-directory
	(expand-file-name "no-littering/var/" user-emacs-directory))

(require 'cc-mode)
(require 'conf-mode)
(require 'dired)
(require 'dirvish)
(require 'doneburn-theme)
(require 'exheres-mode-autoloads)
(require 'gnus)
(require 'gnus-agent)
(require 'gnus-group)
(require 'gnus-srvr)
(require 'esh-mode)
(require 'info)
(require 'magit)
(require 'make-mode)
(require 'mini-frame)
(require 'no-littering)
(require 'org)
(require 'ryo-modal)
(require 'skeleton)
(require 'shell)
(require 'stimmung-themes)

(add-hook 'dired-mode-hook	'ryo-modal-mode)
(add-hook 'org-mode-hook	'ryo-modal-mode)
(add-hook 'prog-mode-hook	'ryo-modal-mode)

(add-hook 'find-file-hook	'archmux/append-to-project-file)

;; Enable mode

(global-hl-line-mode)
(electric-pair-mode)
(mini-frame-mode)
(nano-modeline-mode)
(show-paren-mode)
(scroll-bar-mode -1)
(tooltip-mode -1)
;; (dirvish-override-dired-mode)

;; Ryo mode

(setq initial-major-mode 'ryo-modal-mode)
(suppress-keymap ryo-modal-mode-map 't)

;; C mode

(load-file (concat user-emacs-directory "Mode/C/c.el"))

;; Dired mode

(load-file (concat user-emacs-directory "Mode/Dired/dired.el"))

;; Gnus mode

(load-file (concat user-emacs-directory "Mode/Gnus/gnus.el"))

;; Mail handler mode

(load-file (concat user-emacs-directory "Mode/Mh/mh.el"))



