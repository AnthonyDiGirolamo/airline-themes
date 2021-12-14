
;;; Code:

(deftheme airline-base16_atelier_heath_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#d8cad8") (normal-outer-background   "#776977")
      (normal-inner-foreground   "#776977") (normal-inner-background   "#ab9bab")
      (normal-center-foreground  "#776977") (normal-center-background  "#d8cad8")

      (insert-outer-foreground   "#d8cad8") (insert-outer-background   "#918b3b")
      (insert-inner-foreground   "#776977") (insert-inner-background   "#ab9bab")
      (insert-center-foreground  "#776977") (insert-center-background  "#d8cad8")

      (visual-outer-foreground   "#d8cad8") (visual-outer-background   "#a65926")
      (visual-inner-foreground   "#776977") (visual-inner-background   "#ab9bab")
      (visual-center-foreground  "#776977") (visual-center-background  "#d8cad8")

      (replace-outer-foreground  "#d8cad8") (replace-outer-background  "#7b59c0")
      (replace-inner-foreground  "#776977") (replace-inner-background  "#ab9bab")
      (replace-center-foreground "#776977") (replace-center-background "#d8cad8")

      (emacs-outer-foreground    "#d8cad8") (emacs-outer-background    "#776977")
      (emacs-inner-foreground    "#776977") (emacs-inner-background    "#ab9bab")
      (emacs-center-foreground   "#776977") (emacs-center-background   "#d8cad8")

      (inactive1-foreground      "#d8cad8") (inactive1-background      "#d8cad8")
      (inactive2-foreground      "#776977") (inactive2-background      "#d8cad8")
      (inactive3-foreground      "#695d69") (inactive3-background      "#d8cad8"))

  (airline-themes-set-deftheme 'airline-base16_atelier_heath_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_heath_light)
;;; airline-base16_atelier_heath_light-theme.el ends here
