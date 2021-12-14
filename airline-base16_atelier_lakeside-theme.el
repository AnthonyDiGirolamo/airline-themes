
;;; Code:

(deftheme airline-base16_atelier_lakeside
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#1f292e") (normal-outer-background   "#7195a8")
      (normal-inner-foreground   "#7195a8") (normal-inner-background   "#516d7b")
      (normal-center-foreground  "#7195a8") (normal-center-background  "#1f292e")

      (insert-outer-foreground   "#1f292e") (insert-outer-background   "#568c3b")
      (insert-inner-foreground   "#7195a8") (insert-inner-background   "#516d7b")
      (insert-center-foreground  "#7195a8") (insert-center-background  "#1f292e")

      (visual-outer-foreground   "#1f292e") (visual-outer-background   "#935c25")
      (visual-inner-foreground   "#7195a8") (visual-inner-background   "#516d7b")
      (visual-center-foreground  "#7195a8") (visual-center-background  "#1f292e")

      (replace-outer-foreground  "#1f292e") (replace-outer-background  "#6b6bb8")
      (replace-inner-foreground  "#7195a8") (replace-inner-background  "#516d7b")
      (replace-center-foreground "#7195a8") (replace-center-background "#1f292e")

      (emacs-outer-foreground    "#1f292e") (emacs-outer-background    "#7195a8")
      (emacs-inner-foreground    "#7195a8") (emacs-inner-background    "#516d7b")
      (emacs-center-foreground   "#7195a8") (emacs-center-background   "#1f292e")

      (inactive1-foreground      "#1f292e") (inactive1-background      "#1f292e")
      (inactive2-foreground      "#7195a8") (inactive2-background      "#1f292e")
      (inactive3-foreground      "#7ea2b4") (inactive3-background      "#1f292e"))

  (airline-themes-set-deftheme 'airline-base16_atelier_lakeside)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_lakeside)
;;; airline-base16_atelier_lakeside-theme.el ends here
