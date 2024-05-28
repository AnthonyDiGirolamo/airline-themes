
;;; Code:

(deftheme airline-base16
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#3e4452") (normal-outer-background   "#61afef")
      (normal-inner-foreground   "LightGrey") (normal-inner-background   "#3e4452")
      (normal-center-foreground  "#abb2bf") (normal-center-background  "#2c323c")

      (insert-outer-foreground   "#3e4452") (insert-outer-background   "#98c379")
      (insert-inner-foreground   "LightGrey") (insert-inner-background   "#3e4452")
      (insert-center-foreground  "#abb2bf") (insert-center-background  "#2c323c")

      (visual-outer-foreground   "#3e4452") (visual-outer-background   "#98c379")
      (visual-inner-foreground   "LightGrey") (visual-inner-background   "#3e4452")
      (visual-center-foreground  "#abb2bf") (visual-center-background  "#2c323c")

      (replace-outer-foreground  "#3e4452") (replace-outer-background  "#e06c75")
      (replace-inner-foreground  "LightGrey") (replace-inner-background  "#3e4452")
      (replace-center-foreground "#abb2bf") (replace-center-background "#2c323c")

      (emacs-outer-foreground    "#3e4452") (emacs-outer-background    "#61afef")
      (emacs-inner-foreground    "LightGrey") (emacs-inner-background    "#3e4452")
      (emacs-center-foreground   "#abb2bf") (emacs-center-background   "#2c323c")

      (inactive1-foreground      "#2c323c") (inactive1-background      "NONE")
      (inactive2-foreground      "#2c323c") (inactive2-background      "NONE")
      (inactive3-foreground      "#2c323c") (inactive3-background      "NONE"))

  (airline-themes-set-deftheme 'airline-base16)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16)
;;; airline-base16-theme.el ends here
