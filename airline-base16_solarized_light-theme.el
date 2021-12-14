
;;; Code:

(deftheme airline-base16_solarized_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#eee8d5") (normal-outer-background   "#657b83")
      (normal-inner-foreground   "#657b83") (normal-inner-background   "#93a1a1")
      (normal-center-foreground  "#657b83") (normal-center-background  "#eee8d5")

      (insert-outer-foreground   "#eee8d5") (insert-outer-background   "#859900")
      (insert-inner-foreground   "#657b83") (insert-inner-background   "#93a1a1")
      (insert-center-foreground  "#657b83") (insert-center-background  "#eee8d5")

      (visual-outer-foreground   "#eee8d5") (visual-outer-background   "#cb4b16")
      (visual-inner-foreground   "#657b83") (visual-inner-background   "#93a1a1")
      (visual-center-foreground  "#657b83") (visual-center-background  "#eee8d5")

      (replace-outer-foreground  "#eee8d5") (replace-outer-background  "#6c71c4")
      (replace-inner-foreground  "#657b83") (replace-inner-background  "#93a1a1")
      (replace-center-foreground "#657b83") (replace-center-background "#eee8d5")

      (emacs-outer-foreground    "#eee8d5") (emacs-outer-background    "#657b83")
      (emacs-inner-foreground    "#657b83") (emacs-inner-background    "#93a1a1")
      (emacs-center-foreground   "#657b83") (emacs-center-background   "#eee8d5")

      (inactive1-foreground      "#eee8d5") (inactive1-background      "#eee8d5")
      (inactive2-foreground      "#657b83") (inactive2-background      "#eee8d5")
      (inactive3-foreground      "#586e75") (inactive3-background      "#eee8d5"))

  (airline-themes-set-deftheme 'airline-base16_solarized_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_solarized_light)
;;; airline-base16_solarized_light-theme.el ends here
