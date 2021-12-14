
;;; Code:

(deftheme airline-base16_black_metal_bathory
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#121212") (normal-outer-background   "#999999")
      (normal-inner-foreground   "#999999") (normal-inner-background   "#222222")
      (normal-center-foreground  "#999999") (normal-center-background  "#121212")

      (insert-outer-foreground   "#121212") (insert-outer-background   "#fbcb97")
      (insert-inner-foreground   "#999999") (insert-inner-background   "#222222")
      (insert-center-foreground  "#999999") (insert-center-background  "#121212")

      (visual-outer-foreground   "#121212") (visual-outer-background   "#aaaaaa")
      (visual-inner-foreground   "#999999") (visual-inner-background   "#222222")
      (visual-center-foreground  "#999999") (visual-center-background  "#121212")

      (replace-outer-foreground  "#121212") (replace-outer-background  "#999999")
      (replace-inner-foreground  "#999999") (replace-inner-background  "#222222")
      (replace-center-foreground "#999999") (replace-center-background "#121212")

      (emacs-outer-foreground    "#121212") (emacs-outer-background    "#999999")
      (emacs-inner-foreground    "#999999") (emacs-inner-background    "#222222")
      (emacs-center-foreground   "#999999") (emacs-center-background   "#121212")

      (inactive1-foreground      "#121212") (inactive1-background      "#121212")
      (inactive2-foreground      "#999999") (inactive2-background      "#121212")
      (inactive3-foreground      "#c1c1c1") (inactive3-background      "#121212"))

  (airline-themes-set-deftheme 'airline-base16_black_metal_bathory)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_black_metal_bathory)
;;; airline-base16_black_metal_bathory-theme.el ends here
