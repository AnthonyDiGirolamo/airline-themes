
;;; Code:

(deftheme airline-base16_atelier_lakeside_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#c1e4f6") (normal-outer-background   "#5a7b8c")
      (normal-inner-foreground   "#5a7b8c") (normal-inner-background   "#7ea2b4")
      (normal-center-foreground  "#5a7b8c") (normal-center-background  "#c1e4f6")

      (insert-outer-foreground   "#c1e4f6") (insert-outer-background   "#568c3b")
      (insert-inner-foreground   "#5a7b8c") (insert-inner-background   "#7ea2b4")
      (insert-center-foreground  "#5a7b8c") (insert-center-background  "#c1e4f6")

      (visual-outer-foreground   "#c1e4f6") (visual-outer-background   "#935c25")
      (visual-inner-foreground   "#5a7b8c") (visual-inner-background   "#7ea2b4")
      (visual-center-foreground  "#5a7b8c") (visual-center-background  "#c1e4f6")

      (replace-outer-foreground  "#c1e4f6") (replace-outer-background  "#6b6bb8")
      (replace-inner-foreground  "#5a7b8c") (replace-inner-background  "#7ea2b4")
      (replace-center-foreground "#5a7b8c") (replace-center-background "#c1e4f6")

      (emacs-outer-foreground    "#c1e4f6") (emacs-outer-background    "#5a7b8c")
      (emacs-inner-foreground    "#5a7b8c") (emacs-inner-background    "#7ea2b4")
      (emacs-center-foreground   "#5a7b8c") (emacs-center-background   "#c1e4f6")

      (inactive1-foreground      "#c1e4f6") (inactive1-background      "#c1e4f6")
      (inactive2-foreground      "#5a7b8c") (inactive2-background      "#c1e4f6")
      (inactive3-foreground      "#516d7b") (inactive3-background      "#c1e4f6"))

  (airline-themes-set-deftheme 'airline-base16_atelier_lakeside_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_lakeside_light)
;;; airline-base16_atelier_lakeside_light-theme.el ends here
