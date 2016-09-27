
;;; Code:

(deftheme airline-durant
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/durant.vim")

(let ((normal-outer-foreground  "#005f00") (normal-outer-background  "#afd700")
      (normal-inner-foreground  "#93a1a1") (normal-inner-background  "#586e75")
      (normal-center-foreground "#93a1a1") (normal-center-background "#073642")

      (insert-outer-foreground  "#ffffff") (insert-outer-background  "#00875f")
      (insert-inner-foreground  "#9e9e9e") (insert-inner-background  "#303030")
      (insert-center-foreground "#87d7ff") (insert-center-background "#005f87")

      (visual-outer-foreground  "#1a1a18") (visual-outer-background  "#ffffff")
      (visual-inner-foreground  "#ffffff") (visual-inner-background  "#44403a")
      (visual-center-foreground "#90a680") (visual-center-background "#2e2d2a")

      (replace-outer-foreground  "#9e9e9e") (replace-outer-background  "#af0000")
      (replace-inner-foreground  "#93a1a1") (replace-inner-background  "#586e75")
      (replace-center-foreground "#93a1a1") (replace-center-background "#073642")

      (emacs-outer-foreground    "#d7d7ff") (emacs-outer-background    "#5f00af")
      (replace-inner-foreground  "#93a1a1") (replace-inner-background  "#586e75")
      (replace-center-foreground "#93a1a1") (replace-center-background "#073642")

      (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
      (inactive2-foreground "#4e4e4e") (inactive2-background "#262626")
      (inactive3-foreground "#4e4e4e") (inactive3-background "#262626"))

  (airline-themes-set-deftheme 'airline-durant)

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  `(bar ,insert-outer-background))
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))
)

(airline-themes-set-modeline)

(provide-theme 'airline-durant)
;;; airline-durant-theme.el ends here
