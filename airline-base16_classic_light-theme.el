
;;; Code:

(deftheme airline-base16_classic_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#E0E0E0") (normal-outer-background   "#505050")
      (normal-inner-foreground   "#505050") (normal-inner-background   "#D0D0D0")
      (normal-center-foreground  "#505050") (normal-center-background  "#E0E0E0")

      (insert-outer-foreground   "#E0E0E0") (insert-outer-background   "#90A959")
      (insert-inner-foreground   "#505050") (insert-inner-background   "#D0D0D0")
      (insert-center-foreground  "#505050") (insert-center-background  "#E0E0E0")

      (visual-outer-foreground   "#E0E0E0") (visual-outer-background   "#D28445")
      (visual-inner-foreground   "#505050") (visual-inner-background   "#D0D0D0")
      (visual-center-foreground  "#505050") (visual-center-background  "#E0E0E0")

      (replace-outer-foreground  "#E0E0E0") (replace-outer-background  "#AA759F")
      (replace-inner-foreground  "#505050") (replace-inner-background  "#D0D0D0")
      (replace-center-foreground "#505050") (replace-center-background "#E0E0E0")

      (emacs-outer-foreground    "#E0E0E0") (emacs-outer-background    "#505050")
      (emacs-inner-foreground    "#505050") (emacs-inner-background    "#D0D0D0")
      (emacs-center-foreground   "#505050") (emacs-center-background   "#E0E0E0")

      (inactive1-foreground      "#E0E0E0") (inactive1-background      "#E0E0E0")
      (inactive2-foreground      "#505050") (inactive2-background      "#E0E0E0")
      (inactive3-foreground      "#303030") (inactive3-background      "#E0E0E0"))

  (airline-themes-set-deftheme 'airline-base16_classic_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_classic_light)
;;; airline-base16_classic_light-theme.el ends here
