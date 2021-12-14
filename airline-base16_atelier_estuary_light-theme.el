
;;; Code:

(deftheme airline-base16_atelier_estuary_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#e7e6df") (normal-outer-background   "#6c6b5a")
      (normal-inner-foreground   "#6c6b5a") (normal-inner-background   "#929181")
      (normal-center-foreground  "#6c6b5a") (normal-center-background  "#e7e6df")

      (insert-outer-foreground   "#e7e6df") (insert-outer-background   "#7d9726")
      (insert-inner-foreground   "#6c6b5a") (insert-inner-background   "#929181")
      (insert-center-foreground  "#6c6b5a") (insert-center-background  "#e7e6df")

      (visual-outer-foreground   "#e7e6df") (visual-outer-background   "#ae7313")
      (visual-inner-foreground   "#6c6b5a") (visual-inner-background   "#929181")
      (visual-center-foreground  "#6c6b5a") (visual-center-background  "#e7e6df")

      (replace-outer-foreground  "#e7e6df") (replace-outer-background  "#5f9182")
      (replace-inner-foreground  "#6c6b5a") (replace-inner-background  "#929181")
      (replace-center-foreground "#6c6b5a") (replace-center-background "#e7e6df")

      (emacs-outer-foreground    "#e7e6df") (emacs-outer-background    "#6c6b5a")
      (emacs-inner-foreground    "#6c6b5a") (emacs-inner-background    "#929181")
      (emacs-center-foreground   "#6c6b5a") (emacs-center-background   "#e7e6df")

      (inactive1-foreground      "#e7e6df") (inactive1-background      "#e7e6df")
      (inactive2-foreground      "#6c6b5a") (inactive2-background      "#e7e6df")
      (inactive3-foreground      "#5f5e4e") (inactive3-background      "#e7e6df"))

  (airline-themes-set-deftheme 'airline-base16_atelier_estuary_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_estuary_light)
;;; airline-base16_atelier_estuary_light-theme.el ends here
