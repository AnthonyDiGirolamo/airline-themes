
;;; Code:

(deftheme airline-molokai
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/molokai.vim")

(let ((normal-outer-foreground  "#080808") (normal-outer-background  "#e6db74")
      (normal-inner-foreground  "#f8f8f0") (normal-inner-background  "#232526")
      (normal-center-foreground "#f8f8f0") (normal-center-background "#465457")

      (insert-outer-foreground  "#080808") (insert-outer-background  "#66d9ef")
      (insert-inner-foreground  "#f8f8f0") (insert-inner-background  "#232526")
      (insert-center-foreground "#f8f8f0") (insert-center-background "#465457")

      (visual-outer-foreground  "#080808") (visual-outer-background  "#fd971f")
      (visual-inner-foreground  "#f8f8f0") (visual-inner-background  "#232526")
      (visual-center-foreground "#f8f8f0") (visual-center-background "#465457")

      (replace-outer-foreground  "#080808") (replace-outer-background  "#ef5939")
      (replace-inner-foreground  "#f8f8f0") (replace-inner-background  "#232526")
      (replace-center-foreground "#f8f8f0") (replace-center-background "#465457")

      (emacs-outer-foreground  "#d7d7ff") (emacs-outer-background  "#5f00af")
      (emacs-inner-foreground  "#f8f8f0") (emacs-inner-background  "#232526")
      (emacs-center-foreground "#f8f8f0") (emacs-center-background "#465457")

      (inactive1-foreground "#1b1d1e") (inactive1-background "#465457")
      (inactive2-foreground "#1b1d1e") (inactive2-background "#465457")
      (inactive3-foreground "#1b1d1e") (inactive3-background "#465457"))

  (airline-themes-set-deftheme 'airline-molokai)

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  `(bar ,insert-outer-background))
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))
)

(airline-themes-set-modeline)

(provide-theme 'airline-molokai)
;;; airline-molokai-theme.el ends here
