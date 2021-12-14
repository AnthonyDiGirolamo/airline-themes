
;;; Code:

(deftheme airline-base16_unikitty_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#e1e1e2") (normal-outer-background   "#89878b")
      (normal-inner-foreground   "#89878b") (normal-inner-background   "#c4c3c5")
      (normal-center-foreground  "#89878b") (normal-center-background  "#e1e1e2")

      (insert-outer-foreground   "#e1e1e2") (insert-outer-background   "#17ad98")
      (insert-inner-foreground   "#89878b") (insert-inner-background   "#c4c3c5")
      (insert-center-foreground  "#89878b") (insert-center-background  "#e1e1e2")

      (visual-outer-foreground   "#e1e1e2") (visual-outer-background   "#d65407")
      (visual-inner-foreground   "#89878b") (visual-inner-background   "#c4c3c5")
      (visual-center-foreground  "#89878b") (visual-center-background  "#e1e1e2")

      (replace-outer-foreground  "#e1e1e2") (replace-outer-background  "#aa17e6")
      (replace-inner-foreground  "#89878b") (replace-inner-background  "#c4c3c5")
      (replace-center-foreground "#89878b") (replace-center-background "#e1e1e2")

      (emacs-outer-foreground    "#e1e1e2") (emacs-outer-background    "#89878b")
      (emacs-inner-foreground    "#89878b") (emacs-inner-background    "#c4c3c5")
      (emacs-center-foreground   "#89878b") (emacs-center-background   "#e1e1e2")

      (inactive1-foreground      "#e1e1e2") (inactive1-background      "#e1e1e2")
      (inactive2-foreground      "#89878b") (inactive2-background      "#e1e1e2")
      (inactive3-foreground      "#6c696e") (inactive3-background      "#e1e1e2"))

  (airline-themes-set-deftheme 'airline-base16_unikitty_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_unikitty_light)
;;; airline-base16_unikitty_light-theme.el ends here
