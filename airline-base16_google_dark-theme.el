
;;; Code:

(deftheme airline-base16_google_dark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#282a2e") (normal-outer-background   "#b4b7b4")
      (normal-inner-foreground   "#b4b7b4") (normal-inner-background   "#373b41")
      (normal-center-foreground  "#b4b7b4") (normal-center-background  "#282a2e")

      (insert-outer-foreground   "#282a2e") (insert-outer-background   "#198844")
      (insert-inner-foreground   "#b4b7b4") (insert-inner-background   "#373b41")
      (insert-center-foreground  "#b4b7b4") (insert-center-background  "#282a2e")

      (visual-outer-foreground   "#282a2e") (visual-outer-background   "#F96A38")
      (visual-inner-foreground   "#b4b7b4") (visual-inner-background   "#373b41")
      (visual-center-foreground  "#b4b7b4") (visual-center-background  "#282a2e")

      (replace-outer-foreground  "#282a2e") (replace-outer-background  "#A36AC7")
      (replace-inner-foreground  "#b4b7b4") (replace-inner-background  "#373b41")
      (replace-center-foreground "#b4b7b4") (replace-center-background "#282a2e")

      (emacs-outer-foreground    "#282a2e") (emacs-outer-background    "#b4b7b4")
      (emacs-inner-foreground    "#b4b7b4") (emacs-inner-background    "#373b41")
      (emacs-center-foreground   "#b4b7b4") (emacs-center-background   "#282a2e")

      (inactive1-foreground      "#282a2e") (inactive1-background      "#282a2e")
      (inactive2-foreground      "#b4b7b4") (inactive2-background      "#282a2e")
      (inactive3-foreground      "#c5c8c6") (inactive3-background      "#282a2e"))

  (airline-themes-set-deftheme 'airline-base16_google_dark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_google_dark)
;;; airline-base16_google_dark-theme.el ends here
