
;;; Code:

(deftheme airline-base16_atelier_seaside
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#242924") (normal-outer-background   "#809980")
      (normal-inner-foreground   "#809980") (normal-inner-background   "#5e6e5e")
      (normal-center-foreground  "#809980") (normal-center-background  "#242924")

      (insert-outer-foreground   "#242924") (insert-outer-background   "#29a329")
      (insert-inner-foreground   "#809980") (insert-inner-background   "#5e6e5e")
      (insert-center-foreground  "#809980") (insert-center-background  "#242924")

      (visual-outer-foreground   "#242924") (visual-outer-background   "#87711d")
      (visual-inner-foreground   "#809980") (visual-inner-background   "#5e6e5e")
      (visual-center-foreground  "#809980") (visual-center-background  "#242924")

      (replace-outer-foreground  "#242924") (replace-outer-background  "#ad2bee")
      (replace-inner-foreground  "#809980") (replace-inner-background  "#5e6e5e")
      (replace-center-foreground "#809980") (replace-center-background "#242924")

      (emacs-outer-foreground    "#242924") (emacs-outer-background    "#809980")
      (emacs-inner-foreground    "#809980") (emacs-inner-background    "#5e6e5e")
      (emacs-center-foreground   "#809980") (emacs-center-background   "#242924")

      (inactive1-foreground      "#242924") (inactive1-background      "#242924")
      (inactive2-foreground      "#809980") (inactive2-background      "#242924")
      (inactive3-foreground      "#8ca68c") (inactive3-background      "#242924"))

  (airline-themes-set-deftheme 'airline-base16_atelier_seaside)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_seaside)
;;; airline-base16_atelier_seaside-theme.el ends here
