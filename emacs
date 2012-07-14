(add-to-list 'load-path "~/.emacs.d/")
(require 'cl)
(require 'package)

;; Add the original Emacs Lisp Package Archive
(add-to-list 'package-archives
             '("elpa" . "http://tromey.com/elpa/"))
;; Add the user-contributed repository
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; prelude
(defvar prelude-packages
  '(ack-and-a-half auctex clojure-mode deft expand-region
                   gist haml-mode haskell-mode inf-ruby
                   magit magithub markdown-mode paredit 
                   highlight-parentheses python sass-mode 
                   rainbow-mode scss-mode solarized-theme
                   volatile-highlights yaml-mode yari zenburn-theme)
  "A list of packages to ensure are installed at launch.")

(defun prelude-packages-installed-p ()
  (loop for p in prelude-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (prelude-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs Prelude is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p prelude-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'prelude-packages)
;; prelude-packages.el ends here 

;; Auto reload saved source files and send them to the repl
(defun ed/clojure-compile-on-save (&optional args)
  "Compile with slime on save"
  (interactive)
  (if (and (eq major-mode 'clojure-mode)
      (slime-connected-p))
      (slime-compile-and-load-file)))
(add-hook 'after-save-hook 'ed/clojure-compile-on-save)

;; paredit
(require 'paredit)
(require 'highlight-parentheses)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'clojure-mode-hook
          (lambda ()
            (highlight-parentheses-mode t)
            (paredit-mode t)
            (slime-mode t)))
(setq hl-paren-colors
      '("red1" "orange1" "yellow1" "green1" "cyan1"
        "slateblue1" "magenta1" "purple"))

;; paredit in the REPL
(autoload 'paredit-mode "paredit"   
  "Minor mode for pseudo-structurally editing Lisp code."   
  t)   
;(add-hook 'lisp-mode-hook (lambda () (paredit-mode +1)))   
(mapc (lambda (mode)   
     (let ((hook (intern (concat (symbol-name mode)   
                   "-mode-hook"))))   
      (add-hook hook (lambda () (paredit-mode +1)))))   
    '(emacs-lisp lisp inferior-lisp slime slime-repl))                       

;; Stop SLIME's REPL from grabbing DEL,
;; which is annoying when backspacing over a '('
(defun override-slime-repl-bindings-with-paredit ()
  (define-key slime-repl-mode-map
    (read-kbd-macro paredit-backward-delete-key) nil))
(add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit) 
