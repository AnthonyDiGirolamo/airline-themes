
;;; Code:

(deftheme airline-powerlineish
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/powerlineish.vim")

(let ((normal-outer-foreground  "#005f00") (normal-outer-background  "#afd700")
      (normal-inner-foreground  "#9e9e9e") (normal-inner-background  "#303030")
      (normal-center-foreground "#ffffff") (normal-center-background "#121212")

      (insert-outer-foreground  "#005f5f") (insert-outer-background  "#ffffff")
      (insert-inner-foreground  "#5fafd7") (insert-inner-background  "#0087af")
      (insert-center-foreground "#87d7ff") (insert-center-background "#005f87")

      (visual-outer-foreground  "#080808") (visual-outer-background  "#ffaf00")
      (visual-inner-foreground  "#9e9e9e") (visual-inner-background  "#303030")
      (visual-center-foreground "#ffffff") (visual-center-background "#121212")

      (replace-outer-foreground  "#ffffff") (replace-outer-background  "#d70000")
      (replace-inner-foreground  "#9e9e9e") (replace-inner-background  "#303030")
      (replace-center-foreground "#ffffff") (replace-center-background "#121212")

      (emacs-outer-foreground  "#d7d7ff") (emacs-outer-background  "#5f00af")
      (emacs-inner-foreground  "#9e9e9e") (emacs-inner-background  "#303030")
      (emacs-center-foreground "#ffffff") (emacs-center-background "#121212")

      (inactive1-foreground "#45413b") (inactive1-background "#141413")
      (inactive2-foreground "#45413b") (inactive2-background "#242321")
      (inactive3-foreground "#45413b") (inactive3-background "#242321"))

  (airline-themes-set-deftheme 'airline-powerlineish)

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  `(bar ,insert-outer-background))
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))
)

(airline-themes-set-modeline)

(provide-theme 'airline-powerlineish)
;;; airline-powerlineish-theme.el ends here
