
;;; Code:

(deftheme airline-base16_atelier_savanna
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#232a25") (normal-outer-background   "#78877d")
      (normal-inner-foreground   "#78877d") (normal-inner-background   "#526057")
      (normal-center-foreground  "#78877d") (normal-center-background  "#232a25")

      (insert-outer-foreground   "#232a25") (insert-outer-background   "#489963")
      (insert-inner-foreground   "#78877d") (insert-inner-background   "#526057")
      (insert-center-foreground  "#78877d") (insert-center-background  "#232a25")

      (visual-outer-foreground   "#232a25") (visual-outer-background   "#9f713c")
      (visual-inner-foreground   "#78877d") (visual-inner-background   "#526057")
      (visual-center-foreground  "#78877d") (visual-center-background  "#232a25")

      (replace-outer-foreground  "#232a25") (replace-outer-background  "#55859b")
      (replace-inner-foreground  "#78877d") (replace-inner-background  "#526057")
      (replace-center-foreground "#78877d") (replace-center-background "#232a25")

      (emacs-outer-foreground    "#232a25") (emacs-outer-background    "#78877d")
      (emacs-inner-foreground    "#78877d") (emacs-inner-background    "#526057")
      (emacs-center-foreground   "#78877d") (emacs-center-background   "#232a25")

      (inactive1-foreground      "#232a25") (inactive1-background      "#232a25")
      (inactive2-foreground      "#78877d") (inactive2-background      "#232a25")
      (inactive3-foreground      "#87928a") (inactive3-background      "#232a25"))

  (airline-themes-set-deftheme 'airline-base16_atelier_savanna)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_savanna)
;;; airline-base16_atelier_savanna-theme.el ends here
