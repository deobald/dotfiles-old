;; fix the PATH variable
(defun set-exec-path-from-shell-PATH ()
 (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo $PATH'")))
   (setenv "PATH" path-from-shell)
   (setq exec-path (split-string path-from-shell path-separator))))

(if window-system (set-exec-path-from-shell-PATH))

;; hook to redirect stdout to slime buffer
;; (add-hook 'slime-connected-hook 'slime-redirect-inferior-output)

;; smooth-scrolling stops that annoying jump when moving around
(require 'smooth-scrolling)

;; makes sexps flash when you eval them!
(require 'highlight)
(require 'eval-sexp-fu)
