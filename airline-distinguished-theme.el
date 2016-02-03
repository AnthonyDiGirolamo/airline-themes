
;;; Code:

(deftheme airline-distinguished
  "source: https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/distinguished.vim")

(let ((normal-outer-foreground  "#000000") (normal-outer-background  "#8a8a8a")
     (normal-inner-foreground  "#bcbcbc") (normal-inner-background  "#444444")
     (normal-center-foreground "#8a8a8a") (normal-center-background "#1c1c1c")

     (insert-outer-foreground  "#000000") (insert-outer-background  "#afaf5f")
     (insert-inner-foreground  "#bcbcbc") (insert-inner-background  "#444444")
     (insert-center-foreground "#afaf5f") (insert-center-background "#1c1c1c")

     (visual-outer-foreground  "#000000") (visual-outer-background  "#af5f5f")
     (visual-inner-foreground  "#bcbcbc") (visual-inner-background  "#444444")
     (visual-center-foreground "#af5f5f") (visual-center-background "#1c1c1c")

     (replace-outer-foreground "#000000") (replace-outer-background "#5f87af")
     (emacs-outer-foreground   "#000000") (emacs-outer-background   "#d75f00")

     (inactive1-foreground "#444444") (inactive1-background "#1c1c1c")
     (inactive2-foreground "#444444") (inactive2-background "#000000"))

  (airline-themes-set-deftheme 'airline-distinguished)

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  `(bar ,insert-outer-background))
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))
)

(airline-themes-set-modeline)

(provide-theme 'airline-distinguished)
;;; airline-distinguished-theme.el ends here
