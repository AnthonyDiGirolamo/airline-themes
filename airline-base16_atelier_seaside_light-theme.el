
;;; Code:

(deftheme airline-base16_atelier_seaside_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#cfe8cf") (normal-outer-background   "#687d68")
      (normal-inner-foreground   "#687d68") (normal-inner-background   "#8ca68c")
      (normal-center-foreground  "#687d68") (normal-center-background  "#cfe8cf")

      (insert-outer-foreground   "#cfe8cf") (insert-outer-background   "#29a329")
      (insert-inner-foreground   "#687d68") (insert-inner-background   "#8ca68c")
      (insert-center-foreground  "#687d68") (insert-center-background  "#cfe8cf")

      (visual-outer-foreground   "#cfe8cf") (visual-outer-background   "#87711d")
      (visual-inner-foreground   "#687d68") (visual-inner-background   "#8ca68c")
      (visual-center-foreground  "#687d68") (visual-center-background  "#cfe8cf")

      (replace-outer-foreground  "#cfe8cf") (replace-outer-background  "#ad2bee")
      (replace-inner-foreground  "#687d68") (replace-inner-background  "#8ca68c")
      (replace-center-foreground "#687d68") (replace-center-background "#cfe8cf")

      (emacs-outer-foreground    "#cfe8cf") (emacs-outer-background    "#687d68")
      (emacs-inner-foreground    "#687d68") (emacs-inner-background    "#8ca68c")
      (emacs-center-foreground   "#687d68") (emacs-center-background   "#cfe8cf")

      (inactive1-foreground      "#cfe8cf") (inactive1-background      "#cfe8cf")
      (inactive2-foreground      "#687d68") (inactive2-background      "#cfe8cf")
      (inactive3-foreground      "#5e6e5e") (inactive3-background      "#cfe8cf"))

  (airline-themes-set-deftheme 'airline-base16_atelier_seaside_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_seaside_light)
;;; airline-base16_atelier_seaside_light-theme.el ends here
