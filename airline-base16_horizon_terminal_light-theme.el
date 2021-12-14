
;;; Code:

(deftheme airline-base16_horizon_terminal_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#FADAD1") (normal-outer-background   "#948C8A")
      (normal-inner-foreground   "#948C8A") (normal-inner-background   "#F9CBBE")
      (normal-center-foreground  "#948C8A") (normal-center-background  "#FADAD1")

      (insert-outer-foreground   "#FADAD1") (insert-outer-background   "#29D398")
      (insert-inner-foreground   "#948C8A") (insert-inner-background   "#F9CBBE")
      (insert-center-foreground  "#948C8A") (insert-center-background  "#FADAD1")

      (visual-outer-foreground   "#FADAD1") (visual-outer-background   "#F9CEC3")
      (visual-inner-foreground   "#948C8A") (visual-inner-background   "#F9CBBE")
      (visual-center-foreground  "#948C8A") (visual-center-background  "#FADAD1")

      (replace-outer-foreground  "#FADAD1") (replace-outer-background  "#EE64AC")
      (replace-inner-foreground  "#948C8A") (replace-inner-background  "#F9CBBE")
      (replace-center-foreground "#948C8A") (replace-center-background "#FADAD1")

      (emacs-outer-foreground    "#FADAD1") (emacs-outer-background    "#948C8A")
      (emacs-inner-foreground    "#948C8A") (emacs-inner-background    "#F9CBBE")
      (emacs-center-foreground   "#948C8A") (emacs-center-background   "#FADAD1")

      (inactive1-foreground      "#FADAD1") (inactive1-background      "#FADAD1")
      (inactive2-foreground      "#948C8A") (inactive2-background      "#FADAD1")
      (inactive3-foreground      "#403C3D") (inactive3-background      "#FADAD1"))

  (airline-themes-set-deftheme 'airline-base16_horizon_terminal_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_horizon_terminal_light)
;;; airline-base16_horizon_terminal_light-theme.el ends here
