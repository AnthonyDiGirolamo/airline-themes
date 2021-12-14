
;;; Code:

(deftheme airline-base16_woodland
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#302b25") (normal-outer-background   "#b4a490")
      (normal-inner-foreground   "#b4a490") (normal-inner-background   "#48413a")
      (normal-center-foreground  "#b4a490") (normal-center-background  "#302b25")

      (insert-outer-foreground   "#302b25") (insert-outer-background   "#b7ba53")
      (insert-inner-foreground   "#b4a490") (insert-inner-background   "#48413a")
      (insert-center-foreground  "#b4a490") (insert-center-background  "#302b25")

      (visual-outer-foreground   "#302b25") (visual-outer-background   "#ca7f32")
      (visual-inner-foreground   "#b4a490") (visual-inner-background   "#48413a")
      (visual-center-foreground  "#b4a490") (visual-center-background  "#302b25")

      (replace-outer-foreground  "#302b25") (replace-outer-background  "#bb90e2")
      (replace-inner-foreground  "#b4a490") (replace-inner-background  "#48413a")
      (replace-center-foreground "#b4a490") (replace-center-background "#302b25")

      (emacs-outer-foreground    "#302b25") (emacs-outer-background    "#b4a490")
      (emacs-inner-foreground    "#b4a490") (emacs-inner-background    "#48413a")
      (emacs-center-foreground   "#b4a490") (emacs-center-background   "#302b25")

      (inactive1-foreground      "#302b25") (inactive1-background      "#302b25")
      (inactive2-foreground      "#b4a490") (inactive2-background      "#302b25")
      (inactive3-foreground      "#cabcb1") (inactive3-background      "#302b25"))

  (airline-themes-set-deftheme 'airline-base16_woodland)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_woodland)
;;; airline-base16_woodland-theme.el ends here
