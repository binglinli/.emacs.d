(setenv "HOME" "G:/cook/home/binglinli")

(defun li/my-add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))

	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

(li/my-add-to-load-path "lisp" "config")


(require 'init-encodding)
(require 'init-font)
(require 'init-frame)
(require 'init-smex)
(require 'init-company-mode)
(require 'init-function)
(require 'init-window-numbering)
(require 'init-flymake)
(require 'init-web-mode)
(require 'init-markdown-mode)
(require 'init-color-theme)
(require 'init-backup)
(require 'init-powerline)
(require 'init-php-mode)
(require 'init-tabbar)
(require 'init-edit)
(require 'init-smartparens)
(require 'init-elpy)
(require 'init-hippie-expand)
(require 'init-server)
(require 'init-org)
(require 'init-eshell)
(require 'init-darkroom-mode)
