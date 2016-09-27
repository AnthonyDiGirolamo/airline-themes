
;;; Code:

(deftheme airline-kalisi
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/kalisi.vim")

(let ((normal-outer-foreground  "#005f00") (normal-outer-background  "#afd700")
      (normal-inner-foreground  "#afd700") (normal-inner-background  "#005f00")
      (normal-center-foreground "#b5b5b5") (normal-center-background "#222222")

      (insert-outer-foreground  "#ffffff") (insert-outer-background  "#e80000")
      (insert-inner-foreground  "#ff0000") (insert-inner-background  "#5f0000")
      (insert-center-foreground "#b5b5b5") (insert-center-background "#222222")

      (visual-outer-foreground  "#0087ff") (visual-outer-background  "#ffffff")
      (visual-inner-foreground  "#005faf") (visual-inner-background  "#5fafff")
      (visual-center-foreground "#87d7ff") (visual-center-background "#005faf")

      (replace-outer-foreground  "#5f005f") (replace-outer-background  "#d75fff")
      (replace-inner-foreground  "#afd700") (replace-inner-background  "#005f00")
      (replace-center-foreground "#b5b5b5") (replace-center-background "#222222")

      (emacs-outer-foreground  "#d7d7ff") (emacs-outer-background  "#5f00af")
      (emacs-inner-foreground  "#afd700") (emacs-inner-background  "#005f00")
      (emacs-center-foreground "#b5b5b5") (emacs-center-background "#222222")

      (inactive1-foreground "#857b6f") (inactive1-background "#303032")
      (inactive2-foreground "#857b6f") (inactive2-background "#303032")
      (inactive3-foreground "#857b6f") (inactive3-background "#303032"))

  (airline-themes-set-deftheme 'airline-kalisi)

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  `(bar ,insert-outer-background))
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))
)

(airline-themes-set-modeline)

(provide-theme 'airline-kalisi)
;;; airline-kalisi-theme.el ends here
