
;;; Code:

(deftheme airline-base16_material_lighter
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#E7EAEC") (normal-outer-background   "#8796B0")
      (normal-inner-foreground   "#8796B0") (normal-inner-background   "#CCEAE7")
      (normal-center-foreground  "#8796B0") (normal-center-background  "#E7EAEC")

      (insert-outer-foreground   "#E7EAEC") (insert-outer-background   "#91B859")
      (insert-inner-foreground   "#8796B0") (insert-inner-background   "#CCEAE7")
      (insert-center-foreground  "#8796B0") (insert-center-background  "#E7EAEC")

      (visual-outer-foreground   "#E7EAEC") (visual-outer-background   "#F76D47")
      (visual-inner-foreground   "#8796B0") (visual-inner-background   "#CCEAE7")
      (visual-center-foreground  "#8796B0") (visual-center-background  "#E7EAEC")

      (replace-outer-foreground  "#E7EAEC") (replace-outer-background  "#7C4DFF")
      (replace-inner-foreground  "#8796B0") (replace-inner-background  "#CCEAE7")
      (replace-center-foreground "#8796B0") (replace-center-background "#E7EAEC")

      (emacs-outer-foreground    "#E7EAEC") (emacs-outer-background    "#8796B0")
      (emacs-inner-foreground    "#8796B0") (emacs-inner-background    "#CCEAE7")
      (emacs-center-foreground   "#8796B0") (emacs-center-background   "#E7EAEC")

      (inactive1-foreground      "#E7EAEC") (inactive1-background      "#E7EAEC")
      (inactive2-foreground      "#8796B0") (inactive2-background      "#E7EAEC")
      (inactive3-foreground      "#80CBC4") (inactive3-background      "#E7EAEC"))

  (airline-themes-set-deftheme 'airline-base16_material_lighter)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_material_lighter)
;;; airline-base16_material_lighter-theme.el ends here
