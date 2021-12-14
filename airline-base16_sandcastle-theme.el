
;;; Code:

(deftheme airline-base16_sandcastle
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#2c323b") (normal-outer-background   "#928374")
      (normal-inner-foreground   "#928374") (normal-inner-background   "#3e4451")
      (normal-center-foreground  "#928374") (normal-center-background  "#2c323b")

      (insert-outer-foreground   "#2c323b") (insert-outer-background   "#528b8b")
      (insert-inner-foreground   "#928374") (insert-inner-background   "#3e4451")
      (insert-center-foreground  "#928374") (insert-center-background  "#2c323b")

      (visual-outer-foreground   "#2c323b") (visual-outer-background   "#a07e3b")
      (visual-inner-foreground   "#928374") (visual-inner-background   "#3e4451")
      (visual-center-foreground  "#928374") (visual-center-background  "#2c323b")

      (replace-outer-foreground  "#2c323b") (replace-outer-background  "#d75f5f")
      (replace-inner-foreground  "#928374") (replace-inner-background  "#3e4451")
      (replace-center-foreground "#928374") (replace-center-background "#2c323b")

      (emacs-outer-foreground    "#2c323b") (emacs-outer-background    "#928374")
      (emacs-inner-foreground    "#928374") (emacs-inner-background    "#3e4451")
      (emacs-center-foreground   "#928374") (emacs-center-background   "#2c323b")

      (inactive1-foreground      "#2c323b") (inactive1-background      "#2c323b")
      (inactive2-foreground      "#928374") (inactive2-background      "#2c323b")
      (inactive3-foreground      "#a89984") (inactive3-background      "#2c323b"))

  (airline-themes-set-deftheme 'airline-base16_sandcastle)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_sandcastle)
;;; airline-base16_sandcastle-theme.el ends here
