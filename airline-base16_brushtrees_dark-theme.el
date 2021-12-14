
;;; Code:

(deftheme airline-base16_brushtrees_dark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#5A6D7A") (normal-outer-background   "#98AFB5")
      (normal-inner-foreground   "#98AFB5") (normal-inner-background   "#6D828E")
      (normal-center-foreground  "#98AFB5") (normal-center-background  "#5A6D7A")

      (insert-outer-foreground   "#5A6D7A") (insert-outer-background   "#87b386")
      (insert-inner-foreground   "#98AFB5") (insert-inner-background   "#6D828E")
      (insert-center-foreground  "#98AFB5") (insert-center-background  "#5A6D7A")

      (visual-outer-foreground   "#5A6D7A") (visual-outer-background   "#d8bba2")
      (visual-inner-foreground   "#98AFB5") (visual-inner-background   "#6D828E")
      (visual-center-foreground  "#98AFB5") (visual-center-background  "#5A6D7A")

      (replace-outer-foreground  "#5A6D7A") (replace-outer-background  "#b386b2")
      (replace-inner-foreground  "#98AFB5") (replace-inner-background  "#6D828E")
      (replace-center-foreground "#98AFB5") (replace-center-background "#5A6D7A")

      (emacs-outer-foreground    "#5A6D7A") (emacs-outer-background    "#98AFB5")
      (emacs-inner-foreground    "#98AFB5") (emacs-inner-background    "#6D828E")
      (emacs-center-foreground   "#98AFB5") (emacs-center-background   "#5A6D7A")

      (inactive1-foreground      "#5A6D7A") (inactive1-background      "#5A6D7A")
      (inactive2-foreground      "#98AFB5") (inactive2-background      "#5A6D7A")
      (inactive3-foreground      "#B0C5C8") (inactive3-background      "#5A6D7A"))

  (airline-themes-set-deftheme 'airline-base16_brushtrees_dark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_brushtrees_dark)
;;; airline-base16_brushtrees_dark-theme.el ends here
