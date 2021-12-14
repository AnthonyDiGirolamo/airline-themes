
;;; Code:

(deftheme airline-hybrid
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#98c379") (normal-outer-background   "#3e4452")
      (normal-inner-foreground   "#abb2bf") (normal-inner-background   "#2c323c")
      (normal-center-foreground  "#abb2bf") (normal-center-background  "#333841")

      (insert-outer-foreground   "#abb2bf") (insert-outer-background   "#3e4452")
      (insert-inner-foreground   "#abb2bf") (insert-inner-background   "#2c323c")
      (insert-center-foreground  "#abb2bf") (insert-center-background  "#333841")

      (visual-outer-foreground   "#abb2bf") (visual-outer-background   "#3e4452")
      (visual-inner-foreground   "#abb2bf") (visual-inner-background   "#2c323c")
      (visual-center-foreground  "#abb2bf") (visual-center-background  "#333841")

      (replace-outer-foreground  "#d19a66") (replace-outer-background  "#3e4452")
      (replace-inner-foreground  "#abb2bf") (replace-inner-background  "#2c323c")
      (replace-center-foreground "#abb2bf") (replace-center-background "#333841")

      (emacs-outer-foreground    "#98c379") (emacs-outer-background    "#3e4452")
      (emacs-inner-foreground    "#abb2bf") (emacs-inner-background    "#2c323c")
      (emacs-center-foreground   "#abb2bf") (emacs-center-background   "#333841")

      (inactive1-foreground      "#282c34") (inactive1-background      "#5c6370")
      (inactive2-foreground      "#282c34") (inactive2-background      "#5c6370")
      (inactive3-foreground      "#282c34") (inactive3-background      "#5c6370"))

  (airline-themes-set-deftheme 'airline-hybrid)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-hybrid)
;;; airline-hybrid-theme.el ends here
