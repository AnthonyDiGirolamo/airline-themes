
;;; Code:

(deftheme airline-base16_atelier_forest_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#e6e2e0") (normal-outer-background   "#766e6b")
      (normal-inner-foreground   "#766e6b") (normal-inner-background   "#a8a19f")
      (normal-center-foreground  "#766e6b") (normal-center-background  "#e6e2e0")

      (insert-outer-foreground   "#e6e2e0") (insert-outer-background   "#7b9726")
      (insert-inner-foreground   "#766e6b") (insert-inner-background   "#a8a19f")
      (insert-center-foreground  "#766e6b") (insert-center-background  "#e6e2e0")

      (visual-outer-foreground   "#e6e2e0") (visual-outer-background   "#df5320")
      (visual-inner-foreground   "#766e6b") (visual-inner-background   "#a8a19f")
      (visual-center-foreground  "#766e6b") (visual-center-background  "#e6e2e0")

      (replace-outer-foreground  "#e6e2e0") (replace-outer-background  "#6666ea")
      (replace-inner-foreground  "#766e6b") (replace-inner-background  "#a8a19f")
      (replace-center-foreground "#766e6b") (replace-center-background "#e6e2e0")

      (emacs-outer-foreground    "#e6e2e0") (emacs-outer-background    "#766e6b")
      (emacs-inner-foreground    "#766e6b") (emacs-inner-background    "#a8a19f")
      (emacs-center-foreground   "#766e6b") (emacs-center-background   "#e6e2e0")

      (inactive1-foreground      "#e6e2e0") (inactive1-background      "#e6e2e0")
      (inactive2-foreground      "#766e6b") (inactive2-background      "#e6e2e0")
      (inactive3-foreground      "#68615e") (inactive3-background      "#e6e2e0"))

  (airline-themes-set-deftheme 'airline-base16_atelier_forest_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_forest_light)
;;; airline-base16_atelier_forest_light-theme.el ends here
