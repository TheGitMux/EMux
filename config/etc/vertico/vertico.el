(setq vertico-count 5)
(vertico-mode t)
(vertico-grid-mode -1)
(vertico-buffer-mode -1)
(fido-mode -1)

(setq vetico-multi-formcommands
      '((hippie-completing-read)
	(execute-extended-command unobtrusive)))

(setq vertico-multiform-categories
      '((buffer flat (vertico-cycle . t))))

