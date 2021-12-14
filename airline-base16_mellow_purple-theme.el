
;;; Code:

(deftheme airline-base16_mellow_purple
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#1A092D") (normal-outer-background   "#873582")
      (normal-inner-foreground   "#873582") (normal-inner-background   "#331354")
      (normal-center-foreground  "#873582") (normal-center-background  "#1A092D")

      (insert-outer-foreground   "#1A092D") (insert-outer-background   "#05cb0d")
      (insert-inner-foreground   "#873582") (insert-inner-background   "#331354")
      (insert-center-foreground  "#873582") (insert-center-background  "#1A092D")

      (visual-outer-foreground   "#1A092D") (visual-outer-background   "#aa00a3")
      (visual-inner-foreground   "#873582") (visual-inner-background   "#331354")
      (visual-center-foreground  "#873582") (visual-center-background  "#1A092D")

      (replace-outer-foreground  "#1A092D") (replace-outer-background  "#8991bb")
      (replace-inner-foreground  "#873582") (replace-inner-background  "#331354")
      (replace-center-foreground "#873582") (replace-center-background "#1A092D")

      (emacs-outer-foreground    "#1A092D") (emacs-outer-background    "#873582")
      (emacs-inner-foreground    "#873582") (emacs-inner-background    "#331354")
      (emacs-center-foreground   "#873582") (emacs-center-background   "#1A092D")

      (inactive1-foreground      "#1A092D") (inactive1-background      "#1A092D")
      (inactive2-foreground      "#873582") (inactive2-background      "#1A092D")
      (inactive3-foreground      "#ffeeff") (inactive3-background      "#1A092D"))

  (airline-themes-set-deftheme 'airline-base16_mellow_purple)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_mellow_purple)
;;; airline-base16_mellow_purple-theme.el ends here
