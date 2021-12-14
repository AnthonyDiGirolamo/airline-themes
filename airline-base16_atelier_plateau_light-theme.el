
;;; Code:

(deftheme airline-base16_atelier_plateau_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#e7dfdf") (normal-outer-background   "#655d5d")
      (normal-inner-foreground   "#655d5d") (normal-inner-background   "#8a8585")
      (normal-center-foreground  "#655d5d") (normal-center-background  "#e7dfdf")

      (insert-outer-foreground   "#e7dfdf") (insert-outer-background   "#4b8b8b")
      (insert-inner-foreground   "#655d5d") (insert-inner-background   "#8a8585")
      (insert-center-foreground  "#655d5d") (insert-center-background  "#e7dfdf")

      (visual-outer-foreground   "#e7dfdf") (visual-outer-background   "#b45a3c")
      (visual-inner-foreground   "#655d5d") (visual-inner-background   "#8a8585")
      (visual-center-foreground  "#655d5d") (visual-center-background  "#e7dfdf")

      (replace-outer-foreground  "#e7dfdf") (replace-outer-background  "#8464c4")
      (replace-inner-foreground  "#655d5d") (replace-inner-background  "#8a8585")
      (replace-center-foreground "#655d5d") (replace-center-background "#e7dfdf")

      (emacs-outer-foreground    "#e7dfdf") (emacs-outer-background    "#655d5d")
      (emacs-inner-foreground    "#655d5d") (emacs-inner-background    "#8a8585")
      (emacs-center-foreground   "#655d5d") (emacs-center-background   "#e7dfdf")

      (inactive1-foreground      "#e7dfdf") (inactive1-background      "#e7dfdf")
      (inactive2-foreground      "#655d5d") (inactive2-background      "#e7dfdf")
      (inactive3-foreground      "#585050") (inactive3-background      "#e7dfdf"))

  (airline-themes-set-deftheme 'airline-base16_atelier_plateau_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_plateau_light)
;;; airline-base16_atelier_plateau_light-theme.el ends here
