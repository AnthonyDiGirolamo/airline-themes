
;;; Code:

(deftheme airline-base16_google_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#e0e0e0") (normal-outer-background   "#969896")
      (normal-inner-foreground   "#969896") (normal-inner-background   "#c5c8c6")
      (normal-center-foreground  "#969896") (normal-center-background  "#e0e0e0")

      (insert-outer-foreground   "#e0e0e0") (insert-outer-background   "#198844")
      (insert-inner-foreground   "#969896") (insert-inner-background   "#c5c8c6")
      (insert-center-foreground  "#969896") (insert-center-background  "#e0e0e0")

      (visual-outer-foreground   "#e0e0e0") (visual-outer-background   "#F96A38")
      (visual-inner-foreground   "#969896") (visual-inner-background   "#c5c8c6")
      (visual-center-foreground  "#969896") (visual-center-background  "#e0e0e0")

      (replace-outer-foreground  "#e0e0e0") (replace-outer-background  "#A36AC7")
      (replace-inner-foreground  "#969896") (replace-inner-background  "#c5c8c6")
      (replace-center-foreground "#969896") (replace-center-background "#e0e0e0")

      (emacs-outer-foreground    "#e0e0e0") (emacs-outer-background    "#969896")
      (emacs-inner-foreground    "#969896") (emacs-inner-background    "#c5c8c6")
      (emacs-center-foreground   "#969896") (emacs-center-background   "#e0e0e0")

      (inactive1-foreground      "#e0e0e0") (inactive1-background      "#e0e0e0")
      (inactive2-foreground      "#969896") (inactive2-background      "#e0e0e0")
      (inactive3-foreground      "#373b41") (inactive3-background      "#e0e0e0"))

  (airline-themes-set-deftheme 'airline-base16_google_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_google_light)
;;; airline-base16_google_light-theme.el ends here
