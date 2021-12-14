
;;; Code:

(deftheme airline-base16_icy
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#031619") (normal-outer-background   "#064048")
      (normal-inner-foreground   "#064048") (normal-inner-background   "#041f23")
      (normal-center-foreground  "#064048") (normal-center-background  "#031619")

      (insert-outer-foreground   "#031619") (insert-outer-background   "#4dd0e1")
      (insert-inner-foreground   "#064048") (insert-inner-background   "#041f23")
      (insert-center-foreground  "#064048") (insert-center-background  "#031619")

      (visual-outer-foreground   "#031619") (visual-outer-background   "#b3ebf2")
      (visual-inner-foreground   "#064048") (visual-inner-background   "#041f23")
      (visual-center-foreground  "#064048") (visual-center-background  "#031619")

      (replace-outer-foreground  "#031619") (replace-outer-background  "#00acc1")
      (replace-inner-foreground  "#064048") (replace-inner-background  "#041f23")
      (replace-center-foreground "#064048") (replace-center-background "#031619")

      (emacs-outer-foreground    "#031619") (emacs-outer-background    "#064048")
      (emacs-inner-foreground    "#064048") (emacs-inner-background    "#041f23")
      (emacs-center-foreground   "#064048") (emacs-center-background   "#031619")

      (inactive1-foreground      "#031619") (inactive1-background      "#031619")
      (inactive2-foreground      "#064048") (inactive2-background      "#031619")
      (inactive3-foreground      "#095b67") (inactive3-background      "#031619"))

  (airline-themes-set-deftheme 'airline-base16_icy)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_icy)
;;; airline-base16_icy-theme.el ends here
