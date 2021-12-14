
;;; Code:

(deftheme airline-base16_atlas
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#00384d") (normal-outer-background   "#869696")
      (normal-inner-foreground   "#869696") (normal-inner-background   "#517F8D")
      (normal-center-foreground  "#869696") (normal-center-background  "#00384d")

      (insert-outer-foreground   "#00384d") (insert-outer-background   "#7fc06e")
      (insert-inner-foreground   "#869696") (insert-inner-background   "#517F8D")
      (insert-center-foreground  "#869696") (insert-center-background  "#00384d")

      (visual-outer-foreground   "#00384d") (visual-outer-background   "#f08e48")
      (visual-inner-foreground   "#869696") (visual-inner-background   "#517F8D")
      (visual-center-foreground  "#869696") (visual-center-background  "#00384d")

      (replace-outer-foreground  "#00384d") (replace-outer-background  "#9a70a4")
      (replace-inner-foreground  "#869696") (replace-inner-background  "#517F8D")
      (replace-center-foreground "#869696") (replace-center-background "#00384d")

      (emacs-outer-foreground    "#00384d") (emacs-outer-background    "#869696")
      (emacs-inner-foreground    "#869696") (emacs-inner-background    "#517F8D")
      (emacs-center-foreground   "#869696") (emacs-center-background   "#00384d")

      (inactive1-foreground      "#00384d") (inactive1-background      "#00384d")
      (inactive2-foreground      "#869696") (inactive2-background      "#00384d")
      (inactive3-foreground      "#a1a19a") (inactive3-background      "#00384d"))

  (airline-themes-set-deftheme 'airline-base16_atlas)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atlas)
;;; airline-base16_atlas-theme.el ends here
