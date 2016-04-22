(require 'color-theme)
(require 'monokai-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     ;(monokai)
     ))


(provide 'init-color-theme)
