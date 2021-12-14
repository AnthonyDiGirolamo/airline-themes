
;;; Code:

(deftheme airline-google_dark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#202124") (normal-outer-background   "#34A853")
      (normal-inner-foreground   "#E8EAED") (normal-inner-background   "#5F6368")
      (normal-center-foreground  "#34A853") (normal-center-background  "#202124")

      (insert-outer-foreground   "#202124") (insert-outer-background   "#4285F4")
      (insert-inner-foreground   "#E8EAED") (insert-inner-background   "#5F6368")
      (insert-center-foreground  "#4285F4") (insert-center-background  "#202124")

      (visual-outer-foreground   "#202124") (visual-outer-background   "#FBBC04")
      (visual-inner-foreground   "#E8EAED") (visual-inner-background   "#5F6368")
      (visual-center-foreground  "#FBBC04") (visual-center-background  "#202124")

      (replace-outer-foreground  "#202124") (replace-outer-background  "#EA4335")
      (replace-inner-foreground  "#E8EAED") (replace-inner-background  "#5F6368")
      (replace-center-foreground "#EA4335") (replace-center-background "#202124")

      (emacs-outer-foreground    "#202124") (emacs-outer-background    "#34A853")
      (emacs-inner-foreground    "#E8EAED") (emacs-inner-background    "#5F6368")
      (emacs-center-foreground   "#34A853") (emacs-center-background   "#202124")

      (inactive1-foreground      "#202124") (inactive1-background      "#5F6368")
      (inactive2-foreground      "#E8EAED") (inactive2-background      "#5F6368")
      (inactive3-foreground      "#5F6368") (inactive3-background      "#202124"))

  (airline-themes-set-deftheme 'airline-google_dark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-google_dark)
;;; airline-google_dark-theme.el ends here
