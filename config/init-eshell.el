;; Change the default eshell prompt
(setq eshell-prompt-function
      (lambda ()
	(concat "[" (getenv "USERNAME") "@" (getenv "USERDOMAIN") "]"
		"(" (format-time-string "%a %b %e %l:%M %p") ")"
		"\n"
		(eshell/pwd)
		"\n"
		(if (= (user-uid) 0) "#" ">>>~$:")
		)))

(provide 'init-eshell)
