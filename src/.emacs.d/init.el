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
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Workaround for gnults bug that breaks interaction with elpa
;; See: https://debbugs.gnu.org/cgi/bugreport.cgi?bug=34341
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(use-package markdown-mode)
(use-package clojure-mode)
(use-package rainbow-delimiters)
(use-package yasnippet)

(use-package flycheck
  :init (global-flycheck-mode))

(use-package lsp-mode
  :hook (scala-mode . lsp)
  :config (setq lsp-prefer-flymake nil))
(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)

(use-package scala-mode
  :mode "\\.s\\(cala\\|bt\\|c\\)$")

(use-package sbt-mode
  :commands sbt-start sbt-command)

(use-package lsp-metals)

;; geiser config
(use-package geiser
  :init (setq geiser-active-implementations '(guile racket)))

;; smartparens config
(use-package smartparens
  :hook clojure-mode
  :bind (:map smartparens-mode-map
	      ("M-<down>" . 'sp-splice-sexp-killing-forward)
	      ("M-<up>" . 'sp-splice-sexp-killing-backward)
	      ("M-s" . 'sp-splice-sexp-killing-around))
  :init (smartparens-global-strict-mode)
  :config (sp-use-smartparens-bindings))

;; Cider config
(use-package cider
  :hook (cider-repl-mode . rainbow-delimiters-mode))

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
(use-package projectile
  :bind-keymap ("C-c p" . projectile-command-map)
  :config (projectile-mode +1))

;; Magit config
(use-package magit
  :bind ("C-x g" . 'magit-status))

;; Misc.
(column-number-mode 1)
(visual-line-mode t)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-?") 'help-command)
(set-default 'truncate-lines t)
(global-auto-revert-mode 1)
(setq vc-follow-symlinks t)
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq mouse-yank-at-point t)
