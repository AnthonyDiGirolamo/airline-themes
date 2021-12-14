
;;; Code:

(deftheme airline-base16_atelier_estuary
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#302f27") (normal-outer-background   "#878573")
      (normal-inner-foreground   "#878573") (normal-inner-background   "#5f5e4e")
      (normal-center-foreground  "#878573") (normal-center-background  "#302f27")

      (insert-outer-foreground   "#302f27") (insert-outer-background   "#7d9726")
      (insert-inner-foreground   "#878573") (insert-inner-background   "#5f5e4e")
      (insert-center-foreground  "#878573") (insert-center-background  "#302f27")

      (visual-outer-foreground   "#302f27") (visual-outer-background   "#ae7313")
      (visual-inner-foreground   "#878573") (visual-inner-background   "#5f5e4e")
      (visual-center-foreground  "#878573") (visual-center-background  "#302f27")

      (replace-outer-foreground  "#302f27") (replace-outer-background  "#5f9182")
      (replace-inner-foreground  "#878573") (replace-inner-background  "#5f5e4e")
      (replace-center-foreground "#878573") (replace-center-background "#302f27")

      (emacs-outer-foreground    "#302f27") (emacs-outer-background    "#878573")
      (emacs-inner-foreground    "#878573") (emacs-inner-background    "#5f5e4e")
      (emacs-center-foreground   "#878573") (emacs-center-background   "#302f27")

      (inactive1-foreground      "#302f27") (inactive1-background      "#302f27")
      (inactive2-foreground      "#878573") (inactive2-background      "#302f27")
      (inactive3-foreground      "#929181") (inactive3-background      "#302f27"))

  (airline-themes-set-deftheme 'airline-base16_atelier_estuary)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_estuary)
;;; airline-base16_atelier_estuary-theme.el ends here
