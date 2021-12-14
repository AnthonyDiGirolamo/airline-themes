
;;; Code:

(deftheme airline-base16_papercolor_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#af0000") (normal-outer-background   "#0087af")
      (normal-inner-foreground   "#0087af") (normal-inner-background   "#008700")
      (normal-center-foreground  "#0087af") (normal-center-background  "#af0000")

      (insert-outer-foreground   "#af0000") (insert-outer-background   "#8700af")
      (insert-inner-foreground   "#0087af") (insert-inner-background   "#008700")
      (insert-center-foreground  "#0087af") (insert-center-background  "#af0000")

      (visual-outer-foreground   "#af0000") (visual-outer-background   "#d70000")
      (visual-inner-foreground   "#0087af") (visual-inner-background   "#008700")
      (visual-center-foreground  "#0087af") (visual-center-background  "#af0000")

      (replace-outer-foreground  "#af0000") (replace-outer-background  "#005faf")
      (replace-inner-foreground  "#0087af") (replace-inner-background  "#008700")
      (replace-center-foreground "#0087af") (replace-center-background "#af0000")

      (emacs-outer-foreground    "#af0000") (emacs-outer-background    "#0087af")
      (emacs-inner-foreground    "#0087af") (emacs-inner-background    "#008700")
      (emacs-center-foreground   "#0087af") (emacs-center-background   "#af0000")

      (inactive1-foreground      "#af0000") (inactive1-background      "#af0000")
      (inactive2-foreground      "#0087af") (inactive2-background      "#af0000")
      (inactive3-foreground      "#878787") (inactive3-background      "#af0000"))

  (airline-themes-set-deftheme 'airline-base16_papercolor_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_papercolor_light)
;;; airline-base16_papercolor_light-theme.el ends here
