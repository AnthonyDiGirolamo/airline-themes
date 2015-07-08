
;;; Code:

(deftheme airline-sol
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/sol.vim")

(let ((normal-outer-foreground  "#343434") (normal-outer-background  "#a0a0a0")
      (normal-inner-foreground  "#343434") (normal-inner-background  "#b3b3b3")
      (normal-center-foreground "#343434") (normal-center-background "#c7c7c7")

      (insert-outer-foreground  "#eeeeee") (insert-outer-background  "#09643f")
      (insert-inner-foreground  "#343434") (insert-inner-background  "#a3a3a3")
      (insert-center-foreground "#343434") (insert-center-background "#b0b0b0")

      (visual-outer-foreground  "#ffff9a") (visual-outer-background  "#ff6003")
      (visual-inner-foreground  "#343434") (visual-inner-background  "#a3a3a3")
      (visual-center-foreground "#343434") (visual-center-background "#b0b0b0")

      (replace-outer-foreground "#eeeeee") (replace-outer-background "#ff2121")
      (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

      (inactive1-foreground "#777777") (inactive1-background "#c7c7c7")
      (inactive2-foreground "#777777") (inactive2-background "#c7c7c7"))

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  insert-outer-background)
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))

  (airline-themes-set-deftheme 'airline-sol)
)

(airline-themes-set-modeline)

(provide-theme 'airline-sol)
;;; airline-sol-theme.el ends here
