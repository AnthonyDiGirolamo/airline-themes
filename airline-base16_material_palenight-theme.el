
;;; Code:

(deftheme airline-base16_material_palenight
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#444267") (normal-outer-background   "#8796B0")
      (normal-inner-foreground   "#8796B0") (normal-inner-background   "#32374D")
      (normal-center-foreground  "#8796B0") (normal-center-background  "#444267")

      (insert-outer-foreground   "#444267") (insert-outer-background   "#C3E88D")
      (insert-inner-foreground   "#8796B0") (insert-inner-background   "#32374D")
      (insert-center-foreground  "#8796B0") (insert-center-background  "#444267")

      (visual-outer-foreground   "#444267") (visual-outer-background   "#F78C6C")
      (visual-inner-foreground   "#8796B0") (visual-inner-background   "#32374D")
      (visual-center-foreground  "#8796B0") (visual-center-background  "#444267")

      (replace-outer-foreground  "#444267") (replace-outer-background  "#C792EA")
      (replace-inner-foreground  "#8796B0") (replace-inner-background  "#32374D")
      (replace-center-foreground "#8796B0") (replace-center-background "#444267")

      (emacs-outer-foreground    "#444267") (emacs-outer-background    "#8796B0")
      (emacs-inner-foreground    "#8796B0") (emacs-inner-background    "#32374D")
      (emacs-center-foreground   "#8796B0") (emacs-center-background   "#444267")

      (inactive1-foreground      "#444267") (inactive1-background      "#444267")
      (inactive2-foreground      "#8796B0") (inactive2-background      "#444267")
      (inactive3-foreground      "#959DCB") (inactive3-background      "#444267"))

  (airline-themes-set-deftheme 'airline-base16_material_palenight)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_material_palenight)
;;; airline-base16_material_palenight-theme.el ends here
