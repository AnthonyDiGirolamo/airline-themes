
;;; Code:

(deftheme airline-base16_phd
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#2a3448") (normal-outer-background   "#9a99a3")
      (normal-inner-foreground   "#9a99a3") (normal-inner-background   "#4d5666")
      (normal-center-foreground  "#9a99a3") (normal-center-background  "#2a3448")

      (insert-outer-foreground   "#2a3448") (insert-outer-background   "#99bf52")
      (insert-inner-foreground   "#9a99a3") (insert-inner-background   "#4d5666")
      (insert-center-foreground  "#9a99a3") (insert-center-background  "#2a3448")

      (visual-outer-foreground   "#2a3448") (visual-outer-background   "#f0a000")
      (visual-inner-foreground   "#9a99a3") (visual-inner-background   "#4d5666")
      (visual-center-foreground  "#9a99a3") (visual-center-background  "#2a3448")

      (replace-outer-foreground  "#2a3448") (replace-outer-background  "#9989cc")
      (replace-inner-foreground  "#9a99a3") (replace-inner-background  "#4d5666")
      (replace-center-foreground "#9a99a3") (replace-center-background "#2a3448")

      (emacs-outer-foreground    "#2a3448") (emacs-outer-background    "#9a99a3")
      (emacs-inner-foreground    "#9a99a3") (emacs-inner-background    "#4d5666")
      (emacs-center-foreground   "#9a99a3") (emacs-center-background   "#2a3448")

      (inactive1-foreground      "#2a3448") (inactive1-background      "#2a3448")
      (inactive2-foreground      "#9a99a3") (inactive2-background      "#2a3448")
      (inactive3-foreground      "#b8bbc2") (inactive3-background      "#2a3448"))

  (airline-themes-set-deftheme 'airline-base16_phd)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_phd)
;;; airline-base16_phd-theme.el ends here
