(setq backup-by-copying t
      backup-directory-alist '(("." . "~/.emacs.d/.backup"))
      version-control t
      delete-old-versions t
      kept-new-versions 3
      kept-old-versions 2)


(provide 'init-backup)
