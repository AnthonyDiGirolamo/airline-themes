
;;; Code:

(deftheme airline-base16_decaf
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#393939") (normal-outer-background   "#b4b7b4")
      (normal-inner-foreground   "#b4b7b4") (normal-inner-background   "#515151")
      (normal-center-foreground  "#b4b7b4") (normal-center-background  "#393939")

      (insert-outer-foreground   "#393939") (insert-outer-background   "#beda78")
      (insert-inner-foreground   "#b4b7b4") (insert-inner-background   "#515151")
      (insert-center-foreground  "#b4b7b4") (insert-center-background  "#393939")

      (visual-outer-foreground   "#393939") (visual-outer-background   "#ffbf70")
      (visual-inner-foreground   "#b4b7b4") (visual-inner-background   "#515151")
      (visual-center-foreground  "#b4b7b4") (visual-center-background  "#393939")

      (replace-outer-foreground  "#393939") (replace-outer-background  "#efb3f7")
      (replace-inner-foreground  "#b4b7b4") (replace-inner-background  "#515151")
      (replace-center-foreground "#b4b7b4") (replace-center-background "#393939")

      (emacs-outer-foreground    "#393939") (emacs-outer-background    "#b4b7b4")
      (emacs-inner-foreground    "#b4b7b4") (emacs-inner-background    "#515151")
      (emacs-center-foreground   "#b4b7b4") (emacs-center-background   "#393939")

      (inactive1-foreground      "#393939") (inactive1-background      "#393939")
      (inactive2-foreground      "#b4b7b4") (inactive2-background      "#393939")
      (inactive3-foreground      "#cccccc") (inactive3-background      "#393939"))

  (airline-themes-set-deftheme 'airline-base16_decaf)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_decaf)
;;; airline-base16_decaf-theme.el ends here
