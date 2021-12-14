
;;; Code:

(deftheme airline-base16_solarized_dark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#073642") (normal-outer-background   "#839496")
      (normal-inner-foreground   "#839496") (normal-inner-background   "#586e75")
      (normal-center-foreground  "#839496") (normal-center-background  "#073642")

      (insert-outer-foreground   "#073642") (insert-outer-background   "#859900")
      (insert-inner-foreground   "#839496") (insert-inner-background   "#586e75")
      (insert-center-foreground  "#839496") (insert-center-background  "#073642")

      (visual-outer-foreground   "#073642") (visual-outer-background   "#cb4b16")
      (visual-inner-foreground   "#839496") (visual-inner-background   "#586e75")
      (visual-center-foreground  "#839496") (visual-center-background  "#073642")

      (replace-outer-foreground  "#073642") (replace-outer-background  "#6c71c4")
      (replace-inner-foreground  "#839496") (replace-inner-background  "#586e75")
      (replace-center-foreground "#839496") (replace-center-background "#073642")

      (emacs-outer-foreground    "#073642") (emacs-outer-background    "#839496")
      (emacs-inner-foreground    "#839496") (emacs-inner-background    "#586e75")
      (emacs-center-foreground   "#839496") (emacs-center-background   "#073642")

      (inactive1-foreground      "#073642") (inactive1-background      "#073642")
      (inactive2-foreground      "#839496") (inactive2-background      "#073642")
      (inactive3-foreground      "#93a1a1") (inactive3-background      "#073642"))

  (airline-themes-set-deftheme 'airline-base16_solarized_dark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_solarized_dark)
;;; airline-base16_solarized_dark-theme.el ends here
