;; dir to store all extra extensions
(setq dotfiles-dir (file-name-directory
                     (or (buffer-file-name) load-file-name)))

(setq vendor-dir (concat dotfiles-dir "/vendor"))

;; add my vendor dir to load path
(add-to-list 'load-path vendor-dir)

;; customisations
(setq customisations-dir (concat dotfiles-dir "customisations"))

(load (concat customisations-dir "/environment.el"))
(load (concat customisations-dir "/codestyle.el"))
(load (concat customisations-dir "/functions.el"))
(load (concat customisations-dir "/keybindings.el"))
