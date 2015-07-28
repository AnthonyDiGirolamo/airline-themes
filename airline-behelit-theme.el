
;;; Code:

(deftheme airline-behelit
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/behelit.vim")

(let ((normal-outer-foreground  "#121212") (normal-outer-background  "#5f87ff")
      (normal-inner-foreground  "#5f87ff") (normal-inner-background  "#262626")
      (normal-center-foreground "#5f87ff") (normal-center-background "#1c1c1c")

      (insert-outer-foreground  "#121212") (insert-outer-background  "#00ff87")
      (insert-inner-foreground  "#5f87ff") (insert-inner-background  "#262626")
      (insert-center-foreground "#5f87ff") (insert-center-background "#1c1c1c")

      (visual-outer-foreground  "#121212") (visual-outer-background  "#5fff5f")
      (visual-inner-foreground  "#5f87ff") (visual-inner-background  "#262626")
      (visual-center-foreground "#5f87ff") (visual-center-background "#1c1c1c")

      (replace-outer-foreground "#121212") (replace-outer-background "#d70057")
      (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

      (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
      (inactive2-foreground "#4e4e4e") (inactive2-background "#262626"))

  (airline-themes-set-deftheme 'airline-behelit)

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  `(bar ,insert-outer-background))
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))
)

(airline-themes-set-modeline)

(provide-theme 'airline-behelit)
;;; airline-behelit-theme.el ends here
