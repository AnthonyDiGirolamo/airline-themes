
;;; Code:

(deftheme airline-base16_default_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#e8e8e8") (normal-outer-background   "#585858")
      (normal-inner-foreground   "#585858") (normal-inner-background   "#d8d8d8")
      (normal-center-foreground  "#585858") (normal-center-background  "#e8e8e8")

      (insert-outer-foreground   "#e8e8e8") (insert-outer-background   "#a1b56c")
      (insert-inner-foreground   "#585858") (insert-inner-background   "#d8d8d8")
      (insert-center-foreground  "#585858") (insert-center-background  "#e8e8e8")

      (visual-outer-foreground   "#e8e8e8") (visual-outer-background   "#dc9656")
      (visual-inner-foreground   "#585858") (visual-inner-background   "#d8d8d8")
      (visual-center-foreground  "#585858") (visual-center-background  "#e8e8e8")

      (replace-outer-foreground  "#e8e8e8") (replace-outer-background  "#ba8baf")
      (replace-inner-foreground  "#585858") (replace-inner-background  "#d8d8d8")
      (replace-center-foreground "#585858") (replace-center-background "#e8e8e8")

      (emacs-outer-foreground    "#e8e8e8") (emacs-outer-background    "#585858")
      (emacs-inner-foreground    "#585858") (emacs-inner-background    "#d8d8d8")
      (emacs-center-foreground   "#585858") (emacs-center-background   "#e8e8e8")

      (inactive1-foreground      "#e8e8e8") (inactive1-background      "#e8e8e8")
      (inactive2-foreground      "#585858") (inactive2-background      "#e8e8e8")
      (inactive3-foreground      "#383838") (inactive3-background      "#e8e8e8"))

  (airline-themes-set-deftheme 'airline-base16_default_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_default_light)
;;; airline-base16_default_light-theme.el ends here
