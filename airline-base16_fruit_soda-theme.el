
;;; Code:

(deftheme airline-base16_fruit_soda
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#e0dee0") (normal-outer-background   "#979598")
      (normal-inner-foreground   "#979598") (normal-inner-background   "#d8d5d5")
      (normal-center-foreground  "#979598") (normal-center-background  "#e0dee0")

      (insert-outer-foreground   "#e0dee0") (insert-outer-background   "#47f74c")
      (insert-inner-foreground   "#979598") (insert-inner-background   "#d8d5d5")
      (insert-center-foreground  "#979598") (insert-center-background  "#e0dee0")

      (visual-outer-foreground   "#e0dee0") (visual-outer-background   "#fe6d08")
      (visual-inner-foreground   "#979598") (visual-inner-background   "#d8d5d5")
      (visual-center-foreground  "#979598") (visual-center-background  "#e0dee0")

      (replace-outer-foreground  "#e0dee0") (replace-outer-background  "#611fce")
      (replace-inner-foreground  "#979598") (replace-inner-background  "#d8d5d5")
      (replace-center-foreground "#979598") (replace-center-background "#e0dee0")

      (emacs-outer-foreground    "#e0dee0") (emacs-outer-background    "#979598")
      (emacs-inner-foreground    "#979598") (emacs-inner-background    "#d8d5d5")
      (emacs-center-foreground   "#979598") (emacs-center-background   "#e0dee0")

      (inactive1-foreground      "#e0dee0") (inactive1-background      "#e0dee0")
      (inactive2-foreground      "#979598") (inactive2-background      "#e0dee0")
      (inactive3-foreground      "#515151") (inactive3-background      "#e0dee0"))

  (airline-themes-set-deftheme 'airline-base16_fruit_soda)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_fruit_soda)
;;; airline-base16_fruit_soda-theme.el ends here
