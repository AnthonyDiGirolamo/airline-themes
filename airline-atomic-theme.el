
;;; Code:

(deftheme airline-atomic
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#282c34") (normal-outer-background   "#abb2bf")
      (normal-inner-foreground   "#282c34") (normal-inner-background   "#4b5263")
      (normal-center-foreground  "#abb2bf") (normal-center-background  "#2c323c")

      (insert-outer-foreground   "#282c34") (insert-outer-background   "#61afef")
      (insert-inner-foreground   "#282c34") (insert-inner-background   "#4b5263")
      (insert-center-foreground  "#61afef") (insert-center-background  "#2c323c")

      (visual-outer-foreground   "#282c34") (visual-outer-background   "#e06c75")
      (visual-inner-foreground   "#282c34") (visual-inner-background   "#4b5263")
      (visual-center-foreground  "#e06c75") (visual-center-background  "#2c323c")

      (replace-outer-foreground  "#282c34") (replace-outer-background  "#e06c75")
      (replace-inner-foreground  "#282c34") (replace-inner-background  "#4b5263")
      (replace-center-foreground "#e06c75") (replace-center-background "#2c323c")

      (emacs-outer-foreground    "#282c34") (emacs-outer-background    "#abb2bf")
      (emacs-inner-foreground    "#282c34") (emacs-inner-background    "#4b5263")
      (emacs-center-foreground   "#abb2bf") (emacs-center-background   "#2c323c")

      (inactive1-foreground      "#4b5263") (inactive1-background      "#2c323c")
      (inactive2-foreground      "#4b5263") (inactive2-background      "#2c323c")
      (inactive3-foreground      "#4b5263") (inactive3-background      "#2c323c"))

  (airline-themes-set-deftheme 'airline-atomic)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-atomic)
;;; airline-atomic-theme.el ends here
