

(setq load-path 
      (append (list "/home/matt/.emacs.d/elpa/" "/home/matt/pckges/polymode" "/home/matt/pckges/poly-markdown")
	      load-path))

(require 'ess-site)
(require 'poly-R)
(require 'poly-markdown)     

(add-to-list 'auto-mode-alist '("\\.Rmd" . polymarkdown-mode))



;; Thanks to John Geddes for helping me see the light
;; http://johnstantongeddes.org/open%20science/2014/03/26/Rmd-polymode.html

;; ;; spa/rmd-render
;; ;; Global history list allows Emacs to "remember" the last
;; ;; render commands and propose as suggestions in the minibuffer.
;; (defvar rmd-render-history nil "History list for spa/rmd-render.")
;; (defun spa/rmd-render (arg)
;;   "Render the current Rmd file to PDF output.
;;    With a prefix arg, edit the R command in the minibuffer"
;;   (interactive "P")
;;   ;; Build the default R render command
;;   (setq rcmd (concat "rmarkdown::render('" buffer-file-name "',"
;;                  "output_dir = '../reports',"
;;                  "output_format = 'pdf_document')"))
;;   ;; Check for prefix argument
;;   (if arg
;;       (progn
;;     ;; Use last command as the default (if non-nil)
;;     (setq prev-history (car rmd-render-history))
;;     (if prev-history
;;         (setq rcmd prev-history)
;;       nil)
;;     ;; Allow the user to modify rcmd
;;     (setq rcmd
;;           (read-from-minibuffer "Run: " rcmd nil nil 'rmd-render-history))
;;     )
;;     ;; With no prefix arg, add default rcmd to history
;;     (setq rmd-render-history (add-to-history 'rmd-render-history rcmd)))
;;   ;; Build and evaluate the shell command
;;   (setq command (concat "echo \"" rcmd "\" | R --vanilla"))
;;   (compile command))
;; (define-key polymode-mode-map (kbd "C-c r")  'spa/rmd-render)
