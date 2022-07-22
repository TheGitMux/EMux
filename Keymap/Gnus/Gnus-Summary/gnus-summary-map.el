(define-prefix-command 'gnus-summary-space-layer)
(define-key gnus-summary-mode-map (kbd "SPC")	'gnus-summary-space-layer)
;; (define-key gnus-summary-mode-map (kbd "k")	'gnus-summary-next-thread)
;; (define-key gnus-summary-mode-map (kbd "l")	'gnus-summary-prev-thread)
(define-key gnus-summary-mode-map (kbd "k")	'forward-line)
(define-key gnus-summary-mode-map (kbd "l")	'previous-line)
(define-key gnus-summary-mode-map (kbd "SPC k")	'gnus-summary-next-unread-subject)
(define-key gnus-summary-mode-map (kbd "SPC l")	'gnus-summary-prev-unread-subject)
(define-key gnus-summary-mode-map (kbd "[")	'gnus-summary-down-thread)
(define-key gnus-summary-mode-map (kbd "]")	'gnus-summary-up-thread)