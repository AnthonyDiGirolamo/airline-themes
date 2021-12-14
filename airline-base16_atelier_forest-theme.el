
;;; Code:

(deftheme airline-base16_atelier_forest
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#2c2421") (normal-outer-background   "#9c9491")
      (normal-inner-foreground   "#9c9491") (normal-inner-background   "#68615e")
      (normal-center-foreground  "#9c9491") (normal-center-background  "#2c2421")

      (insert-outer-foreground   "#2c2421") (insert-outer-background   "#7b9726")
      (insert-inner-foreground   "#9c9491") (insert-inner-background   "#68615e")
      (insert-center-foreground  "#9c9491") (insert-center-background  "#2c2421")

      (visual-outer-foreground   "#2c2421") (visual-outer-background   "#df5320")
      (visual-inner-foreground   "#9c9491") (visual-inner-background   "#68615e")
      (visual-center-foreground  "#9c9491") (visual-center-background  "#2c2421")

      (replace-outer-foreground  "#2c2421") (replace-outer-background  "#6666ea")
      (replace-inner-foreground  "#9c9491") (replace-inner-background  "#68615e")
      (replace-center-foreground "#9c9491") (replace-center-background "#2c2421")

      (emacs-outer-foreground    "#2c2421") (emacs-outer-background    "#9c9491")
      (emacs-inner-foreground    "#9c9491") (emacs-inner-background    "#68615e")
      (emacs-center-foreground   "#9c9491") (emacs-center-background   "#2c2421")

      (inactive1-foreground      "#2c2421") (inactive1-background      "#2c2421")
      (inactive2-foreground      "#9c9491") (inactive2-background      "#2c2421")
      (inactive3-foreground      "#a8a19f") (inactive3-background      "#2c2421"))

  (airline-themes-set-deftheme 'airline-base16_atelier_forest)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_forest)
;;; airline-base16_atelier_forest-theme.el ends here
