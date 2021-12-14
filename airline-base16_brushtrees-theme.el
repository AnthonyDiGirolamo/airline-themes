
;;; Code:

(deftheme airline-base16_brushtrees
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#C9DBDC") (normal-outer-background   "#8299A1")
      (normal-inner-foreground   "#8299A1") (normal-inner-background   "#B0C5C8")
      (normal-center-foreground  "#8299A1") (normal-center-background  "#C9DBDC")

      (insert-outer-foreground   "#C9DBDC") (insert-outer-background   "#87b386")
      (insert-inner-foreground   "#8299A1") (insert-inner-background   "#B0C5C8")
      (insert-center-foreground  "#8299A1") (insert-center-background  "#C9DBDC")

      (visual-outer-foreground   "#C9DBDC") (visual-outer-background   "#d8bba2")
      (visual-inner-foreground   "#8299A1") (visual-inner-background   "#B0C5C8")
      (visual-center-foreground  "#8299A1") (visual-center-background  "#C9DBDC")

      (replace-outer-foreground  "#C9DBDC") (replace-outer-background  "#b386b2")
      (replace-inner-foreground  "#8299A1") (replace-inner-background  "#B0C5C8")
      (replace-center-foreground "#8299A1") (replace-center-background "#C9DBDC")

      (emacs-outer-foreground    "#C9DBDC") (emacs-outer-background    "#8299A1")
      (emacs-inner-foreground    "#8299A1") (emacs-inner-background    "#B0C5C8")
      (emacs-center-foreground   "#8299A1") (emacs-center-background   "#C9DBDC")

      (inactive1-foreground      "#C9DBDC") (inactive1-background      "#C9DBDC")
      (inactive2-foreground      "#8299A1") (inactive2-background      "#C9DBDC")
      (inactive3-foreground      "#6D828E") (inactive3-background      "#C9DBDC"))

  (airline-themes-set-deftheme 'airline-base16_brushtrees)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_brushtrees)
;;; airline-base16_brushtrees-theme.el ends here
