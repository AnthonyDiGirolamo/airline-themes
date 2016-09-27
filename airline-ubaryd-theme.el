
;;; Code:

(deftheme airline-ubaryd
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/ubaryd.vim")

(let ((normal-outer-foreground  "#141413") (normal-outer-background  "#c7b386")
      (normal-inner-foreground  "#c7b386") (normal-inner-background  "#45413b")
      (normal-center-foreground "#b88853") (normal-center-background "#242321")

      (insert-outer-foreground  "#1a1a18") (insert-outer-background  "#fade3e")
      (insert-inner-foreground  "#c7b386") (insert-inner-background  "#45413b")
      (insert-center-foreground "#f4cf86") (insert-center-background "#242321")

      (visual-outer-foreground  "#1c1b1a") (visual-outer-background  "#9a4820")
      (visual-inner-foreground  "#000000") (visual-inner-background  "#88633f")
      (visual-center-foreground "#88633f") (visual-center-background "#c7b386")

      (replace-outer-foreground  "#1a1a18") (replace-outer-background  "#c7915b")
      (replace-inner-foreground  "#c7b386") (replace-inner-background  "#45413b")
      (replace-center-foreground "#b88853") (replace-center-background "#242321")

      (emacs-outer-foreground  "#d7d7ff") (emacs-outer-background  "#5f00af")
      (emacs-inner-foreground  "#c7b386") (emacs-inner-background  "#45413b")
      (emacs-center-foreground "#b88853") (emacs-center-background "#242321")

      (inactive1-foreground "#45413b") (inactive1-background "#242321")
      (inactive2-foreground "#45413b") (inactive2-background "#242321")
      (inactive3-foreground "#45413b") (inactive3-background "#242321"))

  (airline-themes-set-deftheme 'airline-ubaryd)

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  `(bar ,insert-outer-background))
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))
)

(airline-themes-set-modeline)

(provide-theme 'airline-ubaryd)
;;; airline-ubaryd-theme.el ends here
