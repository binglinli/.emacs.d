(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(defun org-insert-src-block (src-code-type)
   "Insert a `SRC-CODE-TYPE' type source code block in org-mode."
   (interactive
    (let ((src-code-types
           '("emacs-lisp" "python" "C" "sh" "java" "js" "clojure" "C++" "css"
             "calc" "asymptote" "dot" "gnuplot" "ledger" "lilypond" "mscgen"
             "octave" "oz" "plantuml" "R" "sass" "screen" "sql" "awk" "ditaa"
             "haskell" "latex" "lisp" "matlab" "ocaml" "org" "perl" "ruby"
             "scheme" "sqlite")))
      (list (ido-completing-read "Source code type: " src-code-types))))
   (progn
     (newline-and-indent)
     (insert (format "#+BEGIN_SRC %s\n" src-code-type))
     (newline-and-indent)
     (insert "#+END_SRC\n")
     (previous-line 2)
     (org-edit-src-code)))

(add-hook 'org-mode-hook 'turn-on-font-lock)

 ;;; 设置HTML页面编码
(setq org-html-coding-system 'utf-8-unix)
(setq org-html-doctype "html5")
(setq org-html-html5-fancy  t)
(setq org-src-fontify-natively t)
(setq org-current-level 3) 
(setq org-publish-project-alist
      '(("html"
 	 :base-directory "~/blog/"
 	 :base-extension "org"
 	 :publishing-directory "~/blog/html/"
 	 :recursive t
 	 :publishing-function org-html-publish-to-html
 	 :headline-levels 3
 	 :html-contaainer div
 	 :html-preamble t)
 	("images"
 	 :base-directory "~/blog/images/"
 	 :base-extension "jpg\\|gif\\|png"
 	 :publishing-directory "~/html/images/"
 	 :publishing-function org-publish-attachment)
 	("other"
 	 :base-directory "~/other/"
 	 :base-extension "css\\|el"
 	 :publishing-directory "~/html/other/"
 	 :publishing-function org-publish-attachment)
 	("website" :components ("html" "images" "other"))))


(provide 'init-org)
