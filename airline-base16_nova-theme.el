
;;; Code:

(deftheme airline-base16_nova
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#556873") (normal-outer-background   "#899BA6")
      (normal-inner-foreground   "#899BA6") (normal-inner-background   "#6A7D89")
      (normal-center-foreground  "#899BA6") (normal-center-background  "#556873")

      (insert-outer-foreground   "#556873") (insert-outer-background   "#7FC1CA")
      (insert-inner-foreground   "#899BA6") (insert-inner-background   "#6A7D89")
      (insert-center-foreground  "#899BA6") (insert-center-background  "#556873")

      (visual-outer-foreground   "#556873") (visual-outer-background   "#7FC1CA")
      (visual-inner-foreground   "#899BA6") (visual-inner-background   "#6A7D89")
      (visual-center-foreground  "#899BA6") (visual-center-background  "#556873")

      (replace-outer-foreground  "#556873") (replace-outer-background  "#9A93E1")
      (replace-inner-foreground  "#899BA6") (replace-inner-background  "#6A7D89")
      (replace-center-foreground "#899BA6") (replace-center-background "#556873")

      (emacs-outer-foreground    "#556873") (emacs-outer-background    "#899BA6")
      (emacs-inner-foreground    "#899BA6") (emacs-inner-background    "#6A7D89")
      (emacs-center-foreground   "#899BA6") (emacs-center-background   "#556873")

      (inactive1-foreground      "#556873") (inactive1-background      "#556873")
      (inactive2-foreground      "#899BA6") (inactive2-background      "#556873")
      (inactive3-foreground      "#C5D4DD") (inactive3-background      "#556873"))

  (airline-themes-set-deftheme 'airline-base16_nova)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_nova)
;;; airline-base16_nova-theme.el ends here
