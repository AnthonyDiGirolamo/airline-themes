
;;; Code:

(deftheme airline-base16_porple
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#333344") (normal-outer-background   "#b8b8b8")
      (normal-inner-foreground   "#b8b8b8") (normal-inner-background   "#474160")
      (normal-center-foreground  "#b8b8b8") (normal-center-background  "#333344")

      (insert-outer-foreground   "#333344") (insert-outer-background   "#95c76f")
      (insert-inner-foreground   "#b8b8b8") (insert-inner-background   "#474160")
      (insert-center-foreground  "#b8b8b8") (insert-center-background  "#333344")

      (visual-outer-foreground   "#333344") (visual-outer-background   "#d28e5d")
      (visual-inner-foreground   "#b8b8b8") (visual-inner-background   "#474160")
      (visual-center-foreground  "#b8b8b8") (visual-center-background  "#333344")

      (replace-outer-foreground  "#333344") (replace-outer-background  "#b74989")
      (replace-inner-foreground  "#b8b8b8") (replace-inner-background  "#474160")
      (replace-center-foreground "#b8b8b8") (replace-center-background "#333344")

      (emacs-outer-foreground    "#333344") (emacs-outer-background    "#b8b8b8")
      (emacs-inner-foreground    "#b8b8b8") (emacs-inner-background    "#474160")
      (emacs-center-foreground   "#b8b8b8") (emacs-center-background   "#333344")

      (inactive1-foreground      "#333344") (inactive1-background      "#333344")
      (inactive2-foreground      "#b8b8b8") (inactive2-background      "#333344")
      (inactive3-foreground      "#d8d8d8") (inactive3-background      "#333344"))

  (airline-themes-set-deftheme 'airline-base16_porple)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_porple)
;;; airline-base16_porple-theme.el ends here
