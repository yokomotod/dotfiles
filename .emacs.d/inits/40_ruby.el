;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ruby-mode.el
(add-hook 'ruby-mode-hook
          '(lambda ()
              (turn-on-font-lock)
              (set-face-foreground font-lock-comment-face "dim grey")
              (set-face-foreground font-lock-string-face "light slate blue")
              (set-face-foreground font-lock-function-name-face "black")
              (set-face-foreground font-lock-variable-name-face "red")
              (set-face-foreground font-lock-keyword-face "blue")
              (set-face-foreground font-lock-type-face "dark green")))
(autoload 'ruby-mode "ruby-mode" "ruby script coding mode" t)
(setq auto-mode-alist
      (nconc '(("\\.rb" . ruby-mode)) auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ruby-electric.el
(require 'ruby-electric)
(add-hook 'ruby-mode-hook
          '(lambda ()
             (ruby-electric-mode t)
             ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ruby-block.el
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

