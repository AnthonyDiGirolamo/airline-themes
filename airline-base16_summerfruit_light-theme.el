
;;; Code:

(deftheme airline-base16_summerfruit_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#E0E0E0") (normal-outer-background   "#000000")
      (normal-inner-foreground   "#000000") (normal-inner-background   "#D0D0D0")
      (normal-center-foreground  "#000000") (normal-center-background  "#E0E0E0")

      (insert-outer-foreground   "#E0E0E0") (insert-outer-background   "#00C918")
      (insert-inner-foreground   "#000000") (insert-inner-background   "#D0D0D0")
      (insert-center-foreground  "#000000") (insert-center-background  "#E0E0E0")

      (visual-outer-foreground   "#E0E0E0") (visual-outer-background   "#FD8900")
      (visual-inner-foreground   "#000000") (visual-inner-background   "#D0D0D0")
      (visual-center-foreground  "#000000") (visual-center-background  "#E0E0E0")

      (replace-outer-foreground  "#E0E0E0") (replace-outer-background  "#AD00A1")
      (replace-inner-foreground  "#000000") (replace-inner-background  "#D0D0D0")
      (replace-center-foreground "#000000") (replace-center-background "#E0E0E0")

      (emacs-outer-foreground    "#E0E0E0") (emacs-outer-background    "#000000")
      (emacs-inner-foreground    "#000000") (emacs-inner-background    "#D0D0D0")
      (emacs-center-foreground   "#000000") (emacs-center-background   "#E0E0E0")

      (inactive1-foreground      "#E0E0E0") (inactive1-background      "#E0E0E0")
      (inactive2-foreground      "#000000") (inactive2-background      "#E0E0E0")
      (inactive3-foreground      "#101010") (inactive3-background      "#E0E0E0"))

  (airline-themes-set-deftheme 'airline-base16_summerfruit_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_summerfruit_light)
;;; airline-base16_summerfruit_light-theme.el ends here
