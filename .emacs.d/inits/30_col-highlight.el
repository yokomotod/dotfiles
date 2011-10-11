(require 'col-highlight)

;; If you want to turn on continual current-column highlighting by
;; default, then add this to your init file:
;; (column-highlight-mode 1)

;; If you want to turn on automatic idle highlighting of the current
;; column, then add this to your init file:
(toggle-highlight-column-when-idle 1)

;; If you want to use a different wait interval, before idle
;; highlighting begins, then set it in your init file using
;; `col-highlight-set-interval':
(col-highlight-set-interval 6) ; Wait 6 idle secs.
