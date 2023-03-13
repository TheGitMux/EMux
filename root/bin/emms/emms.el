(defun wymux/emms-play-find ()
  "`emms-play-find' in 'emms-source-file-default-directory'.
Created: Friday, March-10-2023 11:19:33"
  (interactive)
  (let ((regexp (read-regexp "Song: ")))
    (emms-play-find emms-source-file-default-directory regexp)))
