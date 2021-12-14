
;;; Code:

(deftheme airline-google_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#FFFFFF") (normal-outer-background   "#34A853")
      (normal-inner-foreground   "#5F6368") (normal-inner-background   "#E8EAED")
      (normal-center-foreground  "#34A853") (normal-center-background  "#FFFFFF")

      (insert-outer-foreground   "#FFFFFF") (insert-outer-background   "#4285F4")
      (insert-inner-foreground   "#5F6368") (insert-inner-background   "#E8EAED")
      (insert-center-foreground  "#4285F4") (insert-center-background  "#FFFFFF")

      (visual-outer-foreground   "#FFFFFF") (visual-outer-background   "#FBBC04")
      (visual-inner-foreground   "#5F6368") (visual-inner-background   "#E8EAED")
      (visual-center-foreground  "#FBBC04") (visual-center-background  "#FFFFFF")

      (replace-outer-foreground  "#FFFFFF") (replace-outer-background  "#EA4335")
      (replace-inner-foreground  "#5F6368") (replace-inner-background  "#E8EAED")
      (replace-center-foreground "#EA4335") (replace-center-background "#FFFFFF")

      (emacs-outer-foreground    "#FFFFFF") (emacs-outer-background    "#34A853")
      (emacs-inner-foreground    "#5F6368") (emacs-inner-background    "#E8EAED")
      (emacs-center-foreground   "#34A853") (emacs-center-background   "#FFFFFF")

      (inactive1-foreground      "#FFFFFF") (inactive1-background      "#E8EAED")
      (inactive2-foreground      "#5F6368") (inactive2-background      "#E8EAED")
      (inactive3-foreground      "#E8EAED") (inactive3-background      "#FFFFFF"))

  (airline-themes-set-deftheme 'airline-google_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-google_light)
;;; airline-google_light-theme.el ends here
