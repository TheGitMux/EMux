(defun archmux/find-project-org ()
  "Open project file."
  (interactive)
  (find-file-existing "~/Media/Document/Emacs/Org/Project/project.org")
  (read-only-mode)
)
