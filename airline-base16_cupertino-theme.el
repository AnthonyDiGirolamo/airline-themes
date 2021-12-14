
;;; Code:

(deftheme airline-base16_cupertino
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#c0c0c0") (normal-outer-background   "#808080")
      (normal-inner-foreground   "#808080") (normal-inner-background   "#c0c0c0")
      (normal-center-foreground  "#808080") (normal-center-background  "#c0c0c0")

      (insert-outer-foreground   "#c0c0c0") (insert-outer-background   "#007400")
      (insert-inner-foreground   "#808080") (insert-inner-background   "#c0c0c0")
      (insert-center-foreground  "#808080") (insert-center-background  "#c0c0c0")

      (visual-outer-foreground   "#c0c0c0") (visual-outer-background   "#eb8500")
      (visual-inner-foreground   "#808080") (visual-inner-background   "#c0c0c0")
      (visual-center-foreground  "#808080") (visual-center-background  "#c0c0c0")

      (replace-outer-foreground  "#c0c0c0") (replace-outer-background  "#a90d91")
      (replace-inner-foreground  "#808080") (replace-inner-background  "#c0c0c0")
      (replace-center-foreground "#808080") (replace-center-background "#c0c0c0")

      (emacs-outer-foreground    "#c0c0c0") (emacs-outer-background    "#808080")
      (emacs-inner-foreground    "#808080") (emacs-inner-background    "#c0c0c0")
      (emacs-center-foreground   "#808080") (emacs-center-background   "#c0c0c0")

      (inactive1-foreground      "#c0c0c0") (inactive1-background      "#c0c0c0")
      (inactive2-foreground      "#808080") (inactive2-background      "#c0c0c0")
      (inactive3-foreground      "#404040") (inactive3-background      "#c0c0c0"))

  (airline-themes-set-deftheme 'airline-base16_cupertino)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_cupertino)
;;; airline-base16_cupertino-theme.el ends here
