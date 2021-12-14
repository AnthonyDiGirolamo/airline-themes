
;;; Code:

(deftheme airline-base16_horizon_terminal_dark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#232530") (normal-outer-background   "#9DA0A2")
      (normal-inner-foreground   "#9DA0A2") (normal-inner-background   "#2E303E")
      (normal-center-foreground  "#9DA0A2") (normal-center-background  "#232530")

      (insert-outer-foreground   "#232530") (insert-outer-background   "#29D398")
      (insert-inner-foreground   "#9DA0A2") (insert-inner-background   "#2E303E")
      (insert-center-foreground  "#9DA0A2") (insert-center-background  "#232530")

      (visual-outer-foreground   "#232530") (visual-outer-background   "#FAB795")
      (visual-inner-foreground   "#9DA0A2") (visual-inner-background   "#2E303E")
      (visual-center-foreground  "#9DA0A2") (visual-center-background  "#232530")

      (replace-outer-foreground  "#232530") (replace-outer-background  "#EE64AC")
      (replace-inner-foreground  "#9DA0A2") (replace-inner-background  "#2E303E")
      (replace-center-foreground "#9DA0A2") (replace-center-background "#232530")

      (emacs-outer-foreground    "#232530") (emacs-outer-background    "#9DA0A2")
      (emacs-inner-foreground    "#9DA0A2") (emacs-inner-background    "#2E303E")
      (emacs-center-foreground   "#9DA0A2") (emacs-center-background   "#232530")

      (inactive1-foreground      "#232530") (inactive1-background      "#232530")
      (inactive2-foreground      "#9DA0A2") (inactive2-background      "#232530")
      (inactive3-foreground      "#CBCED0") (inactive3-background      "#232530"))

  (airline-themes-set-deftheme 'airline-base16_horizon_terminal_dark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_horizon_terminal_dark)
;;; airline-base16_horizon_terminal_dark-theme.el ends here
