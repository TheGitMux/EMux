(defcustom wymux-exheres-directory "~/Internet/Git/Exherbo/"
  "Directory of local exheres.")

(defun wymux/bump-exheres ()
  "Bump exheres."
  (interactive)
  (cond
   ((derived-mode-p 'dired-mode)
    (wymux/dired-bump-exheres))))

(defun wymux/dired-bump-exheres ()
  "Bump package in dired."
  (let ((file (file-name-nondirectory (dired-get-filename)))
	(new-version (read-from-minibuffer "Bump to: "))
	(version))
    (setq file (string-trim-right file ".exheres-0"))
    (setq version (string-trim-left file "[A-Za-z]+-"))
    (dired-do-rename-regexp version new-version)))

(defun wymux/find-exheres ()
  "Find exheres in 'exheres-directory'.
Created: Friday, March-10-2023 11:39:44
Revised: Friday, March-10-2023 13:14:41"
  (interactive)
  (let ((regexp (string-trim (read-regexp "Exheres: "))))
  (find-name-dired wymux-exheres-directory (concat "*" regexp "*"))))

(defun wymux/exherbo-ediff ()
  "Ediff between current buffer and other version automatically.
Created: Friday, March-10-2023 12:01:18"
  (interactive)
  (save-excursion
      (let* ((cur-file (file-name-nondirectory (buffer-file-name)))
	     (cur-dir-v (format "%s" (nth 9 (split-string (buffer-file-name) "/"))))
	     (other-dir (delete cur-dir-v (delete "." (delete ".." (directory-files "../../.")))))
	     (dir (completing-read "Diff diretory" other-dir)))
	(ediff-files cur-file (replace-regexp-in-string cur-dir-v dir (buffer-file-name))))))

(defun wymux/exherbo-get-url (category package)
  "Acquire url for package.
Created: Saturday, March-11-2023 08:53:57
Revised: Sunday, March-12-2023 21:03:49"
  (let ((urls))
    (with-temp-buffer
      (shell-command (concat "doas cave show -k DOWNLOADS "
			     (shell-quote-argument category)
			     "/"
			     (shell-quote-argument package)) (current-buffer))
      (search-forward "Summary")
      (while (re-search-forward "\\(https?://\\|www\\.\\)[^\s]+\\(\s\\|$\\)" nil t)
	(setq urls (string-trim (match-string 0)))))
    urls))

(defun wymux/exherbo-acquire-category-package-exheres ()
  "Acquire category/package from current exheres.
Created: Saturday, March-11-2023 21:26:08"
  (interactive)
  (let ((cut-str "packages/")
	(cut-path (buffer-file-name))
	(cut-dir (file-name-nondirectory (buffer-file-name))))
    (let ((i1 (+ 9 (string-match cut-str cut-path)))
	  (i2 (- (string-match cut-dir cut-path) 1)))
      (let* ((short-str (substring cut-path i1 i2))
	    (exlist (split-string short-str "/")))
	(let ((category (nth 0 exlist))
	  (package (nth 1 exlist)))
	(message "%s/%s" category package))))))
