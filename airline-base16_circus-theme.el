
;;; Code:

(deftheme airline-base16_circus
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#202020") (normal-outer-background   "#505050")
      (normal-inner-foreground   "#505050") (normal-inner-background   "#303030")
      (normal-center-foreground  "#505050") (normal-center-background  "#202020")

      (insert-outer-foreground   "#202020") (insert-outer-background   "#84b97c")
      (insert-inner-foreground   "#505050") (insert-inner-background   "#303030")
      (insert-center-foreground  "#505050") (insert-center-background  "#202020")

      (visual-outer-foreground   "#202020") (visual-outer-background   "#4bb1a7")
      (visual-inner-foreground   "#505050") (visual-inner-background   "#303030")
      (visual-center-foreground  "#505050") (visual-center-background  "#202020")

      (replace-outer-foreground  "#202020") (replace-outer-background  "#b888e2")
      (replace-inner-foreground  "#505050") (replace-inner-background  "#303030")
      (replace-center-foreground "#505050") (replace-center-background "#202020")

      (emacs-outer-foreground    "#202020") (emacs-outer-background    "#505050")
      (emacs-inner-foreground    "#505050") (emacs-inner-background    "#303030")
      (emacs-center-foreground   "#505050") (emacs-center-background   "#202020")

      (inactive1-foreground      "#202020") (inactive1-background      "#202020")
      (inactive2-foreground      "#505050") (inactive2-background      "#202020")
      (inactive3-foreground      "#a7a7a7") (inactive3-background      "#202020"))

  (airline-themes-set-deftheme 'airline-base16_circus)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_circus)
;;; airline-base16_circus-theme.el ends here
