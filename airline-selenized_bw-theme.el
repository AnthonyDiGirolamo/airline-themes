
;;; Code:

(deftheme airline-selenized_bw
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#252525") (normal-outer-background   "#70b433")
      (normal-inner-foreground   "#b9b9b9") (normal-inner-background   "#3b3b3b")
      (normal-center-foreground  "#777777") (normal-center-background  "#252525")

      (insert-outer-foreground   "#252525") (insert-outer-background   "#368aeb")
      (insert-inner-foreground   "#b9b9b9") (insert-inner-background   "#3b3b3b")
      (insert-center-foreground  "#777777") (insert-center-background  "#252525")

      (visual-outer-foreground   "#252525") (visual-outer-background   "#a580e2")
      (visual-inner-foreground   "#b9b9b9") (visual-inner-background   "#3b3b3b")
      (visual-center-foreground  "#777777") (visual-center-background  "#252525")

      (replace-outer-foreground  "#252525") (replace-outer-background  "#ed4a46")
      (replace-inner-foreground  "#b9b9b9") (replace-inner-background  "#3b3b3b")
      (replace-center-foreground "#777777") (replace-center-background "#252525")

      (emacs-outer-foreground    "#252525") (emacs-outer-background    "#70b433")
      (emacs-inner-foreground    "#b9b9b9") (emacs-inner-background    "#3b3b3b")
      (emacs-center-foreground   "#777777") (emacs-center-background   "#252525")

      (inactive1-foreground      "#777777") (inactive1-background      "#3b3b3b")
      (inactive2-foreground      "#777777") (inactive2-background      "#3b3b3b")
      (inactive3-foreground      "#777777") (inactive3-background      "#3b3b3b"))

  (airline-themes-set-deftheme 'airline-selenized_bw)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-selenized_bw)
;;; airline-selenized_bw-theme.el ends here
