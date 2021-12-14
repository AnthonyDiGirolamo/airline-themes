
;;; Code:

(deftheme airline-base16_atelier_plateau
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#292424") (normal-outer-background   "#7e7777")
      (normal-inner-foreground   "#7e7777") (normal-inner-background   "#585050")
      (normal-center-foreground  "#7e7777") (normal-center-background  "#292424")

      (insert-outer-foreground   "#292424") (insert-outer-background   "#4b8b8b")
      (insert-inner-foreground   "#7e7777") (insert-inner-background   "#585050")
      (insert-center-foreground  "#7e7777") (insert-center-background  "#292424")

      (visual-outer-foreground   "#292424") (visual-outer-background   "#b45a3c")
      (visual-inner-foreground   "#7e7777") (visual-inner-background   "#585050")
      (visual-center-foreground  "#7e7777") (visual-center-background  "#292424")

      (replace-outer-foreground  "#292424") (replace-outer-background  "#8464c4")
      (replace-inner-foreground  "#7e7777") (replace-inner-background  "#585050")
      (replace-center-foreground "#7e7777") (replace-center-background "#292424")

      (emacs-outer-foreground    "#292424") (emacs-outer-background    "#7e7777")
      (emacs-inner-foreground    "#7e7777") (emacs-inner-background    "#585050")
      (emacs-center-foreground   "#7e7777") (emacs-center-background   "#292424")

      (inactive1-foreground      "#292424") (inactive1-background      "#292424")
      (inactive2-foreground      "#7e7777") (inactive2-background      "#292424")
      (inactive3-foreground      "#8a8585") (inactive3-background      "#292424"))

  (airline-themes-set-deftheme 'airline-base16_atelier_plateau)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_plateau)
;;; airline-base16_atelier_plateau-theme.el ends here
