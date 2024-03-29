(defvar keymux-bracket '("()" "[]" "{}" "<>"))

(defvar keymux-modal-list '("exheres-mode" "html-mode" "c-mode" "c++-mode"
			    "wymux/go-mode"))

(defconst keymux-left-brackets
  (mapcar (lambda (x) (substring x 0 1)) keymux-bracket))

(defconst keymux-right-brackets
  (mapcar (lambda (x) (substring x 1 2)) keymux-bracket))

(defgroup keymux-modal-mode nil
  "Global modal minor mode."
  :group 'keyboard)

(defcustom keymux-insert-cursor-color "#8888FF"
  "Cursor color of insertion mode."
  :type 'color
  :group 'keymux-modal-mode)

(defcustom keymux-command-cursor-color "#FF8888"
  "Cursor color of command mode."
  :type 'color
  :group 'keymux-modal-mode)

(defvar keymux-mode-hook nil
  "Executed when `keymux-modal-mode' is enabled.")

(defvar keymux-mode-exit-hook nil
  "Executed when `keymux-modal-mode' is disabled.")

(defvar keymux-command-map (make-sparse-keymap))

(define-key keymux-command-map (kbd "a") 'execute-extended-command)

(define-key keymux-command-map (kbd "d d") 'kill-whole-line)
(define-key keymux-command-map (kbd "d p") 'wymux/kill-paragraph)
(define-key keymux-command-map (kbd "d r") 'kill-region)
(define-key keymux-command-map (kbd "d s") 'kill-sexp)
(define-key keymux-command-map (kbd "d w") 'wymux/kill-word)
(define-key keymux-command-map (kbd "d x b") 'wymux/kill-whole-buffer)
(define-key keymux-command-map (kbd "d x f") 'wymux/kill-file-relative)
(define-key keymux-command-map (kbd "d x p") 'wymux/kill-file-path)
(define-key keymux-command-map (kbd "D") 'kill-line)

(define-key keymux-command-map (kbd "r") 'kill-word)
(define-key keymux-command-map (kbd "e") 'backward-kill-word)
(define-key keymux-command-map (kbd "c") 'backward-word)
(define-key keymux-command-map (kbd "v") 'forward-word)
(define-key keymux-command-map (kbd "g g") 'embark-act)

(define-key keymux-command-map (kbd "f a") 'wymux/find-all)
(define-key keymux-command-map (kbd "f d") 'dired-jump)
(define-key keymux-command-map (kbd "f e") 'wymux/find-all)
(define-key keymux-command-map (kbd "f f") 'find-file)
(define-key keymux-command-map (kbd "f l") 'locate)
(define-key keymux-command-map (kbd "f m") 'wymux/find-makefile)
(define-key keymux-command-map (kbd "f p") 'ffap)
(define-key keymux-command-map (kbd "f r") 'wymux/find-file-subdirectory)
(define-key keymux-command-map (kbd "f t") 'wymux/recentf-find)
(define-key keymux-command-map (kbd "f s") 'save-buffer)

(define-key keymux-command-map (kbd "i") 'keymux-to-insert)

(define-key keymux-command-map (kbd "h a c") 'apropos-command)
(define-key keymux-command-map (kbd "h a v") 'apropos-value)
(define-key keymux-command-map (kbd "h d b") 'describe-bindings)
(define-key keymux-command-map (kbd "h d f") 'describe-function)
(define-key keymux-command-map (kbd "h d s") 'describe-symbol)
(define-key keymux-command-map (kbd "h d v") 'describe-variable)
(define-key keymux-command-map (kbd "h f f") 'find-function)
(define-key keymux-command-map (kbd "h f k") 'find-function-on-key)
(define-key keymux-command-map (kbd "h m") 'man)

(define-key keymux-command-map (kbd "k") 'backward-char)
(define-key keymux-command-map (kbd "l") 'next-line)
(define-key keymux-command-map (kbd "o") 'previous-line)
(define-key keymux-command-map (kbd ";") 'forward-char)

(define-key keymux-command-map (kbd "g c") 'hop-char)
(define-key keymux-command-map (kbd "g o") 'goto-line)
(define-key keymux-command-map (kbd "g e") 'hop-word)
(define-key keymux-command-map (kbd "g l") 'hop-line)
(define-key keymux-command-map (kbd "g w") 'hop-line-skip-whitespace)

(define-key keymux-command-map (kbd "m b") 'mark-whole-buffer)
(define-key keymux-command-map (kbd "m m") 'back-to-indentation)
(define-key keymux-command-map (kbd "C-o") 'occur)
(define-key keymux-command-map (kbd "C-s") 'wymux/search)
(define-key keymux-command-map (kbd "n") 'wymux/search-forward)
(define-key keymux-command-map (kbd "N") 'wymux/search-backward)
(define-key keymux-command-map (kbd "M-o") 'open-line)

(define-key keymux-command-map (kbd "u") 'undo)
(define-key keymux-command-map (kbd "y") 'yank)

(define-key keymux-command-map (kbd "w r") 'wymux/zap-backward-up-to-char)
(define-key keymux-command-map (kbd "w t") 'zap-up-to-char)
(define-key keymux-command-map (kbd "x") 'delete-char)

(define-key keymux-command-map (kbd "-") 'wymux/backward-whitespace)
(define-key keymux-command-map (kbd "=") 'forward-whitespace)
(define-key keymux-command-map (kbd "C-\-") 'move-beginning-of-line)
(define-key keymux-command-map (kbd "C-=") 'move-end-of-line)
(define-key keymux-command-map (kbd "[") 'forward-paragraph)
(define-key keymux-command-map (kbd "]") 'backward-paragraph)
(define-key keymux-command-map (kbd "C-[") 'scroll-up-command)
(define-key keymux-command-map (kbd "C-]") 'scroll-down-command)
(define-key keymux-command-map (kbd "<home>") 'beginning-of-buffer)
(define-key keymux-command-map (kbd "<end>") 'end-of-buffer)

;; (define-key keymux-command-map (kbd "<tab> q") 'wymux/edit-string)
;; (define-key keymux-command-map (kbd "<tab> p") 'wymux/edit-parenthesis)
;; (define-key keymux-command-map (kbd "<tab> r") 'indent-region)

(define-key keymux-command-map (kbd "C-d") 'duplicate-dwim)
(define-key keymux-command-map (kbd "C-r") 'query-replace)
(define-key keymux-command-map (kbd "t") 'set-mark-command)
(define-key keymux-command-map (kbd "p g") 'grep)
(define-key keymux-command-map (kbd "p r") 'rgrep)

(define-key keymux-command-map (kbd "C-y") 'yank-pop)

(define-key keymux-command-map (kbd "C-v") 'visual-line-mode)
(define-key keymux-command-map (kbd "C-i") 'ibuffer)
(define-key keymux-command-map (kbd "C-1") 'jump-to-register)
(define-key keymux-command-map (kbd "C-8") 'wymux/toggle-view)
(define-key keymux-command-map (kbd "C-0") 'read-only-mode)
(define-key keymux-command-map (kbd "C-9") 'wymux/refresh-global-tempel-mode)

(define-key keymux-command-map (kbd ".") 'repeat)
(define-key keymux-command-map (kbd ",") 'repeat-complex-command)

;; (define-key keymux-command-map (kbd "<tab> k b") 'eval-buffer)
;; (define-key keymux-command-map (kbd "<tab> k d") 'eval-defun)
;; (define-key keymux-command-map (kbd "<tab> k r") 'eval-region)

(define-key keymux-command-map (kbd "<kp-home>") 'gnus)
(define-key keymux-command-map (kbd "<kp-up>") 'emms)
(define-key keymux-command-map (kbd "<kp-prior>") 'mh-rmail)
(define-key keymux-command-map (kbd "<kp-left>") 'wymux/eshell)
(define-key keymux-command-map (kbd "<kp-right>") 'magit)
(define-key keymux-command-map (kbd "<kp-begin>") 'wymux/compile)
(define-key keymux-command-map (kbd "<kp-end>") 'wymux/document-read)
(define-key keymux-command-map (kbd "<kp-down> <kp-down>") 'wymux/emms-play-find)
(define-key keymux-command-map (kbd "<kp-down> <kp-begin>") 'emms-play-directory-tree)
(define-key keymux-command-map (kbd "<kp-next>") 'wymux/firefox)

(define-key keymux-command-map (kbd "0") 'digit-argument)
(define-key keymux-command-map (kbd "1") 'digit-argument)
(define-key keymux-command-map (kbd "2") 'digit-argument)
(define-key keymux-command-map (kbd "3") 'digit-argument)
(define-key keymux-command-map (kbd "4") 'digit-argument)
(define-key keymux-command-map (kbd "5") 'digit-argument)
(define-key keymux-command-map (kbd "6") 'digit-argument)
(define-key keymux-command-map (kbd "7") 'digit-argument)
(define-key keymux-command-map (kbd "8") 'digit-argument)
(define-key keymux-command-map (kbd "9") 'digit-argument)

(defvar keymux-default-cursor-color nil)

(define-minor-mode keymux-modal-mode
  "Modal mode."
  :global t
  :keymap keymux-command-map
  (keymux-cursor-refresh))
