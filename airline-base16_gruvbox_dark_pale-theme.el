
;;; Code:

(deftheme airline-base16_gruvbox_dark_pale
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#3a3a3a") (normal-outer-background   "#949494")
      (normal-inner-foreground   "#949494") (normal-inner-background   "#4e4e4e")
      (normal-center-foreground  "#949494") (normal-center-background  "#3a3a3a")

      (insert-outer-foreground   "#3a3a3a") (insert-outer-background   "#afaf00")
      (insert-inner-foreground   "#949494") (insert-inner-background   "#4e4e4e")
      (insert-center-foreground  "#949494") (insert-center-background  "#3a3a3a")

      (visual-outer-foreground   "#3a3a3a") (visual-outer-background   "#ff8700")
      (visual-inner-foreground   "#949494") (visual-inner-background   "#4e4e4e")
      (visual-center-foreground  "#949494") (visual-center-background  "#3a3a3a")

      (replace-outer-foreground  "#3a3a3a") (replace-outer-background  "#d485ad")
      (replace-inner-foreground  "#949494") (replace-inner-background  "#4e4e4e")
      (replace-center-foreground "#949494") (replace-center-background "#3a3a3a")

      (emacs-outer-foreground    "#3a3a3a") (emacs-outer-background    "#949494")
      (emacs-inner-foreground    "#949494") (emacs-inner-background    "#4e4e4e")
      (emacs-center-foreground   "#949494") (emacs-center-background   "#3a3a3a")

      (inactive1-foreground      "#3a3a3a") (inactive1-background      "#3a3a3a")
      (inactive2-foreground      "#949494") (inactive2-background      "#3a3a3a")
      (inactive3-foreground      "#dab997") (inactive3-background      "#3a3a3a"))

  (airline-themes-set-deftheme 'airline-base16_gruvbox_dark_pale)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_gruvbox_dark_pale)
;;; airline-base16_gruvbox_dark_pale-theme.el ends here
