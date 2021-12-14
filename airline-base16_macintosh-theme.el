
;;; Code:

(deftheme airline-base16_macintosh
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#404040") (normal-outer-background   "#808080")
      (normal-inner-foreground   "#808080") (normal-inner-background   "#404040")
      (normal-center-foreground  "#808080") (normal-center-background  "#404040")

      (insert-outer-foreground   "#404040") (insert-outer-background   "#1fb714")
      (insert-inner-foreground   "#808080") (insert-inner-background   "#404040")
      (insert-center-foreground  "#808080") (insert-center-background  "#404040")

      (visual-outer-foreground   "#404040") (visual-outer-background   "#ff6403")
      (visual-inner-foreground   "#808080") (visual-inner-background   "#404040")
      (visual-center-foreground  "#808080") (visual-center-background  "#404040")

      (replace-outer-foreground  "#404040") (replace-outer-background  "#4700a5")
      (replace-inner-foreground  "#808080") (replace-inner-background  "#404040")
      (replace-center-foreground "#808080") (replace-center-background "#404040")

      (emacs-outer-foreground    "#404040") (emacs-outer-background    "#808080")
      (emacs-inner-foreground    "#808080") (emacs-inner-background    "#404040")
      (emacs-center-foreground   "#808080") (emacs-center-background   "#404040")

      (inactive1-foreground      "#404040") (inactive1-background      "#404040")
      (inactive2-foreground      "#808080") (inactive2-background      "#404040")
      (inactive3-foreground      "#c0c0c0") (inactive3-background      "#404040"))

  (airline-themes-set-deftheme 'airline-base16_macintosh)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_macintosh)
;;; airline-base16_macintosh-theme.el ends here
