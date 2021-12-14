
;;; Code:

(deftheme airline-transparent
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#8d96a1") (normal-outer-background   "NONE")
      (normal-inner-foreground   "#3f4b59") (normal-inner-background   "NONE")
      (normal-center-foreground  "#3f4b59") (normal-center-background  "NONE")

      (insert-outer-foreground   "#1d1f21") (insert-outer-background   "#BBE67E")
      (insert-inner-foreground   "#3f4b59") (insert-inner-background   "NONE")
      (insert-center-foreground  "#3f4b59") (insert-center-background  "NONE")

      (visual-outer-foreground   "#1d1f21") (visual-outer-background   "#F07178")
      (visual-inner-foreground   "#3f4b59") (visual-inner-background   "NONE")
      (visual-center-foreground  "#3f4b59") (visual-center-background  "NONE")

      (replace-outer-foreground  "#1d1f21") (replace-outer-background  "#D4BFFF")
      (replace-inner-foreground  "#3f4b59") (replace-inner-background  "NONE")
      (replace-center-foreground "#3f4b59") (replace-center-background "NONE")

      (emacs-outer-foreground    "#8d96a1") (emacs-outer-background    "NONE")
      (emacs-inner-foreground    "#3f4b59") (emacs-inner-background    "NONE")
      (emacs-center-foreground   "#3f4b59") (emacs-center-background   "NONE")

      (inactive1-foreground      "#1d1f21") (inactive1-background      "NONE")
      (inactive2-foreground      "#1d1f21") (inactive2-background      "NONE")
      (inactive3-foreground      "#3f4b59") (inactive3-background      "NONE"))

  (airline-themes-set-deftheme 'airline-transparent)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-transparent)
;;; airline-transparent-theme.el ends here
