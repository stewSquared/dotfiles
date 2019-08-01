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
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(defun install (package)
  (unless (package-installed-p package)
          (package-refresh-contents)
    	  (package-install package)))

(install 'use-package)
(require 'use-package)
(setq use-package-always-ensure t)

(install 'markdown-mode)
(install 'go-mode)
(install 'clojure-mode)
(install 'scala-mode)
(install 'dash)
(install 'cider)
(install 'geiser)
(install 'rainbow-delimiters)
(install 'elm-mode)
(install 'magit)
(install 'projectile)

;; geiser config
(setq geiser-active-implementations '(guile racket))

;; smartparens config
(use-package smartparens :demand
  :hook (clojure-mode cider-repl-mode)
  :bind (:map smartparens-mode-map
	      ("M-<down>" . 'sp-splice-sexp-killing-forward)
	      ("M-<up>" . 'sp-splice-sexp-killing-backward)
	      ("M-s" . 'sp-splice-sexp-killing-around))
  :config
  (sp-use-smartparens-bindings)
  (smartparens-global-strict-mode))

;; cider config
(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)

;; ensime config
;; (require 'ensime)
;; (use-package ensime
;;   :ensure t
;;   :config (setq ensime-startup-notification nil))

;; Org mode config
(use-package org
  :bind (("C-c l" . 'org-store-link)
	 ("C-c c" . 'org-capture)
	 ("C-c a" . 'org-agenda)
	 ("C-c b" . 'org-iswitchb)))

;; prev-window
(defun prev-window ()
  (interactive)
    (other-window -1))
(global-set-key (kbd "C-.") 'other-window)
(global-set-key (kbd "C-,") 'prev-window)

;; Configure color theme
;; TODO: Use only for GUI emacs
(use-package solarized-theme
  :config (load-theme 'solarized-light t))

;; Scrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)

;; Projectile Mode
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Misc.
(column-number-mode 1)
(visual-line-mode t)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-?") 'help-command)
(global-set-key (kbd "C-x g") 'magit-status)
(set-default 'truncate-lines t)
(global-auto-revert-mode 1)
(setq vc-follow-symlinks t)
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(setq mouse-yank-at-point t)
