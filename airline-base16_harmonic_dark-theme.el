
;;; Code:

(deftheme airline-base16_harmonic_dark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#223b54") (normal-outer-background   "#aabcce")
      (normal-inner-foreground   "#aabcce") (normal-inner-background   "#405c79")
      (normal-center-foreground  "#aabcce") (normal-center-background  "#223b54")

      (insert-outer-foreground   "#223b54") (insert-outer-background   "#56bf8b")
      (insert-inner-foreground   "#aabcce") (insert-inner-background   "#405c79")
      (insert-center-foreground  "#aabcce") (insert-center-background  "#223b54")

      (visual-outer-foreground   "#223b54") (visual-outer-background   "#bfbf56")
      (visual-inner-foreground   "#aabcce") (visual-inner-background   "#405c79")
      (visual-center-foreground  "#aabcce") (visual-center-background  "#223b54")

      (replace-outer-foreground  "#223b54") (replace-outer-background  "#bf568b")
      (replace-inner-foreground  "#aabcce") (replace-inner-background  "#405c79")
      (replace-center-foreground "#aabcce") (replace-center-background "#223b54")

      (emacs-outer-foreground    "#223b54") (emacs-outer-background    "#aabcce")
      (emacs-inner-foreground    "#aabcce") (emacs-inner-background    "#405c79")
      (emacs-center-foreground   "#aabcce") (emacs-center-background   "#223b54")

      (inactive1-foreground      "#223b54") (inactive1-background      "#223b54")
      (inactive2-foreground      "#aabcce") (inactive2-background      "#223b54")
      (inactive3-foreground      "#cbd6e2") (inactive3-background      "#223b54"))

  (airline-themes-set-deftheme 'airline-base16_harmonic_dark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_harmonic_dark)
;;; airline-base16_harmonic_dark-theme.el ends here
