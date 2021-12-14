
;;; Code:

(deftheme airline-base16_irblack
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#242422") (normal-outer-background   "#918f88")
      (normal-inner-foreground   "#918f88") (normal-inner-background   "#484844")
      (normal-center-foreground  "#918f88") (normal-center-background  "#242422")

      (insert-outer-foreground   "#242422") (insert-outer-background   "#a8ff60")
      (insert-inner-foreground   "#918f88") (insert-inner-background   "#484844")
      (insert-center-foreground  "#918f88") (insert-center-background  "#242422")

      (visual-outer-foreground   "#242422") (visual-outer-background   "#e9c062")
      (visual-inner-foreground   "#918f88") (visual-inner-background   "#484844")
      (visual-center-foreground  "#918f88") (visual-center-background  "#242422")

      (replace-outer-foreground  "#242422") (replace-outer-background  "#ff73fd")
      (replace-inner-foreground  "#918f88") (replace-inner-background  "#484844")
      (replace-center-foreground "#918f88") (replace-center-background "#242422")

      (emacs-outer-foreground    "#242422") (emacs-outer-background    "#918f88")
      (emacs-inner-foreground    "#918f88") (emacs-inner-background    "#484844")
      (emacs-center-foreground   "#918f88") (emacs-center-background   "#242422")

      (inactive1-foreground      "#242422") (inactive1-background      "#242422")
      (inactive2-foreground      "#918f88") (inactive2-background      "#242422")
      (inactive3-foreground      "#b5b3aa") (inactive3-background      "#242422"))

  (airline-themes-set-deftheme 'airline-base16_irblack)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_irblack)
;;; airline-base16_irblack-theme.el ends here
