
;;; Code:

(deftheme airline-base16_atelier_cave
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#26232a") (normal-outer-background   "#7e7887")
      (normal-inner-foreground   "#7e7887") (normal-inner-background   "#585260")
      (normal-center-foreground  "#7e7887") (normal-center-background  "#26232a")

      (insert-outer-foreground   "#26232a") (insert-outer-background   "#2a9292")
      (insert-inner-foreground   "#7e7887") (insert-inner-background   "#585260")
      (insert-center-foreground  "#7e7887") (insert-center-background  "#26232a")

      (visual-outer-foreground   "#26232a") (visual-outer-background   "#aa573c")
      (visual-inner-foreground   "#7e7887") (visual-inner-background   "#585260")
      (visual-center-foreground  "#7e7887") (visual-center-background  "#26232a")

      (replace-outer-foreground  "#26232a") (replace-outer-background  "#955ae7")
      (replace-inner-foreground  "#7e7887") (replace-inner-background  "#585260")
      (replace-center-foreground "#7e7887") (replace-center-background "#26232a")

      (emacs-outer-foreground    "#26232a") (emacs-outer-background    "#7e7887")
      (emacs-inner-foreground    "#7e7887") (emacs-inner-background    "#585260")
      (emacs-center-foreground   "#7e7887") (emacs-center-background   "#26232a")

      (inactive1-foreground      "#26232a") (inactive1-background      "#26232a")
      (inactive2-foreground      "#7e7887") (inactive2-background      "#26232a")
      (inactive3-foreground      "#8b8792") (inactive3-background      "#26232a"))

  (airline-themes-set-deftheme 'airline-base16_atelier_cave)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_cave)
;;; airline-base16_atelier_cave-theme.el ends here
