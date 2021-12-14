
;;; Code:

(deftheme airline-base16_atelier_dune_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#e8e4cf") (normal-outer-background   "#7d7a68")
      (normal-inner-foreground   "#7d7a68") (normal-inner-background   "#a6a28c")
      (normal-center-foreground  "#7d7a68") (normal-center-background  "#e8e4cf")

      (insert-outer-foreground   "#e8e4cf") (insert-outer-background   "#60ac39")
      (insert-inner-foreground   "#7d7a68") (insert-inner-background   "#a6a28c")
      (insert-center-foreground  "#7d7a68") (insert-center-background  "#e8e4cf")

      (visual-outer-foreground   "#e8e4cf") (visual-outer-background   "#b65611")
      (visual-inner-foreground   "#7d7a68") (visual-inner-background   "#a6a28c")
      (visual-center-foreground  "#7d7a68") (visual-center-background  "#e8e4cf")

      (replace-outer-foreground  "#e8e4cf") (replace-outer-background  "#b854d4")
      (replace-inner-foreground  "#7d7a68") (replace-inner-background  "#a6a28c")
      (replace-center-foreground "#7d7a68") (replace-center-background "#e8e4cf")

      (emacs-outer-foreground    "#e8e4cf") (emacs-outer-background    "#7d7a68")
      (emacs-inner-foreground    "#7d7a68") (emacs-inner-background    "#a6a28c")
      (emacs-center-foreground   "#7d7a68") (emacs-center-background   "#e8e4cf")

      (inactive1-foreground      "#e8e4cf") (inactive1-background      "#e8e4cf")
      (inactive2-foreground      "#7d7a68") (inactive2-background      "#e8e4cf")
      (inactive3-foreground      "#6e6b5e") (inactive3-background      "#e8e4cf"))

  (airline-themes-set-deftheme 'airline-base16_atelier_dune_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_dune_light)
;;; airline-base16_atelier_dune_light-theme.el ends here
