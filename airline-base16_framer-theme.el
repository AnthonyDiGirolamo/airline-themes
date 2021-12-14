
;;; Code:

(deftheme airline-base16_framer
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#151515") (normal-outer-background   "#B9B9B9")
      (normal-inner-foreground   "#B9B9B9") (normal-inner-background   "#464646")
      (normal-center-foreground  "#B9B9B9") (normal-center-background  "#151515")

      (insert-outer-foreground   "#151515") (insert-outer-background   "#32CCDC")
      (insert-inner-foreground   "#B9B9B9") (insert-inner-background   "#464646")
      (insert-center-foreground  "#B9B9B9") (insert-center-background  "#151515")

      (visual-outer-foreground   "#151515") (visual-outer-background   "#FC4769")
      (visual-inner-foreground   "#B9B9B9") (visual-inner-background   "#464646")
      (visual-center-foreground  "#B9B9B9") (visual-center-background  "#151515")

      (replace-outer-foreground  "#151515") (replace-outer-background  "#BA8CFC")
      (replace-inner-foreground  "#B9B9B9") (replace-inner-background  "#464646")
      (replace-center-foreground "#B9B9B9") (replace-center-background "#151515")

      (emacs-outer-foreground    "#151515") (emacs-outer-background    "#B9B9B9")
      (emacs-inner-foreground    "#B9B9B9") (emacs-inner-background    "#464646")
      (emacs-center-foreground   "#B9B9B9") (emacs-center-background   "#151515")

      (inactive1-foreground      "#151515") (inactive1-background      "#151515")
      (inactive2-foreground      "#B9B9B9") (inactive2-background      "#151515")
      (inactive3-foreground      "#D0D0D0") (inactive3-background      "#151515"))

  (airline-themes-set-deftheme 'airline-base16_framer)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_framer)
;;; airline-base16_framer-theme.el ends here
