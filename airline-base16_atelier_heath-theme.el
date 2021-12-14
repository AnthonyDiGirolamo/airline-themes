
;;; Code:

(deftheme airline-base16_atelier_heath
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#292329") (normal-outer-background   "#9e8f9e")
      (normal-inner-foreground   "#9e8f9e") (normal-inner-background   "#695d69")
      (normal-center-foreground  "#9e8f9e") (normal-center-background  "#292329")

      (insert-outer-foreground   "#292329") (insert-outer-background   "#918b3b")
      (insert-inner-foreground   "#9e8f9e") (insert-inner-background   "#695d69")
      (insert-center-foreground  "#9e8f9e") (insert-center-background  "#292329")

      (visual-outer-foreground   "#292329") (visual-outer-background   "#a65926")
      (visual-inner-foreground   "#9e8f9e") (visual-inner-background   "#695d69")
      (visual-center-foreground  "#9e8f9e") (visual-center-background  "#292329")

      (replace-outer-foreground  "#292329") (replace-outer-background  "#7b59c0")
      (replace-inner-foreground  "#9e8f9e") (replace-inner-background  "#695d69")
      (replace-center-foreground "#9e8f9e") (replace-center-background "#292329")

      (emacs-outer-foreground    "#292329") (emacs-outer-background    "#9e8f9e")
      (emacs-inner-foreground    "#9e8f9e") (emacs-inner-background    "#695d69")
      (emacs-center-foreground   "#9e8f9e") (emacs-center-background   "#292329")

      (inactive1-foreground      "#292329") (inactive1-background      "#292329")
      (inactive2-foreground      "#9e8f9e") (inactive2-background      "#292329")
      (inactive3-foreground      "#ab9bab") (inactive3-background      "#292329"))

  (airline-themes-set-deftheme 'airline-base16_atelier_heath)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_heath)
;;; airline-base16_atelier_heath-theme.el ends here
