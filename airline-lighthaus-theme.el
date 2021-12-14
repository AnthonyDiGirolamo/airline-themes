
;;; Code:

(deftheme airline-lighthaus
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#21252D") (normal-outer-background   "#00BFA4")
      (normal-inner-foreground   "#FFFADE") (normal-inner-background   "#090B26")
      (normal-center-foreground  "#00BFA4") (normal-center-background  "#21252D")

      (insert-outer-foreground   "#21252D") (insert-outer-background   "#50C16E")
      (insert-inner-foreground   "#FFFADE") (insert-inner-background   "#090B26")
      (insert-center-foreground  "#50C16E") (insert-center-background  "#21252D")

      (visual-outer-foreground   "#21252D") (visual-outer-background   "#ED722E")
      (visual-inner-foreground   "#FFFADE") (visual-inner-background   "#090B26")
      (visual-center-foreground  "#ED722E") (visual-center-background  "#21252D")

      (replace-outer-foreground  "#21252D") (replace-outer-background  "#FF5050")
      (replace-inner-foreground  "#FFFADE") (replace-inner-background  "#090B26")
      (replace-center-foreground "#FF5050") (replace-center-background "#21252D")

      (emacs-outer-foreground    "#21252D") (emacs-outer-background    "#00BFA4")
      (emacs-inner-foreground    "#FFFADE") (emacs-inner-background    "#090B26")
      (emacs-center-foreground   "#00BFA4") (emacs-center-background   "#21252D")

      (inactive1-foreground      "#CCCCCC") (inactive1-background      "#21252D")
      (inactive2-foreground      "#CCCCCC") (inactive2-background      "#21252D")
      (inactive3-foreground      "#CCCCCC") (inactive3-background      "#21252D"))

  (airline-themes-set-deftheme 'airline-lighthaus)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-lighthaus)
;;; airline-lighthaus-theme.el ends here
