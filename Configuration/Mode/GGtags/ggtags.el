(load-file "~/Internet/Git/Emacs/Mode/ggtags.git/ggtags.el")

(add-hook 'c-mode-common-hook
	  (lambda ()
	    (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
	      (ggtags-mode 1))))
