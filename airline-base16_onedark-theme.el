
;;; Code:

(deftheme airline-base16_onedark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#353b45") (normal-outer-background   "#565c64")
      (normal-inner-foreground   "#565c64") (normal-inner-background   "#3e4451")
      (normal-center-foreground  "#565c64") (normal-center-background  "#353b45")

      (insert-outer-foreground   "#353b45") (insert-outer-background   "#98c379")
      (insert-inner-foreground   "#565c64") (insert-inner-background   "#3e4451")
      (insert-center-foreground  "#565c64") (insert-center-background  "#353b45")

      (visual-outer-foreground   "#353b45") (visual-outer-background   "#d19a66")
      (visual-inner-foreground   "#565c64") (visual-inner-background   "#3e4451")
      (visual-center-foreground  "#565c64") (visual-center-background  "#353b45")

      (replace-outer-foreground  "#353b45") (replace-outer-background  "#c678dd")
      (replace-inner-foreground  "#565c64") (replace-inner-background  "#3e4451")
      (replace-center-foreground "#565c64") (replace-center-background "#353b45")

      (emacs-outer-foreground    "#353b45") (emacs-outer-background    "#565c64")
      (emacs-inner-foreground    "#565c64") (emacs-inner-background    "#3e4451")
      (emacs-center-foreground   "#565c64") (emacs-center-background   "#353b45")

      (inactive1-foreground      "#353b45") (inactive1-background      "#353b45")
      (inactive2-foreground      "#565c64") (inactive2-background      "#353b45")
      (inactive3-foreground      "#abb2bf") (inactive3-background      "#353b45"))

  (airline-themes-set-deftheme 'airline-base16_onedark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_onedark)
;;; airline-base16_onedark-theme.el ends here
