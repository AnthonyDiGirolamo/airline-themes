
;;; Code:

(deftheme airline-base16_material_darker
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#303030") (normal-outer-background   "#B2CCD6")
      (normal-inner-foreground   "#B2CCD6") (normal-inner-background   "#353535")
      (normal-center-foreground  "#B2CCD6") (normal-center-background  "#303030")

      (insert-outer-foreground   "#303030") (insert-outer-background   "#C3E88D")
      (insert-inner-foreground   "#B2CCD6") (insert-inner-background   "#353535")
      (insert-center-foreground  "#B2CCD6") (insert-center-background  "#303030")

      (visual-outer-foreground   "#303030") (visual-outer-background   "#F78C6C")
      (visual-inner-foreground   "#B2CCD6") (visual-inner-background   "#353535")
      (visual-center-foreground  "#B2CCD6") (visual-center-background  "#303030")

      (replace-outer-foreground  "#303030") (replace-outer-background  "#C792EA")
      (replace-inner-foreground  "#B2CCD6") (replace-inner-background  "#353535")
      (replace-center-foreground "#B2CCD6") (replace-center-background "#303030")

      (emacs-outer-foreground    "#303030") (emacs-outer-background    "#B2CCD6")
      (emacs-inner-foreground    "#B2CCD6") (emacs-inner-background    "#353535")
      (emacs-center-foreground   "#B2CCD6") (emacs-center-background   "#303030")

      (inactive1-foreground      "#303030") (inactive1-background      "#303030")
      (inactive2-foreground      "#B2CCD6") (inactive2-background      "#303030")
      (inactive3-foreground      "#EEFFFF") (inactive3-background      "#303030"))

  (airline-themes-set-deftheme 'airline-base16_material_darker)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_material_darker)
;;; airline-base16_material_darker-theme.el ends here
