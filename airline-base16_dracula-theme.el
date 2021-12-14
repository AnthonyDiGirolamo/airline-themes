
;;; Code:

(deftheme airline-base16_dracula
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#3a3c4e") (normal-outer-background   "#62d6e8")
      (normal-inner-foreground   "#62d6e8") (normal-inner-background   "#4d4f68")
      (normal-center-foreground  "#62d6e8") (normal-center-background  "#3a3c4e")

      (insert-outer-foreground   "#3a3c4e") (insert-outer-background   "#ebff87")
      (insert-inner-foreground   "#62d6e8") (insert-inner-background   "#4d4f68")
      (insert-center-foreground  "#62d6e8") (insert-center-background  "#3a3c4e")

      (visual-outer-foreground   "#3a3c4e") (visual-outer-background   "#b45bcf")
      (visual-inner-foreground   "#62d6e8") (visual-inner-background   "#4d4f68")
      (visual-center-foreground  "#62d6e8") (visual-center-background  "#3a3c4e")

      (replace-outer-foreground  "#3a3c4e") (replace-outer-background  "#b45bcf")
      (replace-inner-foreground  "#62d6e8") (replace-inner-background  "#4d4f68")
      (replace-center-foreground "#62d6e8") (replace-center-background "#3a3c4e")

      (emacs-outer-foreground    "#3a3c4e") (emacs-outer-background    "#62d6e8")
      (emacs-inner-foreground    "#62d6e8") (emacs-inner-background    "#4d4f68")
      (emacs-center-foreground   "#62d6e8") (emacs-center-background   "#3a3c4e")

      (inactive1-foreground      "#3a3c4e") (inactive1-background      "#3a3c4e")
      (inactive2-foreground      "#62d6e8") (inactive2-background      "#3a3c4e")
      (inactive3-foreground      "#e9e9f4") (inactive3-background      "#3a3c4e"))

  (airline-themes-set-deftheme 'airline-base16_dracula)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_dracula)
;;; airline-base16_dracula-theme.el ends here
