
;;; Code:

(deftheme airline-base16_edge_dark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#88909f") (normal-outer-background   "#73b3e7")
      (normal-inner-foreground   "#73b3e7") (normal-inner-background   "#b7bec9")
      (normal-center-foreground  "#73b3e7") (normal-center-background  "#88909f")

      (insert-outer-foreground   "#88909f") (insert-outer-background   "#a1bf78")
      (insert-inner-foreground   "#73b3e7") (insert-inner-background   "#b7bec9")
      (insert-center-foreground  "#73b3e7") (insert-center-background  "#88909f")

      (visual-outer-foreground   "#88909f") (visual-outer-background   "#e77171")
      (visual-inner-foreground   "#73b3e7") (visual-inner-background   "#b7bec9")
      (visual-center-foreground  "#73b3e7") (visual-center-background  "#88909f")

      (replace-outer-foreground  "#88909f") (replace-outer-background  "#d390e7")
      (replace-inner-foreground  "#73b3e7") (replace-inner-background  "#b7bec9")
      (replace-center-foreground "#73b3e7") (replace-center-background "#88909f")

      (emacs-outer-foreground    "#88909f") (emacs-outer-background    "#73b3e7")
      (emacs-inner-foreground    "#73b3e7") (emacs-inner-background    "#b7bec9")
      (emacs-center-foreground   "#73b3e7") (emacs-center-background   "#88909f")

      (inactive1-foreground      "#88909f") (inactive1-background      "#88909f")
      (inactive2-foreground      "#73b3e7") (inactive2-background      "#88909f")
      (inactive3-foreground      "#b7bec9") (inactive3-background      "#88909f"))

  (airline-themes-set-deftheme 'airline-base16_edge_dark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_edge_dark)
;;; airline-base16_edge_dark-theme.el ends here
