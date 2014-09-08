;; back-ups
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

;; Install packages from melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(unless (package-installed-p 'clojure-mode)
  (package-refresh-contents)
  (package-install 'clojure-mode))

(unless (package-installed-p 'smartparens)
  (package-refresh-contents)
  (package-install 'smartparens))
(smartparens-global-mode 1)

;; Clojure mode hooks
(add-hook 'clojure-mode-hook 'smartparens-strict-mode)

;; Misc.
(electric-pair-mode 1)
(column-number-mode 1)
