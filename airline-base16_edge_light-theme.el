
;;; Code:

(deftheme airline-base16_edge_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#7c9f4b") (normal-outer-background   "#6587bf")
      (normal-inner-foreground   "#6587bf") (normal-inner-background   "#d69822")
      (normal-center-foreground  "#6587bf") (normal-center-background  "#7c9f4b")

      (insert-outer-foreground   "#7c9f4b") (insert-outer-background   "#7c9f4b")
      (insert-inner-foreground   "#6587bf") (insert-inner-background   "#d69822")
      (insert-center-foreground  "#6587bf") (insert-center-background  "#7c9f4b")

      (visual-outer-foreground   "#7c9f4b") (visual-outer-background   "#db7070")
      (visual-inner-foreground   "#6587bf") (visual-inner-background   "#d69822")
      (visual-center-foreground  "#6587bf") (visual-center-background  "#7c9f4b")

      (replace-outer-foreground  "#7c9f4b") (replace-outer-background  "#b870ce")
      (replace-inner-foreground  "#6587bf") (replace-inner-background  "#d69822")
      (replace-center-foreground "#6587bf") (replace-center-background "#7c9f4b")

      (emacs-outer-foreground    "#7c9f4b") (emacs-outer-background    "#6587bf")
      (emacs-inner-foreground    "#6587bf") (emacs-inner-background    "#d69822")
      (emacs-center-foreground   "#6587bf") (emacs-center-background   "#7c9f4b")

      (inactive1-foreground      "#7c9f4b") (inactive1-background      "#7c9f4b")
      (inactive2-foreground      "#6587bf") (inactive2-background      "#7c9f4b")
      (inactive3-foreground      "#5e646f") (inactive3-background      "#7c9f4b"))

  (airline-themes-set-deftheme 'airline-base16_edge_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_edge_light)
;;; airline-base16_edge_light-theme.el ends here
