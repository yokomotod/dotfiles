
(setq load-path (cons "~/.emacs.d/elisp" load-path))

(require 'init-loader)
(init-loader-load)

;; 00 general
;; 10 pre-execute
;; 20 functions
;; 30 extention
;; 40 major-mode
;; 50 minor-mode
;; 90 post-execute


