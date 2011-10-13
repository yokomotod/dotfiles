
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key "\C-j" 'newline)

(global-set-key "\C-x\C-s"  (lambda ()
			      (interactive)
			      (save-buffer 16)))

;; (define-key global-map [f5] 'point-undo)
;; (define-key global-map [f6] 'point-redo)

(global-set-key [(control ?.)] 'goto-last-change)
(global-set-key [(control ?,)] 'goto-last-change-reverse)

(global-set-key (kbd "C-M-/") 'redo)

;; Use C-n/C-p to select candidates
;; (define-key ac-complete-mode-map "\C-n" 'ac-next)
;; (define-key ac-complete-mode-map "\C-p" 'ac-previous)
;; Completion by TAB
;; (define-key ac-complete-mode-map "\t" 'ac-complete)
;; (define-key ac-complete-mode-map "\r" nil)

;; (global-set-key "\C-xb" 'anything-for-files)
;; (global-set-key "\C-xb" 'anything-filelist+)
(global-set-key "\C-xb" 'anything-filelist++)

(global-set-key (kbd "M-y") 'anything-show-kill-ring)

(global-set-key (kbd "M-s") 'anything-c-moccur-occur-by-moccur)
(define-key isearch-mode-map (kbd "C-o") 'anything-c-moccur-from-isearch)

;; (global-set-key (kbd "C-M-o") 'anything-c-moccur-dmoccur)
;; (add-hook 'dired-mode-hook
;;           '(lambda ()
;;              (local-set-key (kbd "O") 'anything-c-moccur-dired-do-moccur-by-moccur)))
;; (global-set-key (kbd "C-M-s") 'anything-c-moccur-isearch-forward)
;; (global-set-key (kbd "C-M-r") 'anything-c-moccur-isearch-backward)
		

