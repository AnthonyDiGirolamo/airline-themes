
;;; Code:

(deftheme airline-seoul256
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#282c34") (normal-outer-background   "#abb2bf")
      (normal-inner-foreground   "#282c34") (normal-inner-background   "#5c6370")
      (normal-center-foreground  "#282c34") (normal-center-background  "#2c323c")

      (insert-outer-foreground   "#282c34") (insert-outer-background   "#61afef")
      (insert-inner-foreground   "#282c34") (insert-inner-background   "#5c6370")
      (insert-center-foreground  "#abb2bf") (insert-center-background  "#5c6370")

      (visual-outer-foreground   "#282c34") (visual-outer-background   "#282c34")
      (visual-inner-foreground   "#282c34") (visual-inner-background   "#5c6370")
      (visual-center-foreground  "#282c34") (visual-center-background  "#828997")

      (replace-outer-foreground  "#282c34") (replace-outer-background  "#e5c07b")
      (replace-inner-foreground  "#282c34") (replace-inner-background  "#5c6370")
      (replace-center-foreground "#abb2bf") (replace-center-background "#5c6370")

      (emacs-outer-foreground    "#282c34") (emacs-outer-background    "#abb2bf")
      (emacs-inner-foreground    "#282c34") (emacs-inner-background    "#5c6370")
      (emacs-center-foreground   "#282c34") (emacs-center-background   "#2c323c")

      (inactive1-foreground      "#828997") (inactive1-background      "#2c323c")
      (inactive2-foreground      "#828997") (inactive2-background      "#2c323c")
      (inactive3-foreground      "#828997") (inactive3-background      "#2c323c"))

  (airline-themes-set-deftheme 'airline-seoul256)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-seoul256)
;;; airline-seoul256-theme.el ends here
