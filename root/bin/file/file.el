(defun wymux/goto-char ()
  "Go to char."
  (interactive)
  (let ((char (read-char-from-minibuffer "Char: ")))
    (forward-char)
    (search-forward (char-to-string char))
    (backward-char)))

(defun wymux/find-all ()
  "Find any file in ~."
  (interactive)
  (let ((regexp (concat "*" (read-from-minibuffer "Find: ") "*")))
    (find-name-dired "~" regexp)))

(defun wymux/find-makefile ()
  "Find makefile"
  (interactive)
  (find-file "Makefile"))

(defun wymux/goto-char ()
  "Go to char."
  (interactive)
  (let ((char (read-char-from-minibuffer "Char: ")))
    (forward-char)
    (search-forward (char-to-string char))
    (backward-char)))

(defun wymux/make-directory ()
  "Create directory"
  (let ((dir (file-name-directory buffer-file-name)))
    (unless (file-exists-p dir)
      (make-directory dir t))))

(defun wymux/recentf-find ()
  "Open recentf file."
  (interactive)
  (find-file (completing-read "Open recent: " recentf-list)))

(defun wymux/swap-line-down ()
  "Swap current line with next line."
  (kill-whole-line)
  (forward-line 1)
  (yank))

(defun wymux/swap-line-up ()
  "Swap current line with previous line."
  (kill-whole-line)
  (forward-line -1)
  (yank))

(defun wymux/swap-lines ()
  "Swap lines."
  (interactive)
  (cond
   ((eq current-prefix-arg nil)
    (wymux/swap-line-up))
   ((eq current-prefix-arg 1)
    (wymux/swap-line-down))))

(defun wymux/zap-backward-up-to-char ()
  "Inverse of `zap-up-to-char'."
  (interactive)
  (let ((char (read-char-from-minibuffer "Reverse zap: "))
	(pt (point)))
    (save-excursion
      (search-backward (char-to-string char))
      (forward-char)
      (delete-region (point) pt))))

(defun wymux/compile ()
  "`compile'
Created: Wednesday, March-08-2023 19:12:39"
  (interactive)
  (compile "make")
  (switch-to-buffer "*compilation*"))

(defun wymux/space-in-line-to-dash ()
  "Change space in line to dash.
Created: Wednesday, March-08-2023 20:16:33"
  (interactive)
  (save-excursion
    (let ((p1
	   (progn
	     (move-beginning-of-line 1)
	     (point)))
	  (p2
	   (progn
	     (move-end-of-line 1)
	     (point))))
      (narrow-to-region p1 p2)
      (move-beginning-of-line 1)
      (replace-regexp " " "-")
      (widen))))

