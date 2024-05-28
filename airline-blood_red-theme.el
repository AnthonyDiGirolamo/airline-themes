
;;; Code:

(deftheme airline-blood_red
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#bcbcbc") (normal-outer-background   "#d62929")
      (normal-inner-foreground   "#ffffff") (normal-inner-background   "#8b0000")
      (normal-center-foreground  "#c6c6c6") (normal-center-background  "#3a3a3a")

      (insert-outer-foreground   "#fffdfa") (insert-outer-background   "#8b0000")
      (insert-inner-foreground   "#ffffff") (insert-inner-background   "#c50000")
      (insert-center-foreground  "#c6c6c6") (insert-center-background  "#3a3a3a")

      (visual-outer-foreground   "#fffdfa") (visual-outer-background   "#d62962")
      (visual-inner-foreground   "#ffffff") (visual-inner-background   "#8b0000")
      (visual-center-foreground  "#c6c6c6") (visual-center-background  "#3a3a3a")

      (replace-outer-foreground  "#c6c6c6") (replace-outer-background  "#d62962")
      (replace-inner-foreground  "#ffffff") (replace-inner-background  "#8b0000")
      (replace-center-foreground "#c6c6c6") (replace-center-background "#3a3a3a")

      (emacs-outer-foreground    "#bcbcbc") (emacs-outer-background    "#d62929")
      (emacs-inner-foreground    "#ffffff") (emacs-inner-background    "#8b0000")
      (emacs-center-foreground   "#c6c6c6") (emacs-center-background   "#3a3a3a")

      (inactive1-foreground      "#d62929") (inactive1-background      "#3a3a3a")
      (inactive2-foreground      "#d62929") (inactive2-background      "#3a3a3a")
      (inactive3-foreground      "#d62929") (inactive3-background      "#3a3a3a"))

  (airline-themes-set-deftheme 'airline-blood_red)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-blood_red)
;;; airline-blood_red-theme.el ends here
