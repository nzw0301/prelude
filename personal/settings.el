(load-theme 'solarized-dark) ;; theme
(scroll-bar-mode 0) ;; remove scroll bar
(latex-preview-pane-enable)
(turn-off-auto-fill)
(setenv "DICTIONARY" "en_US")

;; shortcut key to adjust font size
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(cond
 ;; try hunspell at first
 ;; if hunspell does NOT exist, use aspell
 ((executable-find "hunspell")
  (setq ispell-program-name "hunspell")
  (setq ispell-local-dictionary "en_US")
  (setq ispell-local-dictionary-alist
        ;; Please note the list `("-d" "en_US")` contains ACTUAL parameters passed to hunspell
        ;; You could use `("-d" "en_US,en_US-med")` to check with multiple dictionaries
        '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil ("-d" "en_US") nil utf-8)
          )))

 ((executable-find "aspell")
  (setq ispell-program-name "aspell")
  ;; Please note ispell-extra-args contains ACTUAL parameters passed to aspell
  (setq ispell-extra-args '("--sug-mode=ultra" "--lang=en_US"))))

;; font settings
(add-to-list 'default-frame-alist '(font . "Ricty Diminished Discord-18"))

(global-linum-mode) ;; show line number

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; org-ref configure
(setq reftex-default-bibliography '("~/Dropbox/papers/library.bib"))
(setq org-ref-default-bibliography '("~/Dropbox/papers/library.bib"))
(setq bibtex-completion-bibliography "~/Dropbox/papers/library.bib")
(setq bibtex-completion-pdf-open-function 'org-open-file)

(require 'org)
(require 'ox-latex)
(require 'ox-reveal)
(require 'org-ref)
