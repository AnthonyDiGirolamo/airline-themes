
;;; Code:

(deftheme airline-lessnoise
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#121212") (normal-outer-background   "#AFFFFF")
      (normal-inner-foreground   "#EEEEEE") (normal-inner-background   "#303030")
      (normal-center-foreground  "#9E9E9E") (normal-center-background  "#303030")

      (insert-outer-foreground   "#121212") (insert-outer-background   "#FFAFD7")
      (insert-inner-foreground   "#EEEEEE") (insert-inner-background   "#303030")
      (insert-center-foreground  "#9E9E9E") (insert-center-background  "#303030")

      (visual-outer-foreground   "#121212") (visual-outer-background   "#FFFFAF")
      (visual-inner-foreground   "#EEEEEE") (visual-inner-background   "#303030")
      (visual-center-foreground  "#9E9E9E") (visual-center-background  "#303030")

      (replace-outer-foreground  "#121212") (replace-outer-background  "#FF5F5F")
      (replace-inner-foreground  "#EEEEEE") (replace-inner-background  "#303030")
      (replace-center-foreground "#9E9E9E") (replace-center-background "#303030")

      (emacs-outer-foreground    "#121212") (emacs-outer-background    "#AFFFFF")
      (emacs-inner-foreground    "#EEEEEE") (emacs-inner-background    "#303030")
      (emacs-center-foreground   "#9E9E9E") (emacs-center-background   "#303030")

      (inactive1-foreground      "#6C6C6C") (inactive1-background      "#303030")
      (inactive2-foreground      "#6C6C6C") (inactive2-background      "#303030")
      (inactive3-foreground      "#6C6C6C") (inactive3-background      "#303030"))

  (airline-themes-set-deftheme 'airline-lessnoise)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-lessnoise)
;;; airline-lessnoise-theme.el ends here
