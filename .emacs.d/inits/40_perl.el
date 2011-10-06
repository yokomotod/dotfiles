(defalias 'perl-mode 'cperl-mode)
;; *.t
(setq auto-mode-alist(cons '("\\.t$" . cperl-mode) auto-mode-alist))
;; PerlStyle
(add-hook 'cperl-mode-hook
          '(lambda ()
                  (cperl-set-style "PerlStyle")))

(setq cperl-hairy t)

;; perl completion
(add-hook 'cperl-mode-hook (lambda ()
                             (require 'perl-completion)
                             (perl-completion-mode t)))
;; perl tidy
(defun perltidy-region ()
  "Run perltidy on the current region."
  (interactive)
  (save-excursion
    (shell-command-on-region (point) (mark) "perltidy -q" nil t)))
(defun perltidy-defun ()
  "Run perltidy on the current defun."
  (interactive)
  (save-excursion (mark-defun)
		  (perltidy-region)))

