
;;; Code:

(deftheme airline-base16_xcode_dusk
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#3D4048") (normal-outer-background   "#7E8086")
      (normal-inner-foreground   "#7E8086") (normal-inner-background   "#53555D")
      (normal-center-foreground  "#7E8086") (normal-center-background  "#3D4048")

      (insert-outer-foreground   "#3D4048") (insert-outer-background   "#DF0002")
      (insert-inner-foreground   "#7E8086") (insert-inner-background   "#53555D")
      (insert-center-foreground  "#7E8086") (insert-center-background  "#3D4048")

      (visual-outer-foreground   "#3D4048") (visual-outer-background   "#786DC5")
      (visual-inner-foreground   "#7E8086") (visual-inner-background   "#53555D")
      (visual-center-foreground  "#7E8086") (visual-center-background  "#3D4048")

      (replace-outer-foreground  "#3D4048") (replace-outer-background  "#B21889")
      (replace-inner-foreground  "#7E8086") (replace-inner-background  "#53555D")
      (replace-center-foreground "#7E8086") (replace-center-background "#3D4048")

      (emacs-outer-foreground    "#3D4048") (emacs-outer-background    "#7E8086")
      (emacs-inner-foreground    "#7E8086") (emacs-inner-background    "#53555D")
      (emacs-center-foreground   "#7E8086") (emacs-center-background   "#3D4048")

      (inactive1-foreground      "#3D4048") (inactive1-background      "#3D4048")
      (inactive2-foreground      "#7E8086") (inactive2-background      "#3D4048")
      (inactive3-foreground      "#939599") (inactive3-background      "#3D4048"))

  (airline-themes-set-deftheme 'airline-base16_xcode_dusk)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_xcode_dusk)
;;; airline-base16_xcode_dusk-theme.el ends here
