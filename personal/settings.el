(load-theme 'solarized-dark) ;; theme
(scroll-bar-mode 0) ;; remove scroll bar
(latex-preview-pane-enable)
(turn-off-auto-fill)

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

;; org2latex settings
(setq org-latex-listings t)
(setq org-latex-packages-alist
      '(
        ("colorlinks=true" "hyperref")
        ("" "bm")
        ("" "algpseudocode")
        ("" "algorithm")
        ("" "listings")
        ("" "color")
        ))

(setq org-latex-classes
      '(("ltjsarticle"
         "\\documentclass{ltjsarticle}
            [NO-DEFAULT-PACKAGES]
            \\usepackage[utf8]{inputenc}
            \\usepackage[T1]{fontenc}
            \\usepackage{graphicx}
            \\usepackage{grffile}
            \\usepackage{longtable}
            \\usepackage{wrapfig}
            \\usepackage{rotating}
            \\usepackage[normalem]{ulem}
            \\usepackage{amsmath}
            \\usepackage{textcomp}
            \\usepackage{amssymb}
            \\usepackage{capt-of}"
         ("\\section{%s}" . "\\section*{%s}")
         ("\\subsection{%s}" . "\\subsection*{%s}")
         ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
         ("\\paragraph{%s}" . "\\paragraph*{%s}")
         ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
        ("ltjsarticle_two"
         "\\documentclass[twocolumn]{ltjsarticle}
            [NO-DEFAULT-PACKAGES]
            \\usepackage[utf8]{inputenc}
            \\usepackage[T1]{fontenc}
            \\usepackage{graphicx}
            \\usepackage{grffile}
            \\usepackage{longtable}
            \\usepackage{wrapfig}
            \\usepackage{rotating}
            \\usepackage[normalem]{ulem}
            \\usepackage{amsmath}
            \\usepackage{textcomp}
            \\usepackage{amssymb}
            \\usepackage{capt-of}"
         ("\\section{%s}" . "\\section*{%s}")
         ("\\subsection{%s}" . "\\subsection*{%s}")
         ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
         ("\\paragraph{%s}" . "\\paragraph*{%s}")
         ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
        ("beamer"
         "\\documentclass[presentation]{beamer}
          \\setbeamertemplate{navigation symbols}{}
          \\setbeamertemplate{footline}[page number]
          \\definecolor{bgc}{RGB}{78,78,78}
          \\setbeamercolor{normal text}{bg=white}
          \\setbeamercolor{frametitle}{fg=black}
          \\setbeamercolor{block title}{fg=blue}
          \\setbeamercolor{title}{fg=black}
          \\setbeamertemplate{caption}[numbered]
          \\setbeamercolor{normal text}{fg=black}
          \\setbeamerfont{frametitle}{size=\\Large}
          \\setbeamerfont{title}{size=\\huge}
          \\setbeamerfont{footline}{size=\\large}
          \\setbeamerfont{normal text}{size=\\Large}
          \\setbeamercolor{item}{fg=black}
          \\beamertemplatetextbibitems"
         ("\\section{%s}" . "\\section*{%s}")
         ("\\subsection{%s}" . "\\subsection*{%s}")
         ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
        ("ltjbook"
         "\\documentclass{ltjbook}"
         ("\\part{%s}" . "\\part{%s}")
         ("\\chapter{%s}" . "\\chapter{%s}")
         ("\\section{%s}" . "\\section*{%s}")
         ("\\subsection{%s}" . "\\subsection*{%s}")
         ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
         ("\\paragraph{%s}" . "\\paragraph*{%s}")
         ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))

(setq org-latex-pdf-process '("lualatex %b" "lualatex %b"))
(setq org-latex-default-class "ltjsarticle")
