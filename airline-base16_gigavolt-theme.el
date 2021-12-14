
;;; Code:

(deftheme airline-base16_gigavolt
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#2d303d") (normal-outer-background   "#cad3ff")
      (normal-inner-foreground   "#cad3ff") (normal-inner-background   "#5a576e")
      (normal-center-foreground  "#cad3ff") (normal-center-background  "#2d303d")

      (insert-outer-foreground   "#2d303d") (insert-outer-background   "#f2e6a9")
      (insert-inner-foreground   "#cad3ff") (insert-inner-background   "#5a576e")
      (insert-center-foreground  "#cad3ff") (insert-center-background  "#2d303d")

      (visual-outer-foreground   "#2d303d") (visual-outer-background   "#19f988")
      (visual-inner-foreground   "#cad3ff") (visual-inner-background   "#5a576e")
      (visual-center-foreground  "#cad3ff") (visual-center-background  "#2d303d")

      (replace-outer-foreground  "#2d303d") (replace-outer-background  "#ae94f9")
      (replace-inner-foreground  "#cad3ff") (replace-inner-background  "#5a576e")
      (replace-center-foreground "#cad3ff") (replace-center-background "#2d303d")

      (emacs-outer-foreground    "#2d303d") (emacs-outer-background    "#cad3ff")
      (emacs-inner-foreground    "#cad3ff") (emacs-inner-background    "#5a576e")
      (emacs-center-foreground   "#cad3ff") (emacs-center-background   "#2d303d")

      (inactive1-foreground      "#2d303d") (inactive1-background      "#2d303d")
      (inactive2-foreground      "#cad3ff") (inactive2-background      "#2d303d")
      (inactive3-foreground      "#e9e7e1") (inactive3-background      "#2d303d"))

  (airline-themes-set-deftheme 'airline-base16_gigavolt)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_gigavolt)
;;; airline-base16_gigavolt-theme.el ends here
