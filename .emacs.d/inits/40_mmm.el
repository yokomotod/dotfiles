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
