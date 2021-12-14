
;;; Code:

(deftheme airline-base16_solarflare
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#222E38") (normal-outer-background   "#85939E")
      (normal-inner-foreground   "#85939E") (normal-inner-background   "#586875")
      (normal-center-foreground  "#85939E") (normal-center-background  "#222E38")

      (insert-outer-foreground   "#222E38") (insert-outer-background   "#7CC844")
      (insert-inner-foreground   "#85939E") (insert-inner-background   "#586875")
      (insert-center-foreground  "#85939E") (insert-center-background  "#222E38")

      (visual-outer-foreground   "#222E38") (visual-outer-background   "#E66B2B")
      (visual-inner-foreground   "#85939E") (visual-inner-background   "#586875")
      (visual-center-foreground  "#85939E") (visual-center-background  "#222E38")

      (replace-outer-foreground  "#222E38") (replace-outer-background  "#A363D5")
      (replace-inner-foreground  "#85939E") (replace-inner-background  "#586875")
      (replace-center-foreground "#85939E") (replace-center-background "#222E38")

      (emacs-outer-foreground    "#222E38") (emacs-outer-background    "#85939E")
      (emacs-inner-foreground    "#85939E") (emacs-inner-background    "#586875")
      (emacs-center-foreground   "#85939E") (emacs-center-background   "#222E38")

      (inactive1-foreground      "#222E38") (inactive1-background      "#222E38")
      (inactive2-foreground      "#85939E") (inactive2-background      "#222E38")
      (inactive3-foreground      "#A6AFB8") (inactive3-background      "#222E38"))

  (airline-themes-set-deftheme 'airline-base16_solarflare)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_solarflare)
;;; airline-base16_solarflare-theme.el ends here
