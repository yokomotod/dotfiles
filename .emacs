;;
(setq inhibit-startup-message t)

;; turn on font-lock mode
(global-font-lock-mode t)

;; enable visual feedback on selections
(setq-default transient-mark-mode t)

;;対応する括弧をハイライト表示させる
(if (fboundp 'show-paren-mode)
    (show-paren-mode 1))

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; load path
(setq load-path (cons "~/.emacs.d/elisp" load-path))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CPerl Mode
(defalias 'perl-mode 'cperl-mode)
;; *.t
(setq auto-mode-alist(cons '("\\.t$" . cperl-mode) auto-mode-alist))
;; PerlStyle
(add-hook 'cperl-mode-hook
          '(lambda ()
                  (cperl-set-style "PerlStyle")))


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; ruby-mode.el
;; (add-hook 'ruby-mode-hook
;;           '(lambda ()
;;               (turn-on-font-lock)
;;               (set-face-foreground font-lock-comment-face "dim grey")
;;               (set-face-foreground font-lock-string-face "light slate blue")
;;               (set-face-foreground font-lock-function-name-face "black")
;;               (set-face-foreground font-lock-variable-name-face "red")
;;               (set-face-foreground font-lock-keyword-face "blue")
;;               (set-face-foreground font-lock-type-face "dark green")))
;; (autoload 'ruby-mode "ruby-mode" "ruby script coding mode" t)
;; (setq auto-mode-alist
;;       (nconc '(("\\.rb" . ruby-mode)) auto-mode-alist))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; ruby-electric.el
;; (require 'ruby-electric)
;; (add-hook 'ruby-mode-hook
;;           '(lambda ()
;;              (ruby-electric-mode t)
;;              ))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; ruby-block.el
;; (require 'ruby-block)
;; (ruby-block-mode t)
;; (setq ruby-block-highlight-toggle t)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;;;  flymake for ruby
;; (require 'flymake)
;; ;; I don't like the default colors :)
;; (set-face-background 'flymake-errline "red4")
;; (set-face-background 'flymake-warnline "dark slate blue")
;; ;; Invoke ruby with '-c' to get syntax checking
;; (defun flymake-ruby-init ()
;;   (let* ((temp-file   (flymake-init-create-temp-buffer-copy
;;                        'flymake-create-temp-inplace))
;;          (local-file  (file-relative-name
;;                        temp-file
;;                        (file-name-directory buffer-file-name))))
;;     (list "ruby" (list "-c" local-file))))
;; (push '(".+\\.rb$" flymake-ruby-init) flymake-allowed-file-name-masks)
;; (push '("Rakefile$" flymake-ruby-init) flymake-allowed-file-name-masks)
;; (push '("^\\(.*\\):\\([0-9]+\\): \\(.*\\)$" 1 2 nil 3) flymake-err-line-patterns)


;; (add-hook
;;  'ruby-mode-hook
;;  '(lambda ()
;;     ;; Don't want flymake mode for ruby regions in rhtml files
;;     (if (not (null buffer-file-name)) (flymake-mode))))


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; flymake for ruby, show error in minibuffer
;; (defun flymake-display-err-minibuf () 
;;   "Displays the error/warning for the current line in the minibuffer"
;;   (interactive)
;;   (let* ((line-no             (flymake-current-line-no))
;;          (line-err-info-list  (nth 0 (flymake-find-err-info flymake-err-info line-no)))
;;          (count               (length line-err-info-list))
;;          )
;;     (while (> count 0)
;;       (when line-err-info-list
;;         (let* ((file       (flymake-ler-file (nth (1- count) line-err-info-list)))
;;                (full-file  (flymake-ler-full-file (nth (1- count) line-err-info-list)))
;;                (text (flymake-ler-text (nth (1- count) line-err-info-list)))
;;                (line       (flymake-ler-line (nth (1- count) line-err-info-list))))
;;           (message "[%s] %s" line text)
;;           )
;;         )
;;       (setq count (1- count)))))

;; (add-hook
;; 'ruby-mode-hook
;; '(lambda ()
;;    (define-key ruby-mode-map "\C-cd" 'flymake-display-err-minibuf)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ; mmm-mode in php
;; (require 'mmm-mode)
;; (setq mmm-global-mode 'maybe)
;; ;; (setq mmm-submode-decoration-level 2)
;; (set-face-background 'mmm-default-submode-face nil)
;; (setq mmm-font-lock-available-p t)
;; (mmm-add-mode-ext-class nil "\\.php?\\'" 'html-php)
;; (mmm-add-mode-ext-class nil "\\.ctp?\\'" 'html-php)
;; (mmm-add-classes
;;  '((html-php
;;     :submode php-mode
;;     :front "<\\?\\(php\\)?"
;;     :back "\\?>")))
;; (add-to-list 'auto-mode-alist '("\\.php?\\'" . xml-mode))
;; (add-to-list 'auto-mode-alist '("\\.ctp?\\'" . xml-mode))

;;;; mmm-mode
;;;;;(require 'mmm-mode)
;;;;;(require 'mmm-sample)
;; (require 'mmm-auto)
;; (setq mmm-submode-decoration-level 2)
;; (invert-face 'mmm-default-submode-face t)
;; (setq mmm-font-lock-available-p t)
;; (setq mmm-global-mode 'maybe)
;; ; (set-face-bold-p 'mmm-default-submode-face t)
;; (set-face-background 'mmm-default-submode-face nil)
;; (mmm-add-mode-ext-class nil "\\.php?\\'" 'html-php)
;; (mmm-add-mode-ext-class nil "\\.ctp?\\'" 'html-php)
;; (mmm-add-classes
;;  '((html-php
;;     :submode php-mode
;;     :front "<\\?\\(php\\)?"
;;     :back "\\?>")))
;; (add-to-list 'auto-mode-alist '("\\.php?\\'" . yahtml-mode))
;; (add-to-list 'auto-mode-alist '("\\.ctp?\\'" . yahtml-mode))
;; (defun save-mmm-c-locals ()
;;   (with-temp-buffer
;;     (php-mode)
;;     (dolist (v (buffer-local-variables))
;;       (when (string-match "\\`c-" (symbol-name (car v)))
;;         (add-to-list 'mmm-save-local-variables `(,(car v) nil, mmm-c-derived-modes))))))
;; (save-mmm-c-locals)
