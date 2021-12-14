
;;; Code:

(deftheme airline-base16_tube
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#1c3f95") (normal-outer-background   "#959ca1")
      (normal-inner-foreground   "#959ca1") (normal-inner-background   "#5a5758")
      (normal-center-foreground  "#959ca1") (normal-center-background  "#1c3f95")

      (insert-outer-foreground   "#1c3f95") (insert-outer-background   "#00853e")
      (insert-inner-foreground   "#959ca1") (insert-inner-background   "#5a5758")
      (insert-center-foreground  "#959ca1") (insert-center-background  "#1c3f95")

      (visual-outer-foreground   "#1c3f95") (visual-outer-background   "#f386a1")
      (visual-inner-foreground   "#959ca1") (visual-inner-background   "#5a5758")
      (visual-center-foreground  "#959ca1") (visual-center-background  "#1c3f95")

      (replace-outer-foreground  "#1c3f95") (replace-outer-background  "#98005d")
      (replace-inner-foreground  "#959ca1") (replace-inner-background  "#5a5758")
      (replace-center-foreground "#959ca1") (replace-center-background "#1c3f95")

      (emacs-outer-foreground    "#1c3f95") (emacs-outer-background    "#959ca1")
      (emacs-inner-foreground    "#959ca1") (emacs-inner-background    "#5a5758")
      (emacs-center-foreground   "#959ca1") (emacs-center-background   "#1c3f95")

      (inactive1-foreground      "#1c3f95") (inactive1-background      "#1c3f95")
      (inactive2-foreground      "#959ca1") (inactive2-background      "#1c3f95")
      (inactive3-foreground      "#d9d8d8") (inactive3-background      "#1c3f95"))

  (airline-themes-set-deftheme 'airline-base16_tube)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_tube)
;;; airline-base16_tube-theme.el ends here
