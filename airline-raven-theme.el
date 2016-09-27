
;;; Code:

(deftheme airline-raven
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/raven.vim")

(let ((normal-outer-foreground  "#c8c8c8") (normal-outer-background  "#2e2e2e")
      (normal-inner-foreground  "#c8c8c8") (normal-inner-background  "#2e2e2e")
      (normal-center-foreground "#c8c8c8") (normal-center-background "#2e2e2e")

      (insert-outer-foreground  "#11c279") (insert-outer-background  "#2e2e2e")
      (insert-inner-foreground  "#11c279") (insert-inner-background  "#2e2e2e")
      (insert-center-foreground "#11c279") (insert-center-background "#2e2e2e")

      (visual-outer-foreground  "#6565ff") (visual-outer-background  "#2e2e2e")
      (visual-inner-foreground  "#6565ff") (visual-inner-background  "#2e2e2e")
      (visual-center-foreground "#6565ff") (visual-center-background "#2e2e2e")

      (replace-outer-foreground  "#e60000") (replace-outer-background  "#2e2e2e")
      (replace-inner-foreground  "#c8c8c8") (replace-inner-background  "#2e2e2e")
      (replace-center-foreground "#c8c8c8") (replace-center-background "#2e2e2e")

      (emacs-outer-foreground  "#d7d7ff") (emacs-outer-background  "#5f00af")
      (emacs-inner-foreground  "#c8c8c8") (emacs-inner-background  "#2e2e2e")
      (emacs-center-foreground "#c8c8c8") (emacs-center-background "#2e2e2e")

      (inactive1-foreground "#5e5e5e") (inactive1-background "#222222")
      (inactive2-foreground "#5e5e5e") (inactive2-background "#222222")
      (inactive3-foreground "#5e5e5e") (inactive3-background "#222222"))

  (airline-themes-set-deftheme 'airline-raven)

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-foreground)
     (setq evil-insert-state-cursor  `(bar ,insert-outer-background))
     (setq evil-replace-state-cursor replace-outer-foreground)
     (setq evil-visual-state-cursor  visual-outer-foreground)))
)

(airline-themes-set-modeline)

(provide-theme 'airline-raven)
;;; airline-raven-theme.el ends here
