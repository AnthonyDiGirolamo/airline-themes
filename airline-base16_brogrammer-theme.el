
;;; Code:

(deftheme airline-base16_brogrammer
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#f81118") (normal-outer-background   "#2a84d2")
      (normal-inner-foreground   "#2a84d2") (normal-inner-background   "#2dc55e")
      (normal-center-foreground  "#2a84d2") (normal-center-background  "#f81118")

      (insert-outer-foreground   "#f81118") (insert-outer-background   "#f3bd09")
      (insert-inner-foreground   "#2a84d2") (insert-inner-background   "#2dc55e")
      (insert-center-foreground  "#2a84d2") (insert-center-background  "#f81118")

      (visual-outer-foreground   "#f81118") (visual-outer-background   "#de352e")
      (visual-inner-foreground   "#2a84d2") (visual-inner-background   "#2dc55e")
      (visual-center-foreground  "#2a84d2") (visual-center-background  "#f81118")

      (replace-outer-foreground  "#f81118") (replace-outer-background  "#0f7ddb")
      (replace-inner-foreground  "#2a84d2") (replace-inner-background  "#2dc55e")
      (replace-center-foreground "#2a84d2") (replace-center-background "#f81118")

      (emacs-outer-foreground    "#f81118") (emacs-outer-background    "#2a84d2")
      (emacs-inner-foreground    "#2a84d2") (emacs-inner-background    "#2dc55e")
      (emacs-center-foreground   "#2a84d2") (emacs-center-background   "#f81118")

      (inactive1-foreground      "#f81118") (inactive1-background      "#f81118")
      (inactive2-foreground      "#2a84d2") (inactive2-background      "#f81118")
      (inactive3-foreground      "#4e5ab7") (inactive3-background      "#f81118"))

  (airline-themes-set-deftheme 'airline-base16_brogrammer)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_brogrammer)
;;; airline-base16_brogrammer-theme.el ends here
