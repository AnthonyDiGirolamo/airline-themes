
;;; Code:

(deftheme airline-apprentice
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#262626") (normal-outer-background   "#87875f")
      (normal-inner-foreground   "#262626") (normal-inner-background   "#585858")
      (normal-center-foreground  "#bcbcbc") (normal-center-background  "#262626")

      (insert-outer-foreground   "#262626") (insert-outer-background   "#5f875f")
      (insert-inner-foreground   "#262626") (insert-inner-background   "#585858")
      (insert-center-foreground  "#bcbcbc") (insert-center-background  "#262626")

      (visual-outer-foreground   "#262626") (visual-outer-background   "#ffffaf")
      (visual-inner-foreground   "#262626") (visual-inner-background   "#585858")
      (visual-center-foreground  "#bcbcbc") (visual-center-background  "#262626")

      (replace-outer-foreground  "#262626") (replace-outer-background  "#af5f5f")
      (replace-inner-foreground  "#262626") (replace-inner-background  "#585858")
      (replace-center-foreground "#bcbcbc") (replace-center-background "#262626")

      (emacs-outer-foreground    "#262626") (emacs-outer-background    "#87875f")
      (emacs-inner-foreground    "#262626") (emacs-inner-background    "#585858")
      (emacs-center-foreground   "#bcbcbc") (emacs-center-background   "#262626")

      (inactive1-foreground      "#262626") (inactive1-background      "#585858")
      (inactive2-foreground      "#585858") (inactive2-background      "#262626")
      (inactive3-foreground      "#585858") (inactive3-background      "#262626"))

  (airline-themes-set-deftheme 'airline-apprentice)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-apprentice)
;;; airline-apprentice-theme.el ends here
