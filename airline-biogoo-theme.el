
;;; Code:

(deftheme airline-biogoo
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#2c323c") (normal-outer-background   "#61afef")
      (normal-inner-foreground   "#61afef") (normal-inner-background   "#282c34")
      (normal-center-foreground  "#61afef") (normal-center-background  "#2c323c")

      (insert-outer-foreground   "#2c323c") (insert-outer-background   "#2c323c")
      (insert-inner-foreground   "#61afef") (insert-inner-background   "#282c34")
      (insert-center-foreground  "#61afef") (insert-center-background  "#2c323c")

      (visual-outer-foreground   "#2c323c") (visual-outer-background   "#d19a66")
      (visual-inner-foreground   "#61afef") (visual-inner-background   "#282c34")
      (visual-center-foreground  "#61afef") (visual-center-background  "#2c323c")

      (replace-outer-foreground  "#2c323c") (replace-outer-background  "#98c379")
      (replace-inner-foreground  "#61afef") (replace-inner-background  "#282c34")
      (replace-center-foreground "#61afef") (replace-center-background "#2c323c")

      (emacs-outer-foreground    "#2c323c") (emacs-outer-background    "#61afef")
      (emacs-inner-foreground    "#61afef") (emacs-inner-background    "#282c34")
      (emacs-center-foreground   "#61afef") (emacs-center-background   "#2c323c")

      (inactive1-foreground      "#2c323c") (inactive1-background      "#2c323c")
      (inactive2-foreground      "#2c323c") (inactive2-background      "#2c323c")
      (inactive3-foreground      "#2c323c") (inactive3-background      "#2c323c"))

  (airline-themes-set-deftheme 'airline-biogoo)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-biogoo)
;;; airline-biogoo-theme.el ends here
