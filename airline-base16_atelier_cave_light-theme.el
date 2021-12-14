
;;; Code:

(deftheme airline-base16_atelier_cave_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#e2dfe7") (normal-outer-background   "#655f6d")
      (normal-inner-foreground   "#655f6d") (normal-inner-background   "#8b8792")
      (normal-center-foreground  "#655f6d") (normal-center-background  "#e2dfe7")

      (insert-outer-foreground   "#e2dfe7") (insert-outer-background   "#2a9292")
      (insert-inner-foreground   "#655f6d") (insert-inner-background   "#8b8792")
      (insert-center-foreground  "#655f6d") (insert-center-background  "#e2dfe7")

      (visual-outer-foreground   "#e2dfe7") (visual-outer-background   "#aa573c")
      (visual-inner-foreground   "#655f6d") (visual-inner-background   "#8b8792")
      (visual-center-foreground  "#655f6d") (visual-center-background  "#e2dfe7")

      (replace-outer-foreground  "#e2dfe7") (replace-outer-background  "#955ae7")
      (replace-inner-foreground  "#655f6d") (replace-inner-background  "#8b8792")
      (replace-center-foreground "#655f6d") (replace-center-background "#e2dfe7")

      (emacs-outer-foreground    "#e2dfe7") (emacs-outer-background    "#655f6d")
      (emacs-inner-foreground    "#655f6d") (emacs-inner-background    "#8b8792")
      (emacs-center-foreground   "#655f6d") (emacs-center-background   "#e2dfe7")

      (inactive1-foreground      "#e2dfe7") (inactive1-background      "#e2dfe7")
      (inactive2-foreground      "#655f6d") (inactive2-background      "#e2dfe7")
      (inactive3-foreground      "#585260") (inactive3-background      "#e2dfe7"))

  (airline-themes-set-deftheme 'airline-base16_atelier_cave_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_cave_light)
;;; airline-base16_atelier_cave_light-theme.el ends here
