(global-set-key (kbd "C-c f c") 'archmux/open-collection-file)
(global-set-key (kbd "C-c f p") 'find-file-at-point)
(global-set-key (kbd "C-c a n") 'gnus-other-frame)
(global-set-key (kbd "<backtab>") 'hippie-expand)
(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "C-c o m") 'man)
(global-set-key (kbd "C-c o w") 'woman)
(define-key (current-global-map) [remap magit-status] 'archmux/magit-status-other-frame)

