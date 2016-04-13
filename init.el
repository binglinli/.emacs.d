(unless (boundp 'my-emacsdot-dir)
  (defvar my-emacsdot-dir (expand-file-name "~/.emacs.d/")))

  
(defun my-add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat my-emacsdot-dir path))))

	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

(my-add-to-load-path "lisp" "config")


(require 'init-encodding)
(require 'init-font)
(require 'init-frame)
(require 'init-smex)
(require 'init-magit)
(require 'init-company-mode)
(require 'init-function)
(require 'init-window-numbering)
(require 'init-flymake)
(require 'init-web-mode)
(require 'init-markdown-mode)
(require 'init-color-theme)
(require 'init-backup)
(require 'init-powerline)
