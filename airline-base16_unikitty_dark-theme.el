
;;; Code:

(deftheme airline-base16_unikitty_dark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#4a464d") (normal-outer-background   "#9f9da2")
      (normal-inner-foreground   "#9f9da2") (normal-inner-background   "#666369")
      (normal-center-foreground  "#9f9da2") (normal-center-background  "#4a464d")

      (insert-outer-foreground   "#4a464d") (insert-outer-background   "#17ad98")
      (insert-inner-foreground   "#9f9da2") (insert-inner-background   "#666369")
      (insert-center-foreground  "#9f9da2") (insert-center-background  "#4a464d")

      (visual-outer-foreground   "#4a464d") (visual-outer-background   "#d65407")
      (visual-inner-foreground   "#9f9da2") (visual-inner-background   "#666369")
      (visual-center-foreground  "#9f9da2") (visual-center-background  "#4a464d")

      (replace-outer-foreground  "#4a464d") (replace-outer-background  "#bb60ea")
      (replace-inner-foreground  "#9f9da2") (replace-inner-background  "#666369")
      (replace-center-foreground "#9f9da2") (replace-center-background "#4a464d")

      (emacs-outer-foreground    "#4a464d") (emacs-outer-background    "#9f9da2")
      (emacs-inner-foreground    "#9f9da2") (emacs-inner-background    "#666369")
      (emacs-center-foreground   "#9f9da2") (emacs-center-background   "#4a464d")

      (inactive1-foreground      "#4a464d") (inactive1-background      "#4a464d")
      (inactive2-foreground      "#9f9da2") (inactive2-background      "#4a464d")
      (inactive3-foreground      "#bcbabe") (inactive3-background      "#4a464d"))

  (airline-themes-set-deftheme 'airline-base16_unikitty_dark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_unikitty_dark)
;;; airline-base16_unikitty_dark-theme.el ends here
