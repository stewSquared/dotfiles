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

(install 'org)
(install 'markdown-mode)
(install 'go-mode)
(install 'clojure-mode)
(install 'smartparens)
(install 'scala-mode)
(install 'ensime)
(install 'dash)
(install 'cider)
(install 'geiser)
(install 'rainbow-delimiters)
(install 'ac-cider)
(install 'elm-mode)

;; geiser config
(setq geiser-active-implementations '(guile racket))

;; smartparens config
(require 'smartparens-config)
(sp-use-smartparens-bindings)
(smartparens-global-strict-mode)
(add-hook 'clojure-mode-hook 'smartparens-strict-mode)
(add-hook 'cider-repl-mode-hook #'smartparens-strict-mode)

;; cider config
(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)

(require 'ac-cider)
(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(eval-after-load "auto-complete"
  '(progn
     (add-to-list 'ac-modes 'cider-mode)
     (add-to-list 'ac-modes 'cider-repl-mode)))

;;(define-key smartparens-mode-map (kbd "your-key") 'function)
(define-key smartparens-mode-map (kbd "M-<down>") 'sp-splice-sexp-killing-forward)
(define-key smartparens-mode-map (kbd "M-<up>") 'sp-splice-sexp-killing-backward)
(define-key smartparens-mode-map (kbd "M-s") 'sp-splice-sexp-killing-around)

;; ensime config
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(setq ensime-startup-notification nil)

;; Org mode config
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; Org Present
(add-to-list 'load-path "~/github.com/rlister/org-present")
(autoload 'org-present "org-present" nil t)

;; Precise behaviour of org-present during start and quit is controlled from hooks. The following will enlarge text, show images, hide the cursor and make the buffer read-only:
(eval-after-load "org-present"
  '(progn
     (add-hook 'org-present-mode-hook
               (lambda ()
                 (org-present-big)
                 (org-display-inline-images)
                 (org-present-hide-cursor)
                 (org-present-read-only)))
     (add-hook 'org-present-mode-quit-hook
               (lambda ()
                 (org-present-small)
                 (org-remove-inline-images)
                 (org-present-show-cursor)
                 (org-present-read-write)))))

;; prev-window
(defun prev-window ()
  (interactive)
    (other-window -1))
(global-set-key (kbd "C-.") 'other-window)
(global-set-key (kbd "C-,") 'prev-window)

;; Misc.
(column-number-mode 1)
(global-set-key [(control h)] 'delete-backward-char)
(set-default 'truncate-lines t)
(global-auto-revert-mode 1)
(setq vc-follow-symlinks t)
