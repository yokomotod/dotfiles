(require 'anything-startup)
(setq anything-c-filelist-file-name "~/.emacs.d/all.filelist")
;; (setq anything-grep-candidates-fast-directory-regexp "^/tmp")

(defun anything-filelist++ ()
  (interactive)
  (anything-other-buffer
   '(anything-c-source-ffap-line
     anything-c-source-ffap-guesser
     anything-c-source-buffers+
     anything-c-source-recentf
     anything-c-source-bookmarks
     anything-c-source-file-cache
     anything-c-source-files-in-current-dir+
     anything-c-source-filelist)
   "*anything file list*"))
