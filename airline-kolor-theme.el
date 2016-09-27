
;;; Code:

(deftheme airline-kolor
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/kolor.vim")

(let ((normal-outer-foreground  "#e2e2e2") (normal-outer-background  "#4f3598")
      (normal-inner-foreground  "#ff5fd7") (normal-inner-background  "#242322")
      (normal-center-foreground "#e2e2e2") (normal-center-background "#4a4a4a")

      (insert-outer-foreground  "#242322") (insert-outer-background  "#7eaefd")
      (insert-inner-foreground  "#75d7d8") (insert-inner-background  "#242322")
      (insert-center-foreground "#e2e2e2") (insert-center-background "#4a4a4a")

      (visual-outer-foreground  "#242322") (visual-outer-background  "#e6987a")
      (visual-inner-foreground  "#dbc570") (visual-inner-background  "#242322")
      (visual-center-foreground "#e2e2e2") (visual-center-background "#4a4a4a")

      (replace-outer-foreground  "#75d7d8") (replace-outer-background  "#005154")
      (replace-inner-foreground  "#ff5fd7") (replace-inner-background  "#242322")
      (replace-center-foreground "#e2e2e2") (replace-center-background "#4a4a4a")

      (emacs-outer-foreground  "#d7d7ff") (emacs-outer-background  "#5f00af")
      (emacs-inner-foreground  "#ff5fd7") (emacs-inner-background  "#242322")
      (emacs-center-foreground "#e2e2e2") (emacs-center-background "#4a4a4a")

      (inactive1-foreground "#b2b2b2") (inactive1-background "#4a4a4a")
      (inactive2-foreground "#b2b2b2") (inactive2-background "#4a4a4a")
      (inactive3-foreground "#b2b2b2") (inactive3-background "#4a4a4a"))

  (airline-themes-set-deftheme 'airline-kolor)

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  `(bar ,insert-outer-background))
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))
)

(airline-themes-set-modeline)

(provide-theme 'airline-kolor)
;;; airline-kolor-theme.el ends here
