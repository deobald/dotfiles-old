(require 'package)
(add-to-list 'package-archives
              '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
   (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(color-theme
                      color-theme-solarized
                      starter-kit 
                      starter-kit-lisp 
                      starter-kit-bindings
                      starter-kit-ruby
                      starter-kit-eshell
                      go-mode
                      clojure-mode
                      clojure-test-mode
                      clojurescript-mode)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; solarized
(require 'color-theme)
(require 'color-theme-solarized)
(color-theme-solarized-light)



