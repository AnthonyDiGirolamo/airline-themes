
;;; Code:

(deftheme airline-base16_helios
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#383c3e") (normal-outer-background   "#cdcdcd")
      (normal-inner-foreground   "#cdcdcd") (normal-inner-background   "#53585b")
      (normal-center-foreground  "#cdcdcd") (normal-center-background  "#383c3e")

      (insert-outer-foreground   "#383c3e") (insert-outer-background   "#88b92d")
      (insert-inner-foreground   "#cdcdcd") (insert-inner-background   "#53585b")
      (insert-center-foreground  "#cdcdcd") (insert-center-background  "#383c3e")

      (visual-outer-foreground   "#383c3e") (visual-outer-background   "#eb8413")
      (visual-inner-foreground   "#cdcdcd") (visual-inner-background   "#53585b")
      (visual-center-foreground  "#cdcdcd") (visual-center-background  "#383c3e")

      (replace-outer-foreground  "#383c3e") (replace-outer-background  "#be4264")
      (replace-inner-foreground  "#cdcdcd") (replace-inner-background  "#53585b")
      (replace-center-foreground "#cdcdcd") (replace-center-background "#383c3e")

      (emacs-outer-foreground    "#383c3e") (emacs-outer-background    "#cdcdcd")
      (emacs-inner-foreground    "#cdcdcd") (emacs-inner-background    "#53585b")
      (emacs-center-foreground   "#cdcdcd") (emacs-center-background   "#383c3e")

      (inactive1-foreground      "#383c3e") (inactive1-background      "#383c3e")
      (inactive2-foreground      "#cdcdcd") (inactive2-background      "#383c3e")
      (inactive3-foreground      "#d5d5d5") (inactive3-background      "#383c3e"))

  (airline-themes-set-deftheme 'airline-base16_helios)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_helios)
;;; airline-base16_helios-theme.el ends here
