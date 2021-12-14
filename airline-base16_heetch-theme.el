
;;; Code:

(deftheme airline-base16_heetch
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#392551") (normal-outer-background   "#9C92A8")
      (normal-inner-foreground   "#9C92A8") (normal-inner-background   "#5A496E")
      (normal-center-foreground  "#9C92A8") (normal-center-background  "#392551")

      (insert-outer-foreground   "#392551") (insert-outer-background   "#C33678")
      (insert-inner-foreground   "#9C92A8") (insert-inner-background   "#5A496E")
      (insert-center-foreground  "#9C92A8") (insert-center-background  "#392551")

      (visual-outer-foreground   "#392551") (visual-outer-background   "#5BA2B6")
      (visual-inner-foreground   "#9C92A8") (visual-inner-background   "#5A496E")
      (visual-center-foreground  "#9C92A8") (visual-center-background  "#392551")

      (replace-outer-foreground  "#392551") (replace-outer-background  "#82034C")
      (replace-inner-foreground  "#9C92A8") (replace-inner-background  "#5A496E")
      (replace-center-foreground "#9C92A8") (replace-center-background "#392551")

      (emacs-outer-foreground    "#392551") (emacs-outer-background    "#9C92A8")
      (emacs-inner-foreground    "#9C92A8") (emacs-inner-background    "#5A496E")
      (emacs-center-foreground   "#9C92A8") (emacs-center-background   "#392551")

      (inactive1-foreground      "#392551") (inactive1-background      "#392551")
      (inactive2-foreground      "#9C92A8") (inactive2-background      "#392551")
      (inactive3-foreground      "#BDB6C5") (inactive3-background      "#392551"))

  (airline-themes-set-deftheme 'airline-base16_heetch)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_heetch)
;;; airline-base16_heetch-theme.el ends here
