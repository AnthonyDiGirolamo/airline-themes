
;;; Code:

(deftheme airline-base16_rebecca
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#663399") (normal-outer-background   "#a0a0c5")
      (normal-inner-foreground   "#a0a0c5") (normal-inner-background   "#383a62")
      (normal-center-foreground  "#a0a0c5") (normal-center-background  "#663399")

      (insert-outer-foreground   "#663399") (insert-outer-background   "#6dfedf")
      (insert-inner-foreground   "#a0a0c5") (insert-inner-background   "#383a62")
      (insert-center-foreground  "#a0a0c5") (insert-center-background  "#663399")

      (visual-outer-foreground   "#663399") (visual-outer-background   "#efe4a1")
      (visual-inner-foreground   "#a0a0c5") (visual-inner-background   "#383a62")
      (visual-center-foreground  "#a0a0c5") (visual-center-background  "#663399")

      (replace-outer-foreground  "#663399") (replace-outer-background  "#7aa5ff")
      (replace-inner-foreground  "#a0a0c5") (replace-inner-background  "#383a62")
      (replace-center-foreground "#a0a0c5") (replace-center-background "#663399")

      (emacs-outer-foreground    "#663399") (emacs-outer-background    "#a0a0c5")
      (emacs-inner-foreground    "#a0a0c5") (emacs-inner-background    "#383a62")
      (emacs-center-foreground   "#a0a0c5") (emacs-center-background   "#663399")

      (inactive1-foreground      "#663399") (inactive1-background      "#663399")
      (inactive2-foreground      "#a0a0c5") (inactive2-background      "#663399")
      (inactive3-foreground      "#f1eff8") (inactive3-background      "#663399"))

  (airline-themes-set-deftheme 'airline-base16_rebecca)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_rebecca)
;;; airline-base16_rebecca-theme.el ends here
