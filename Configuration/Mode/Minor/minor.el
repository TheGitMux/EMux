(auto-composition-mode		-1)
(auto-compression-mode		-1)
(global-eldoc-mode		-1)
(file-name-shadow-mode		-1)
(fringe-mode			0)
(indent-tabs-mode		-1)
(line-number-mode		-1)
(mouse-wheel-mode		-1)
(tooltip-mode			-1)
(transient-mark-mode		-1)

;; Disable modes enabled by default
;;
;;

(auto-insert-mode               1)
(auto-save-mode			1)
(auto-save-visited-mode         1)
(global-hl-line-mode            1)
(savehist-mode			1)
(window-divider-mode		1)

;; Enable modes disabled by default
;;
;;

(load-file (concat user-emacs-directory "Configuration/Mode/Zoom/zoom.el"))

;; Resize focus window automatically: Zoom Mode
;; https://github.com/cyrus-and/zoom
;;

(load-file (concat user-emacs-directory "Configuration/Mode/Window-Divider/window_divider.el"))

;; Define `window-divider-mode' variables
;;
;;

(fido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point 'guess)
(setq ido-everywhere t)

(load-file "~/Internet/Git/Emacs/Mode/ggtags.git/ggtags.el")

(add-hook 'c-mode-common-hook
	  (lambda ()
	    (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
	      (ggtags-mode 1))))

;; Non-standard minor modes
;;
;;

