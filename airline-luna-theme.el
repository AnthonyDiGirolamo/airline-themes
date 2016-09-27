
;;; Code:

(deftheme airline-luna
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/luna.vim")

(let ((normal-outer-foreground  "#ffffff") (normal-outer-background  "#005252")
      (normal-inner-foreground  "#ffffff") (normal-inner-background  "#003f3f")
      (normal-center-foreground "#ffffff") (normal-center-background "#002b2b")

      (insert-outer-foreground  "#ffffff") (insert-outer-background  "#789f00")
      (insert-inner-foreground  "#ffffff") (insert-inner-background  "#003f3f")
      (insert-center-foreground "#ffffff") (insert-center-background "#002b2b")

      (visual-outer-foreground  "#ffff9a") (visual-outer-background  "#ff8036")
      (visual-inner-foreground  "#ffffff") (visual-inner-background  "#003f3f")
      (visual-center-foreground "#ffffff") (visual-center-background "#002b2b")

      (replace-outer-foreground  "#ffffff") (replace-outer-background  "#920000")
      (replace-inner-foreground  "#ffffff") (replace-inner-background  "#003f3f")
      (replace-center-foreground "#ffffff") (replace-center-background "#002b2b")

      (emacs-outer-foreground  "#d7d7ff") (emacs-outer-background  "#5f00af")
      (emacs-inner-foreground  "#ffffff") (emacs-inner-background  "#003f3f")
      (emacs-center-foreground "#ffffff") (emacs-center-background "#002b2b")

      (inactive1-foreground "#4e4e4e") (inactive1-background "#002b2b")
      (inactive2-foreground "#4e4e4e") (inactive2-background "#002b2b")
      (inactive3-foreground "#4e4e4e") (inactive3-background "#002b2b"))

  (airline-themes-set-deftheme 'airline-luna)

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  `(bar ,insert-outer-background))
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))
)

(airline-themes-set-modeline)

(provide-theme 'airline-luna)
;;; airline-luna-theme.el ends here
