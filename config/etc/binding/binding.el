(define-key minibuffer-mode-map (kbd "<return>") 'wymux/minibuffer)
(define-key global-map (kbd "C-c m") nil)

(global-set-key (kbd "C-=") 'tempel-next)
(global-set-key (kbd "C--") 'tempel-prev)
(global-set-key (kbd "C-0") 'tempel-done)
(global-set-key (kbd "C-c a e") 'eshell)
(global-set-key (kbd "C-c a h") 'man)
(global-set-key (kbd "C-c a m") 'mh-rmail)
(global-set-key (kbd "C-c f e") 'wymux/find-exheres)
(global-set-key (kbd "C-c f n") 'find-name-dired)
(global-set-key (kbd "C-c f r") 'recentf-open-more-files)
(global-set-key (kbd "C-c f p") 'find-file-at-point)
(global-set-key (kbd "C-c w s") 'window-swap-states)
(global-set-key (kbd "C-]") 'hippie-completing-read)
(global-set-key (kbd "<f7>") 'wymux/enable-light-theme)
(global-set-key (kbd "<f8>") 'wymux/enable-dark-theme)
(global-set-key (kbd "C-c m r")	'recompile)
(global-set-key (kbd "C-c m c")	'compile)

(global-set-key (kbd "<XF86AudioLowerVolume>") 'wymux/lower-volume)
(global-set-key (kbd "<XF86AudioRaiseVolume>") 'wymux/raise-volume)
(global-set-key (kbd "<XF86AudioMute>") 'wymux/toggle-volume)
(global-set-key (kbd "<XF86MonBrightnessUp>") 'wymux/raise-brightness)
(global-set-key (kbd "<XF86MonBrightnessDown>") 'wymux/lower-brightness)

(define-key ggtags-mode-map (kbd "C-w") 'wymux/kill-delete-buffer)
