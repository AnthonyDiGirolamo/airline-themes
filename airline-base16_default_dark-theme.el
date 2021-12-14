
;;; Code:

(deftheme airline-base16_default_dark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#282828") (normal-outer-background   "#b8b8b8")
      (normal-inner-foreground   "#b8b8b8") (normal-inner-background   "#383838")
      (normal-center-foreground  "#b8b8b8") (normal-center-background  "#282828")

      (insert-outer-foreground   "#282828") (insert-outer-background   "#a1b56c")
      (insert-inner-foreground   "#b8b8b8") (insert-inner-background   "#383838")
      (insert-center-foreground  "#b8b8b8") (insert-center-background  "#282828")

      (visual-outer-foreground   "#282828") (visual-outer-background   "#dc9656")
      (visual-inner-foreground   "#b8b8b8") (visual-inner-background   "#383838")
      (visual-center-foreground  "#b8b8b8") (visual-center-background  "#282828")

      (replace-outer-foreground  "#282828") (replace-outer-background  "#ba8baf")
      (replace-inner-foreground  "#b8b8b8") (replace-inner-background  "#383838")
      (replace-center-foreground "#b8b8b8") (replace-center-background "#282828")

      (emacs-outer-foreground    "#282828") (emacs-outer-background    "#b8b8b8")
      (emacs-inner-foreground    "#b8b8b8") (emacs-inner-background    "#383838")
      (emacs-center-foreground   "#b8b8b8") (emacs-center-background   "#282828")

      (inactive1-foreground      "#282828") (inactive1-background      "#282828")
      (inactive2-foreground      "#b8b8b8") (inactive2-background      "#282828")
      (inactive3-foreground      "#d8d8d8") (inactive3-background      "#282828"))

  (airline-themes-set-deftheme 'airline-base16_default_dark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_default_dark)
;;; airline-base16_default_dark-theme.el ends here
