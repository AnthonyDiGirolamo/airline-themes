
;;; Code:

(deftheme airline-base16_heetch_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#392551") (normal-outer-background   "#ddd6e5")
      (normal-inner-foreground   "#ddd6e5") (normal-inner-background   "#7b6d8b")
      (normal-center-foreground  "#ddd6e5") (normal-center-background  "#392551")

      (insert-outer-foreground   "#392551") (insert-outer-background   "#f80059")
      (insert-inner-foreground   "#ddd6e5") (insert-inner-background   "#7b6d8b")
      (insert-center-foreground  "#ddd6e5") (insert-center-background  "#392551")

      (visual-outer-foreground   "#392551") (visual-outer-background   "#bdb6c5")
      (visual-inner-foreground   "#ddd6e5") (visual-inner-background   "#7b6d8b")
      (visual-center-foreground  "#ddd6e5") (visual-center-background  "#392551")

      (replace-outer-foreground  "#392551") (replace-outer-background  "#bd0152")
      (replace-inner-foreground  "#ddd6e5") (replace-inner-background  "#7b6d8b")
      (replace-center-foreground "#ddd6e5") (replace-center-background "#392551")

      (emacs-outer-foreground    "#392551") (emacs-outer-background    "#ddd6e5")
      (emacs-inner-foreground    "#ddd6e5") (emacs-inner-background    "#7b6d8b")
      (emacs-center-foreground   "#ddd6e5") (emacs-center-background   "#392551")

      (inactive1-foreground      "#392551") (inactive1-background      "#392551")
      (inactive2-foreground      "#ddd6e5") (inactive2-background      "#392551")
      (inactive3-foreground      "#5a496e") (inactive3-background      "#392551"))

  (airline-themes-set-deftheme 'airline-base16_heetch_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_heetch_light)
;;; airline-base16_heetch_light-theme.el ends here
