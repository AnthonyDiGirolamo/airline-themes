
;;; Code:

(deftheme airline-base16_cupcake
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#f2f1f4") (normal-outer-background   "#a59daf")
      (normal-inner-foreground   "#a59daf") (normal-inner-background   "#d8d5dd")
      (normal-center-foreground  "#a59daf") (normal-center-background  "#f2f1f4")

      (insert-outer-foreground   "#f2f1f4") (insert-outer-background   "#A3B367")
      (insert-inner-foreground   "#a59daf") (insert-inner-background   "#d8d5dd")
      (insert-center-foreground  "#a59daf") (insert-center-background  "#f2f1f4")

      (visual-outer-foreground   "#f2f1f4") (visual-outer-background   "#EBB790")
      (visual-inner-foreground   "#a59daf") (visual-inner-background   "#d8d5dd")
      (visual-center-foreground  "#a59daf") (visual-center-background  "#f2f1f4")

      (replace-outer-foreground  "#f2f1f4") (replace-outer-background  "#BB99B4")
      (replace-inner-foreground  "#a59daf") (replace-inner-background  "#d8d5dd")
      (replace-center-foreground "#a59daf") (replace-center-background "#f2f1f4")

      (emacs-outer-foreground    "#f2f1f4") (emacs-outer-background    "#a59daf")
      (emacs-inner-foreground    "#a59daf") (emacs-inner-background    "#d8d5dd")
      (emacs-center-foreground   "#a59daf") (emacs-center-background   "#f2f1f4")

      (inactive1-foreground      "#f2f1f4") (inactive1-background      "#f2f1f4")
      (inactive2-foreground      "#a59daf") (inactive2-background      "#f2f1f4")
      (inactive3-foreground      "#8b8198") (inactive3-background      "#f2f1f4"))

  (airline-themes-set-deftheme 'airline-base16_cupcake)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_cupcake)
;;; airline-base16_cupcake-theme.el ends here
