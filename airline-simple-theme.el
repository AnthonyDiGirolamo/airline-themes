
;;; Code:

(deftheme airline-simple
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/simple.vim")

(let ((normal-outer-foreground  "#080808") (normal-outer-background  "#00dfff")
      (normal-inner-foreground  "#ff5f00") (normal-inner-background  "#1c1c1c")
      (normal-center-foreground "#767676") (normal-center-background "#080808")

      (insert-outer-foreground  "#080808") (insert-outer-background  "#5fff00")
      (insert-inner-foreground  "#ff5f00") (insert-inner-background  "#1c1c1c")
      (insert-center-foreground "#767676") (insert-center-background "#080808")

      (visual-outer-foreground  "#080808") (visual-outer-background  "#dfdf00")
      (visual-inner-foreground  "#ff5f00") (visual-inner-background  "#1c1c1c")
      (visual-center-foreground "#767676") (visual-center-background "#080808")

      (replace-outer-foreground  "#080808") (replace-outer-background  "#af0000")
      (replace-inner-foreground  "#ff5f00") (replace-inner-background  "#1c1c1c")
      (replace-center-foreground "#767676") (replace-center-background "#080808")

      (emacs-outer-foreground  "#d7d7ff") (emacs-outer-background  "#5f00af")
      (emacs-inner-foreground  "#ff5f00") (emacs-inner-background  "#1c1c1c")
      (emacs-center-foreground "#767676") (emacs-center-background "#080808")

      (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
      (inactive2-foreground "#4e4e4e") (inactive2-background "#080808")
      (inactive3-foreground "#4e4e4e") (inactive3-background "#080808"))

  (airline-themes-set-deftheme 'airline-simple)

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  `(bar ,insert-outer-background))
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))
)

(airline-themes-set-modeline)

(provide-theme 'airline-simple)
;;; airline-simple-theme.el ends here
