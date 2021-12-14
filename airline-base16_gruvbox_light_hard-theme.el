
;;; Code:

(deftheme airline-base16_gruvbox_light_hard
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#ebdbb2") (normal-outer-background   "#665c54")
      (normal-inner-foreground   "#665c54") (normal-inner-background   "#d5c4a1")
      (normal-center-foreground  "#665c54") (normal-center-background  "#ebdbb2")

      (insert-outer-foreground   "#ebdbb2") (insert-outer-background   "#79740e")
      (insert-inner-foreground   "#665c54") (insert-inner-background   "#d5c4a1")
      (insert-center-foreground  "#665c54") (insert-center-background  "#ebdbb2")

      (visual-outer-foreground   "#ebdbb2") (visual-outer-background   "#af3a03")
      (visual-inner-foreground   "#665c54") (visual-inner-background   "#d5c4a1")
      (visual-center-foreground  "#665c54") (visual-center-background  "#ebdbb2")

      (replace-outer-foreground  "#ebdbb2") (replace-outer-background  "#8f3f71")
      (replace-inner-foreground  "#665c54") (replace-inner-background  "#d5c4a1")
      (replace-center-foreground "#665c54") (replace-center-background "#ebdbb2")

      (emacs-outer-foreground    "#ebdbb2") (emacs-outer-background    "#665c54")
      (emacs-inner-foreground    "#665c54") (emacs-inner-background    "#d5c4a1")
      (emacs-center-foreground   "#665c54") (emacs-center-background   "#ebdbb2")

      (inactive1-foreground      "#ebdbb2") (inactive1-background      "#ebdbb2")
      (inactive2-foreground      "#665c54") (inactive2-background      "#ebdbb2")
      (inactive3-foreground      "#504945") (inactive3-background      "#ebdbb2"))

  (airline-themes-set-deftheme 'airline-base16_gruvbox_light_hard)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_gruvbox_light_hard)
;;; airline-base16_gruvbox_light_hard-theme.el ends here
