
;;; Code:

(deftheme airline-zenburn
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#282c34") (normal-outer-background   "#abb2bf")
      (normal-inner-foreground   "#abb2bf") (normal-inner-background   "#282c34")
      (normal-center-foreground  "#5c6370") (normal-center-background  "#282c34")

      (insert-outer-foreground   "#282c34") (insert-outer-background   "#98c379")
      (insert-inner-foreground   "#98c379") (insert-inner-background   "#282c34")
      (insert-center-foreground  "#5c6370") (insert-center-background  "#282c34")

      (visual-outer-foreground   "#282c34") (visual-outer-background   "#e06c75")
      (visual-inner-foreground   "#e06c75") (visual-inner-background   "#282c34")
      (visual-center-foreground  "#5c6370") (visual-center-background  "#282c34")

      (replace-outer-foreground  "#282c34") (replace-outer-background  "#5c6370")
      (replace-inner-foreground  "#5c6370") (replace-inner-background  "#282c34")
      (replace-center-foreground "#5c6370") (replace-center-background "#282c34")

      (emacs-outer-foreground    "#282c34") (emacs-outer-background    "#abb2bf")
      (emacs-inner-foreground    "#abb2bf") (emacs-inner-background    "#282c34")
      (emacs-center-foreground   "#5c6370") (emacs-center-background   "#282c34")

      (inactive1-foreground      "#5c6370") (inactive1-background      "#282c34")
      (inactive2-foreground      "#5c6370") (inactive2-background      "#282c34")
      (inactive3-foreground      "#5c6370") (inactive3-background      "#282c34"))

  (airline-themes-set-deftheme 'airline-zenburn)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-zenburn)
;;; airline-zenburn-theme.el ends here
