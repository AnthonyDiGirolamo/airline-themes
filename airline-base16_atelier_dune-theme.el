
;;; Code:

(deftheme airline-base16_atelier_dune
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#292824") (normal-outer-background   "#999580")
      (normal-inner-foreground   "#999580") (normal-inner-background   "#6e6b5e")
      (normal-center-foreground  "#999580") (normal-center-background  "#292824")

      (insert-outer-foreground   "#292824") (insert-outer-background   "#60ac39")
      (insert-inner-foreground   "#999580") (insert-inner-background   "#6e6b5e")
      (insert-center-foreground  "#999580") (insert-center-background  "#292824")

      (visual-outer-foreground   "#292824") (visual-outer-background   "#b65611")
      (visual-inner-foreground   "#999580") (visual-inner-background   "#6e6b5e")
      (visual-center-foreground  "#999580") (visual-center-background  "#292824")

      (replace-outer-foreground  "#292824") (replace-outer-background  "#b854d4")
      (replace-inner-foreground  "#999580") (replace-inner-background  "#6e6b5e")
      (replace-center-foreground "#999580") (replace-center-background "#292824")

      (emacs-outer-foreground    "#292824") (emacs-outer-background    "#999580")
      (emacs-inner-foreground    "#999580") (emacs-inner-background    "#6e6b5e")
      (emacs-center-foreground   "#999580") (emacs-center-background   "#292824")

      (inactive1-foreground      "#292824") (inactive1-background      "#292824")
      (inactive2-foreground      "#999580") (inactive2-background      "#292824")
      (inactive3-foreground      "#a6a28c") (inactive3-background      "#292824"))

  (airline-themes-set-deftheme 'airline-base16_atelier_dune)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_dune)
;;; airline-base16_atelier_dune-theme.el ends here
