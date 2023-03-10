(add-to-list 'load-path "~/Internet/Git/Emacs/Window-Manager/exwm/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Window-Manager/xelb/")

(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/vertico.git/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/vertico.git/extensions/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/fzf-native.git/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Completion/flx.git")
(load-file "~/Internet/Git/Emacs/Completion/fussy.git/fussy.el")
(load-file "~/Internet/Git/Emacs/Utility/emacs-eat.git/eat.el")
(load-file "~/Internet/Git/Emacs/Mode/emacs-coterm.git/coterm.el")

(load-file "~/Internet/Git/Emacs/Modeline/feebleline/feebleline.el")
(load-file "~/Internet/Git/Emacs/Utility/tempel.git/tempel.el")
(load-file "~/Internet/Git/Emacs/Utility/speed-type.git/speed-type.el")

(add-to-list 'load-path "/usr/share/emacs/site-lisp/emms/")
(load-file "/usr/share/emacs/site-lisp/mailutils-mh.el")
(load-file "/usr/share/gtags/gtags.el")
(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/paper-mode/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/with-editor/lisp/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/dash.el/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Git/magit/lisp/")
(load-file "~/Internet/Git/Emacs/Mode/ggtags.git/ggtags.el")

(require 'eat)
(require 'eglot)
(require 'emms)
(require 'emms-history)
(require 'emms-playlist-mode)
(require 'emms-player-mpd)
(require 'emms-setup)
(require 'exwm)
(require 'exwm-randr)
(require 'fzf-native)
(require 'vertico)
(require 'vertico-buffer)

(require 'magit)
(require 'paper)
