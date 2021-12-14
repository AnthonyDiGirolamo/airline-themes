
;;; Code:

(deftheme airline-base16_atelier_savanna_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#dfe7e2") (normal-outer-background   "#5f6d64")
      (normal-inner-foreground   "#5f6d64") (normal-inner-background   "#87928a")
      (normal-center-foreground  "#5f6d64") (normal-center-background  "#dfe7e2")

      (insert-outer-foreground   "#dfe7e2") (insert-outer-background   "#489963")
      (insert-inner-foreground   "#5f6d64") (insert-inner-background   "#87928a")
      (insert-center-foreground  "#5f6d64") (insert-center-background  "#dfe7e2")

      (visual-outer-foreground   "#dfe7e2") (visual-outer-background   "#9f713c")
      (visual-inner-foreground   "#5f6d64") (visual-inner-background   "#87928a")
      (visual-center-foreground  "#5f6d64") (visual-center-background  "#dfe7e2")

      (replace-outer-foreground  "#dfe7e2") (replace-outer-background  "#55859b")
      (replace-inner-foreground  "#5f6d64") (replace-inner-background  "#87928a")
      (replace-center-foreground "#5f6d64") (replace-center-background "#dfe7e2")

      (emacs-outer-foreground    "#dfe7e2") (emacs-outer-background    "#5f6d64")
      (emacs-inner-foreground    "#5f6d64") (emacs-inner-background    "#87928a")
      (emacs-center-foreground   "#5f6d64") (emacs-center-background   "#dfe7e2")

      (inactive1-foreground      "#dfe7e2") (inactive1-background      "#dfe7e2")
      (inactive2-foreground      "#5f6d64") (inactive2-background      "#dfe7e2")
      (inactive3-foreground      "#526057") (inactive3-background      "#dfe7e2"))

  (airline-themes-set-deftheme 'airline-base16_atelier_savanna_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_savanna_light)
;;; airline-base16_atelier_savanna_light-theme.el ends here
