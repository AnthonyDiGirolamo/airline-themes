
;;; Code:

(deftheme airline-base16_summerfruit_dark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#202020") (normal-outer-background   "#B0B0B0")
      (normal-inner-foreground   "#B0B0B0") (normal-inner-background   "#303030")
      (normal-center-foreground  "#B0B0B0") (normal-center-background  "#202020")

      (insert-outer-foreground   "#202020") (insert-outer-background   "#00C918")
      (insert-inner-foreground   "#B0B0B0") (insert-inner-background   "#303030")
      (insert-center-foreground  "#B0B0B0") (insert-center-background  "#202020")

      (visual-outer-foreground   "#202020") (visual-outer-background   "#FD8900")
      (visual-inner-foreground   "#B0B0B0") (visual-inner-background   "#303030")
      (visual-center-foreground  "#B0B0B0") (visual-center-background  "#202020")

      (replace-outer-foreground  "#202020") (replace-outer-background  "#AD00A1")
      (replace-inner-foreground  "#B0B0B0") (replace-inner-background  "#303030")
      (replace-center-foreground "#B0B0B0") (replace-center-background "#202020")

      (emacs-outer-foreground    "#202020") (emacs-outer-background    "#B0B0B0")
      (emacs-inner-foreground    "#B0B0B0") (emacs-inner-background    "#303030")
      (emacs-center-foreground   "#B0B0B0") (emacs-center-background   "#202020")

      (inactive1-foreground      "#202020") (inactive1-background      "#202020")
      (inactive2-foreground      "#B0B0B0") (inactive2-background      "#202020")
      (inactive3-foreground      "#D0D0D0") (inactive3-background      "#202020"))

  (airline-themes-set-deftheme 'airline-base16_summerfruit_dark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_summerfruit_dark)
;;; airline-base16_summerfruit_dark-theme.el ends here
