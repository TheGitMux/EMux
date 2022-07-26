(defun wymux/doas-edit ()
  "Elevate permissions with doas."
  (unless (file-writable-p buffer-file-name)
    (find-alternate-file (concat "/doas:root@localhost:" buffer-file-name))))

(defun wymux/exheres-ediff ()
  "Ediff between two files."
  (interactive)
  (let* ((currentfile (file-name-base buffer-file-name))
	 (currentfilenoversion (string-trim-right currentfile ".[0-9]"))
	 (currententirefile buffer-file-name)
	 (directory "~/Internet/Compressed/Package/Exherbo/")
	 (currentcategoryfile (string-trim currententirefile "packages/" (concat "/" currentfilenoversion))))
    (find-dired directory (concat currentcategoryfile "/" currentfilenoversion))))

(defun wymux/find-all ()
  "Find any file in ~."
  (interactive)
  (let ((name (read-from-minibuffer "File: ")))
    (find-name-dired "~" name)))

(defun archmux/find-file-create ()
    "Create directory when utilizing `find-file'."
    (let ((destination-file (file-name-directory buffer-file-name)))
      (if (not (file-exists-p destination-file))
	  (make-directory destination-file t))))

(defun wymux/insert-file-into-buffer ()
  "Insert file path into buffer."
  (interactive)
  (insert (read-file-name "File: ")))

(defun wymux/kill-path ()
  "Kill path."
  (interactive)
  (let ((path (expand-file-name (read-file-name "Path: "))))
    (kill-new path)))

(defun wymux/recentf-find ()
  "Recent find."
  (interactive)
  (find-file (completing-read "File: " recentf-list)))

(defun wymux/save-buffer-compile-config-h ()
  "Execute make install when file is named 'config.h'"
  (interactive)
  (let ((current-file-name (file-name-nondirectory (buffer-file-name))))
    (if (string= current-file-name "config.h")
	(compile "doas make install"))))
