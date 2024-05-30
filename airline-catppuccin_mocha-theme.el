
;;; Code:

(deftheme airline-catppuccin_mocha
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#181825") (normal-outer-background   "#89B4FA")
      (normal-inner-foreground   "#89B4FA") (normal-inner-background   "#45475A")
      (normal-center-foreground  "#CDD6F4") (normal-center-background  "#1E1E2E")

      (insert-outer-foreground   "#181825") (insert-outer-background   "#94E2D5")
      (insert-inner-foreground   "#94E2D5") (insert-inner-background   "#181825")
      (insert-center-foreground  "#CDD6F4") (insert-center-background  "#1E1E2E")

      (visual-outer-foreground   "#181825") (visual-outer-background   "#CBA6F7")
      (visual-inner-foreground   "#CBA6F7") (visual-inner-background   "#181825")
      (visual-center-foreground  "#CDD6F4") (visual-center-background  "#1E1E2E")

      (replace-outer-foreground  "#181825") (replace-outer-background  "#F38BA8")
      (replace-inner-foreground  "#89B4FA") (replace-inner-background  "#45475A")
      (replace-center-foreground "#CDD6F4") (replace-center-background "#1E1E2E")

      (emacs-outer-foreground    "#181825") (emacs-outer-background    "#89B4FA")
      (emacs-inner-foreground    "#89B4FA") (emacs-inner-background    "#45475A")
      (emacs-center-foreground   "#CDD6F4") (emacs-center-background   "#1E1E2E")

      (inactive1-foreground      "#89B4FA") (inactive1-background      "#1E1E2E")
      (inactive2-foreground      "#89B4FA") (inactive2-background      "#1E1E2E")
      (inactive3-foreground      "#89B4FA") (inactive3-background      "#1E1E2E"))

  (airline-themes-set-deftheme 'airline-catppuccin_mocha)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-catppuccin_mocha)
;;; airline-catppuccin_mocha-theme.el ends here
