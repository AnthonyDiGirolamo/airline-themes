
;;; Code:

(deftheme airline-base16_grayscale_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#e3e3e3") (normal-outer-background   "#525252")
      (normal-inner-foreground   "#525252") (normal-inner-background   "#b9b9b9")
      (normal-center-foreground  "#525252") (normal-center-background  "#e3e3e3")

      (insert-outer-foreground   "#e3e3e3") (insert-outer-background   "#8e8e8e")
      (insert-inner-foreground   "#525252") (insert-inner-background   "#b9b9b9")
      (insert-center-foreground  "#525252") (insert-center-background  "#e3e3e3")

      (visual-outer-foreground   "#e3e3e3") (visual-outer-background   "#999999")
      (visual-inner-foreground   "#525252") (visual-inner-background   "#b9b9b9")
      (visual-center-foreground  "#525252") (visual-center-background  "#e3e3e3")

      (replace-outer-foreground  "#e3e3e3") (replace-outer-background  "#747474")
      (replace-inner-foreground  "#525252") (replace-inner-background  "#b9b9b9")
      (replace-center-foreground "#525252") (replace-center-background "#e3e3e3")

      (emacs-outer-foreground    "#e3e3e3") (emacs-outer-background    "#525252")
      (emacs-inner-foreground    "#525252") (emacs-inner-background    "#b9b9b9")
      (emacs-center-foreground   "#525252") (emacs-center-background   "#e3e3e3")

      (inactive1-foreground      "#e3e3e3") (inactive1-background      "#e3e3e3")
      (inactive2-foreground      "#525252") (inactive2-background      "#e3e3e3")
      (inactive3-foreground      "#464646") (inactive3-background      "#e3e3e3"))

  (airline-themes-set-deftheme 'airline-base16_grayscale_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_grayscale_light)
;;; airline-base16_grayscale_light-theme.el ends here
