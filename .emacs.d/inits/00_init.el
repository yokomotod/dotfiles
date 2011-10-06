;; server
;; (server-start)

;;
(setq inhibit-startup-message t)

;; turn on font-lock mode
(global-font-lock-mode t)

;; enable visual feedback on selections
(setq-default transient-mark-mode t)

;;対応する括弧をハイライト表示させる
(if (fboundp 'show-paren-mode)
    (show-paren-mode 1))

;; don't make backup files
(setq backup-inhibited t)

;; delete auto save files when exit
(setq delete-auto-save-files t)

(global-set-key "\C-m" 'newline-and-indent)
(global-set-key "\C-j" 'newline)

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
