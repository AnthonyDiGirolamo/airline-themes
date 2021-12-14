
;;; Code:

(deftheme airline-base16_grayscale_dark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#252525") (normal-outer-background   "#ababab")
      (normal-inner-foreground   "#ababab") (normal-inner-background   "#464646")
      (normal-center-foreground  "#ababab") (normal-center-background  "#252525")

      (insert-outer-foreground   "#252525") (insert-outer-background   "#8e8e8e")
      (insert-inner-foreground   "#ababab") (insert-inner-background   "#464646")
      (insert-center-foreground  "#ababab") (insert-center-background  "#252525")

      (visual-outer-foreground   "#252525") (visual-outer-background   "#999999")
      (visual-inner-foreground   "#ababab") (visual-inner-background   "#464646")
      (visual-center-foreground  "#ababab") (visual-center-background  "#252525")

      (replace-outer-foreground  "#252525") (replace-outer-background  "#747474")
      (replace-inner-foreground  "#ababab") (replace-inner-background  "#464646")
      (replace-center-foreground "#ababab") (replace-center-background "#252525")

      (emacs-outer-foreground    "#252525") (emacs-outer-background    "#ababab")
      (emacs-inner-foreground    "#ababab") (emacs-inner-background    "#464646")
      (emacs-center-foreground   "#ababab") (emacs-center-background   "#252525")

      (inactive1-foreground      "#252525") (inactive1-background      "#252525")
      (inactive2-foreground      "#ababab") (inactive2-background      "#252525")
      (inactive3-foreground      "#b9b9b9") (inactive3-background      "#252525"))

  (airline-themes-set-deftheme 'airline-base16_grayscale_dark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_grayscale_dark)
;;; airline-base16_grayscale_dark-theme.el ends here
