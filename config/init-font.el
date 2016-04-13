;; English font
(set-face-attribute 'default nil :font "Courier New 8")

;; Chinese font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
		    charset
		    (font-spec :family "Microsoft YaHei" :size 10)))
 
(provide 'init-font)
