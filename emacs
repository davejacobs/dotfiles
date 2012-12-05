(require 'package)
(require 'cl)

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(defvar prelude-packages
  '(starter-kit
    starter-kit-lisp
    starter-kit-js 
    starter-kit-ruby
    starter-kit-bindings
    ack-and-a-half
    anything
    anything-config
    anything-match-plugin
    auctex
    deft
    expand-region
    evil
    gist
    haml-mode
    haskell-mode
    icicles
    inf-ruby
    magit
    magithub
    markdown-mode
    paredit 
    highlight-parentheses
    python
    rainbow-mode
    sass-mode 
    scss-mode
    solarized-theme
    color-theme-solarized
    volatile-highlights
    yaml-mode
    yari
    zenburn-theme)
  "A list of packages to ensure are installed at launch.")

(defun prelude-packages-installed-p ()
  (loop for p in prelude-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

;; Check for new packages (package versions)
(unless (prelude-packages-installed-p)
  (message "%s" "Emacs Prelude is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  (dolist (p prelude-packages)
    (when (not (package-installed-p p))
      (package-install p))))

;; -- Solarized theme

(load-theme 'solarized-dark t)

;; -- Settings

(scroll-bar-mode t)                           ; Enable the scrollbar
(setq ring-bell-function 'ignore)             ; Disable the alarm
(set-face-attribute 'default nil :height 130) ; Set the font to 13pt

;; -- Evil mode

(require 'evil)
(evil-mode 1)
; This doesn't quite wor
; (define-key evil-insert-state-map (kbd "kj") 'evil-normal-state)

(define-key evil-insert-state-map "k" #'maybe-exit)
(evil-define-command maybe-exit ()
  :repeat change
  (interactive)
  (let ((modified (buffer-modified-p)))
    (insert "k")
    (let ((evt (read-event (format "Insert %c to exit insert state" ?j)
                           nil 0.5)))
      (cond
       ((null evt) (message ""))
       ((and (integerp evt) (char-equal evt ?j))
        (delete-char -1)
        (set-buffer-modified-p modified)
        (push 'escape unread-command-events))
       (t (setq unread-command-events (append unread-command-events
                                              (list evt))))))))

(require 'anything-match-plugin)
(require 'anything-config)

; (define-key evil-normal-state-map "\C-N" 'anything)
(define-key evil-normal-state-map (kbd "C-N") 'anything)

;; -- Clojure mode

;; Auto reload saved source files and send them to the repl
(defun ed/clojure-compile-on-save (&optional args)
  "Compile with slime on save"
  (interactive)
  (if (and (eq major-mode 'clojure-mode)
           (slime-connected-p))
    (slime-compile-and-load-file)))

(add-hook 'after-save-hook 'ed/clojure-compile-on-save)

;; -- Paredit

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

;; Paredit in the REPL
(autoload 'paredit-mode "paredit"   
          "Minor mode for pseudo-structurally editing Lisp code."   
          t)   
(add-hook 'lisp-mode-hook (lambda () (paredit-mode +1)))   
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

(require 'ido)
(ido-mode 'buffer)
(setq ido-enable-flex-matching t)

; (require 'icicles)
; (icy-mode 1)
