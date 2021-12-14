
;;; Code:

(deftheme airline-tomorrow
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#282c34") (normal-outer-background   "#61afef")
      (normal-inner-foreground   "#abb2bf") (normal-inner-background   "#333841")
      (normal-center-foreground  "#abb2bf") (normal-center-background  "#2c323c")

      (insert-outer-foreground   "#282c34") (insert-outer-background   "#abb2bf")
      (insert-inner-foreground   "#abb2bf") (insert-inner-background   "#282c34")
      (insert-center-foreground  "#abb2bf") (insert-center-background  "#2c323c")

      (visual-outer-foreground   "#282c34") (visual-outer-background   "#98c379")
      (visual-inner-foreground   "#98c379") (visual-inner-background   "#282c34")
      (visual-center-foreground  "#abb2bf") (visual-center-background  "#2c323c")

      (replace-outer-foreground  "#e06c75") (replace-outer-background  "#282c34")
      (replace-inner-foreground  "#abb2bf") (replace-inner-background  "#333841")
      (replace-center-foreground "#abb2bf") (replace-center-background "#2c323c")

      (emacs-outer-foreground    "#282c34") (emacs-outer-background    "#61afef")
      (emacs-inner-foreground    "#abb2bf") (emacs-inner-background    "#333841")
      (emacs-center-foreground   "#abb2bf") (emacs-center-background   "#2c323c")

      (inactive1-foreground      "#5c6370") (inactive1-background      "#2c323c")
      (inactive2-foreground      "#5c6370") (inactive2-background      "#2c323c")
      (inactive3-foreground      "#5c6370") (inactive3-background      "#2c323c"))

  (airline-themes-set-deftheme 'airline-tomorrow)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-tomorrow)
;;; airline-tomorrow-theme.el ends here
