;; server
;; (server-start)

;;
;; (set-language-environment "Japanese")

;;
(setq inhibit-startup-message t)

;; turn on font-lock mode
(global-font-lock-mode t)

(global-set-key "\C-h" 'delete-backward-char)

;; enable visual feedback on selections
(setq-default transient-mark-mode t)

;; hilight parens
(if (fboundp 'show-paren-mode)
    (show-paren-mode 1))

;; number backup files
;; auto delete excess
(setq make-backup-files t)
(setq version-control t)
(setq kept-new-versions 600000)
(setq kept-old-versions 600000)
;; (setq delete-old-versions t)

;; make backup files in ~/.emacs.d/backup
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backup"))
	    backup-directory-alist))

;; don't make backup files
;; (setq backup-inhibited t)

;; delete auto save files when exit
;; (setq delete-auto-save-files t)

;; enable auto revert mode
(global-auto-revert-mode t)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
