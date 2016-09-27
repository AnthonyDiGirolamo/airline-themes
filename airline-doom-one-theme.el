;;; airline-doom-one --- Summary
;;; Commentary:
;;; Code:

(deftheme airline-doom-one
  "source: https://github.com/hlissner/emacs-doom-theme")

(let ((normal-outer-foreground  "#141a22") (normal-outer-background  "#00B3EF")
      (normal-inner-foreground  "#B5BABF") (normal-inner-background  "#262c34")
      (normal-center-foreground "#B5BABF") (normal-center-background "#1f1f1f")

      (insert-outer-foreground  "#141a22") (insert-outer-background  "#E69055")
      (insert-inner-foreground  "#B5BABF") (insert-inner-background  "#262c34")
      (insert-center-foreground "#B5BABF") (insert-center-background "#1f1f1f")

      (visual-outer-foreground  "#141a22") (visual-outer-background  "#DC79DC")
      (visual-inner-foreground  "#B5BABF") (visual-inner-background  "#262c34")
      (visual-center-foreground "#B5BABF") (visual-center-background "#1f1f1f")

      (replace-outer-foreground "#141a22") (replace-outer-background "#ff665c")
      (replace-inner-foreground "#B5BABF") (replace-inner-background "#262c34")
      (replace-center-foreground "#B5BABF") (replace-center-background "#1f1f1f")

      (emacs-outer-foreground  "#d7d7ff") (emacs-outer-background  "#C57BDB")
      (emacs-inner-foreground  "#B5BABF") (emacs-inner-background  "#262c34")
      (emacs-center-foreground "#B5BABF") (emacs-center-background "#1f1f1f")

      (inactive1-foreground "#525252") (inactive1-background "#262c34")
      (inactive2-foreground "#525252") (inactive2-background "#1f1f1f")
      (inactive3-foreground "#525252") (inactive3-background "#1f1f1f"))

  (airline-themes-set-deftheme 'airline-doom-one)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
  )

(airline-themes-set-modeline)

(provide-theme 'airline-doom-one)
;;; airline-doom-one-theme.el ends here
