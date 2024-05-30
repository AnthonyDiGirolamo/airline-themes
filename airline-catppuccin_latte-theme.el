
;;; Code:

(deftheme airline-catppuccin_latte
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#E6E9EF") (normal-outer-background   "#1e66f5")
      (normal-inner-foreground   "#1e66f5") (normal-inner-background   "#BCC0CC")
      (normal-center-foreground  "#4C4F69") (normal-center-background  "#EFF1F5")

      (insert-outer-foreground   "#E6E9EF") (insert-outer-background   "#179299")
      (insert-inner-foreground   "#179299") (insert-inner-background   "#E6E9EF")
      (insert-center-foreground  "#4C4F69") (insert-center-background  "#EFF1F5")

      (visual-outer-foreground   "#E6E9EF") (visual-outer-background   "#8839EF")
      (visual-inner-foreground   "#8839EF") (visual-inner-background   "#E6E9EF")
      (visual-center-foreground  "#4C4F69") (visual-center-background  "#EFF1F5")

      (replace-outer-foreground  "#E6E9EF") (replace-outer-background  "#D20F39")
      (replace-inner-foreground  "#1e66f5") (replace-inner-background  "#BCC0CC")
      (replace-center-foreground "#4C4F69") (replace-center-background "#EFF1F5")

      (emacs-outer-foreground    "#E6E9EF") (emacs-outer-background    "#1e66f5")
      (emacs-inner-foreground    "#1e66f5") (emacs-inner-background    "#BCC0CC")
      (emacs-center-foreground   "#4C4F69") (emacs-center-background   "#EFF1F5")

      (inactive1-foreground      "#1e66f5") (inactive1-background      "#EFF1F5")
      (inactive2-foreground      "#1e66f5") (inactive2-background      "#EFF1F5")
      (inactive3-foreground      "#1e66f5") (inactive3-background      "#EFF1F5"))

  (airline-themes-set-deftheme 'airline-catppuccin_latte)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-catppuccin_latte)
;;; airline-catppuccin_latte-theme.el ends here
