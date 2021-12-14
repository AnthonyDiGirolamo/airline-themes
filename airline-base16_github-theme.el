
;;; Code:

(deftheme airline-base16_github
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#f5f5f5") (normal-outer-background   "#e8e8e8")
      (normal-inner-foreground   "#e8e8e8") (normal-inner-background   "#c8c8fa")
      (normal-center-foreground  "#e8e8e8") (normal-center-background  "#f5f5f5")

      (insert-outer-foreground   "#f5f5f5") (insert-outer-background   "#183691")
      (insert-inner-foreground   "#e8e8e8") (insert-inner-background   "#c8c8fa")
      (insert-center-foreground  "#e8e8e8") (insert-center-background  "#f5f5f5")

      (visual-outer-foreground   "#f5f5f5") (visual-outer-background   "#0086b3")
      (visual-inner-foreground   "#e8e8e8") (visual-inner-background   "#c8c8fa")
      (visual-center-foreground  "#e8e8e8") (visual-center-background  "#f5f5f5")

      (replace-outer-foreground  "#f5f5f5") (replace-outer-background  "#a71d5d")
      (replace-inner-foreground  "#e8e8e8") (replace-inner-background  "#c8c8fa")
      (replace-center-foreground "#e8e8e8") (replace-center-background "#f5f5f5")

      (emacs-outer-foreground    "#f5f5f5") (emacs-outer-background    "#e8e8e8")
      (emacs-inner-foreground    "#e8e8e8") (emacs-inner-background    "#c8c8fa")
      (emacs-center-foreground   "#e8e8e8") (emacs-center-background   "#f5f5f5")

      (inactive1-foreground      "#f5f5f5") (inactive1-background      "#f5f5f5")
      (inactive2-foreground      "#e8e8e8") (inactive2-background      "#f5f5f5")
      (inactive3-foreground      "#333333") (inactive3-background      "#f5f5f5"))

  (airline-themes-set-deftheme 'airline-base16_github)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_github)
;;; airline-base16_github-theme.el ends here
