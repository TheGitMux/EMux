(defun wymux/exwm-kill ()
  "Kill exwm and emacs."
  (interactive)
  (recentf-save-list)
  (emms-player-mpd-disconnect)
  (exwm-exit)
  (kill-emacs))

(defun wymux/term-below ()
  "Open `term' in window below."
  (interactive)
  (split-window-vertically)
  (windmove-down)
  (term "mksh"))

(defun wymux/term-above ()
  "Open `term' in window above."
  (interactive)
  (split-window-vertically)
  (term "mksh"))
