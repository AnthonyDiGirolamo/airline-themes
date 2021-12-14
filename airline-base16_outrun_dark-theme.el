
;;; Code:

(deftheme airline-base16_outrun_dark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#20204A") (normal-outer-background   "#B0B0DA")
      (normal-inner-foreground   "#B0B0DA") (normal-inner-background   "#30305A")
      (normal-center-foreground  "#B0B0DA") (normal-center-background  "#20204A")

      (insert-outer-foreground   "#20204A") (insert-outer-background   "#59F176")
      (insert-inner-foreground   "#B0B0DA") (insert-inner-background   "#30305A")
      (insert-center-foreground  "#B0B0DA") (insert-center-background  "#20204A")

      (visual-outer-foreground   "#20204A") (visual-outer-background   "#FC8D28")
      (visual-inner-foreground   "#B0B0DA") (visual-inner-background   "#30305A")
      (visual-center-foreground  "#B0B0DA") (visual-center-background  "#20204A")

      (replace-outer-foreground  "#20204A") (replace-outer-background  "#F10596")
      (replace-inner-foreground  "#B0B0DA") (replace-inner-background  "#30305A")
      (replace-center-foreground "#B0B0DA") (replace-center-background "#20204A")

      (emacs-outer-foreground    "#20204A") (emacs-outer-background    "#B0B0DA")
      (emacs-inner-foreground    "#B0B0DA") (emacs-inner-background    "#30305A")
      (emacs-center-foreground   "#B0B0DA") (emacs-center-background   "#20204A")

      (inactive1-foreground      "#20204A") (inactive1-background      "#20204A")
      (inactive2-foreground      "#B0B0DA") (inactive2-background      "#20204A")
      (inactive3-foreground      "#D0D0FA") (inactive3-background      "#20204A"))

  (airline-themes-set-deftheme 'airline-base16_outrun_dark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_outrun_dark)
;;; airline-base16_outrun_dark-theme.el ends here
