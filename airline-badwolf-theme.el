
;;; Code:

(deftheme airline-badwolf
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/badwolf.vim")

(let ((normal-outer-foreground  "#141413") (normal-outer-background  "#aeee00")
     (normal-inner-foreground  "#f4cf86") (normal-inner-background  "#45413b")
     (normal-center-foreground "#8cffba") (normal-center-background "#242321")

     (insert-outer-foreground  "#141413") (insert-outer-background  "#0a9dff")
     (insert-inner-foreground  "#f4cf86") (insert-inner-background  "#005faf")
     (insert-center-foreground "#0a9dff") (insert-center-background "#242321")

     (visual-outer-foreground  "#141413") (visual-outer-background  "#ffa724")
     (visual-inner-foreground  "#000000") (visual-inner-background  "#fade3e")
     (visual-center-foreground "#000000") (visual-center-background "#b88853")

     (replace-outer-foreground  "#141413") (replace-outer-background  "#ff9eb8")
     (replace-inner-foreground  "#f4cf86") (replace-inner-background  "#45413b")
     (replace-center-foreground "#8cffba") (replace-center-background "#242321")

     (emacs-outer-foreground  "#d7d7ff") (emacs-outer-background  "#5f00af")
     (emacs-inner-foreground  "#f4cf86") (emacs-inner-background  "#45413b")
     (emacs-center-foreground "#8cffba") (emacs-center-background "#242321")

     (inactive1-foreground "#45413b") (inactive1-background "#141413")
     (inactive2-foreground "#45413b") (inactive2-background "#242321")
     (inactive3-foreground "#45413b") (inactive3-background "#242321"))

  (airline-themes-set-deftheme 'airline-badwolf)

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  `(bar ,insert-outer-background))
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))
)

(airline-themes-set-modeline)

(provide-theme 'airline-badwolf)
;;; airline-badwolf-theme.el ends here
