
;;; Code:

(deftheme airline-base16_harmonic_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#e5ebf1") (normal-outer-background   "#627e99")
      (normal-inner-foreground   "#627e99") (normal-inner-background   "#cbd6e2")
      (normal-center-foreground  "#627e99") (normal-center-background  "#e5ebf1")

      (insert-outer-foreground   "#e5ebf1") (insert-outer-background   "#56bf8b")
      (insert-inner-foreground   "#627e99") (insert-inner-background   "#cbd6e2")
      (insert-center-foreground  "#627e99") (insert-center-background  "#e5ebf1")

      (visual-outer-foreground   "#e5ebf1") (visual-outer-background   "#bfbf56")
      (visual-inner-foreground   "#627e99") (visual-inner-background   "#cbd6e2")
      (visual-center-foreground  "#627e99") (visual-center-background  "#e5ebf1")

      (replace-outer-foreground  "#e5ebf1") (replace-outer-background  "#bf568b")
      (replace-inner-foreground  "#627e99") (replace-inner-background  "#cbd6e2")
      (replace-center-foreground "#627e99") (replace-center-background "#e5ebf1")

      (emacs-outer-foreground    "#e5ebf1") (emacs-outer-background    "#627e99")
      (emacs-inner-foreground    "#627e99") (emacs-inner-background    "#cbd6e2")
      (emacs-center-foreground   "#627e99") (emacs-center-background   "#e5ebf1")

      (inactive1-foreground      "#e5ebf1") (inactive1-background      "#e5ebf1")
      (inactive2-foreground      "#627e99") (inactive2-background      "#e5ebf1")
      (inactive3-foreground      "#405c79") (inactive3-background      "#e5ebf1"))

  (airline-themes-set-deftheme 'airline-base16_harmonic_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_harmonic_light)
;;; airline-base16_harmonic_light-theme.el ends here
