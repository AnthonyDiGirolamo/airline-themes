
;;; Code:

(deftheme airline-understated
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/understated.vim")

(let ((normal-outer-foreground  "#FFFFFF") (normal-outer-background  "#5F87FF")
      (normal-inner-foreground  "#AFAF87") (normal-inner-background  "#5F5F5F")
      (normal-center-foreground "#AFAF87") (normal-center-background "#5F5F5F")

      (insert-outer-foreground  "#FFFFFF") (insert-outer-background  "#87AF5F")
      (insert-inner-foreground  "#AFAF87") (insert-inner-background  "#5F5F5F")
      (insert-center-foreground "#AFAF87") (insert-center-background "#5F5F5F")

      (visual-outer-foreground  "#FFFFFF") (visual-outer-background  "#AF5F00")
      (visual-inner-foreground  "#AFAF87") (visual-inner-background  "#5F5F5F")
      (visual-center-foreground "#AFAF87") (visual-center-background "#5F5F5F")

      (replace-outer-foreground  "#ff0000") (replace-outer-background  "#870000")
      (replace-inner-foreground  "#AFAF87") (replace-inner-background  "#5F5F5F")
      (replace-center-foreground "#AFAF87") (replace-center-background "#5F5F5F")

      (emacs-outer-foreground  "#d7d7ff") (emacs-outer-background  "#5f00af")
      (emacs-inner-foreground  "#AFAF87") (emacs-inner-background  "#5F5F5F")
      (emacs-center-foreground "#AFAF87") (emacs-center-background "#5F5F5F")

      (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
      (inactive2-foreground "#4e4e4e") (inactive2-background "#1c1c1c")
      (inactive3-foreground "#4e4e4e") (inactive3-background "#1c1c1c"))

  (airline-themes-set-deftheme 'airline-understated)

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  `(bar ,insert-outer-background))
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))
)

(airline-themes-set-modeline)

(provide-theme 'airline-understated)
;;; airline-understated-theme.el ends here
