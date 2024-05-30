
;;; Code:

(deftheme airline-catppuccin_macchiato
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#1E2030") (normal-outer-background   "#8AADF4")
      (normal-inner-foreground   "#8AADF4") (normal-inner-background   "#494D64")
      (normal-center-foreground  "#CAD3F5") (normal-center-background  "#24273A")

      (insert-outer-foreground   "#1E2030") (insert-outer-background   "#8BD5CA")
      (insert-inner-foreground   "#8BD5CA") (insert-inner-background   "#1E2030")
      (insert-center-foreground  "#CAD3F5") (insert-center-background  "#24273A")

      (visual-outer-foreground   "#1E2030") (visual-outer-background   "#C6A0F6")
      (visual-inner-foreground   "#C6A0F6") (visual-inner-background   "#1E2030")
      (visual-center-foreground  "#CAD3F5") (visual-center-background  "#24273A")

      (replace-outer-foreground  "#1E2030") (replace-outer-background  "#ED8796")
      (replace-inner-foreground  "#8AADF4") (replace-inner-background  "#494D64")
      (replace-center-foreground "#CAD3F5") (replace-center-background "#24273A")

      (emacs-outer-foreground    "#1E2030") (emacs-outer-background    "#8AADF4")
      (emacs-inner-foreground    "#8AADF4") (emacs-inner-background    "#494D64")
      (emacs-center-foreground   "#CAD3F5") (emacs-center-background   "#24273A")

      (inactive1-foreground      "#8AADF4") (inactive1-background      "#24273A")
      (inactive2-foreground      "#8AADF4") (inactive2-background      "#24273A")
      (inactive3-foreground      "#8AADF4") (inactive3-background      "#24273A"))

  (airline-themes-set-deftheme 'airline-catppuccin_macchiato)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-catppuccin_macchiato)
;;; airline-catppuccin_macchiato-theme.el ends here
