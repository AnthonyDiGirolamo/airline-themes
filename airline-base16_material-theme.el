
;;; Code:

(deftheme airline-base16_material
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#2E3C43") (normal-outer-background   "#B2CCD6")
      (normal-inner-foreground   "#B2CCD6") (normal-inner-background   "#314549")
      (normal-center-foreground  "#B2CCD6") (normal-center-background  "#2E3C43")

      (insert-outer-foreground   "#2E3C43") (insert-outer-background   "#C3E88D")
      (insert-inner-foreground   "#B2CCD6") (insert-inner-background   "#314549")
      (insert-center-foreground  "#B2CCD6") (insert-center-background  "#2E3C43")

      (visual-outer-foreground   "#2E3C43") (visual-outer-background   "#F78C6C")
      (visual-inner-foreground   "#B2CCD6") (visual-inner-background   "#314549")
      (visual-center-foreground  "#B2CCD6") (visual-center-background  "#2E3C43")

      (replace-outer-foreground  "#2E3C43") (replace-outer-background  "#C792EA")
      (replace-inner-foreground  "#B2CCD6") (replace-inner-background  "#314549")
      (replace-center-foreground "#B2CCD6") (replace-center-background "#2E3C43")

      (emacs-outer-foreground    "#2E3C43") (emacs-outer-background    "#B2CCD6")
      (emacs-inner-foreground    "#B2CCD6") (emacs-inner-background    "#314549")
      (emacs-center-foreground   "#B2CCD6") (emacs-center-background   "#2E3C43")

      (inactive1-foreground      "#2E3C43") (inactive1-background      "#2E3C43")
      (inactive2-foreground      "#B2CCD6") (inactive2-background      "#2E3C43")
      (inactive3-foreground      "#EEFFFF") (inactive3-background      "#2E3C43"))

  (airline-themes-set-deftheme 'airline-base16_material)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_material)
;;; airline-base16_material-theme.el ends here
