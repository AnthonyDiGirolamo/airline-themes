
;;; Code:

(deftheme airline-base16_pico
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#1d2b53") (normal-outer-background   "#ab5236")
      (normal-inner-foreground   "#ab5236") (normal-inner-background   "#7e2553")
      (normal-center-foreground  "#ab5236") (normal-center-background  "#1d2b53")

      (insert-outer-foreground   "#1d2b53") (insert-outer-background   "#00e756")
      (insert-inner-foreground   "#ab5236") (insert-inner-background   "#7e2553")
      (insert-center-foreground  "#ab5236") (insert-center-background  "#1d2b53")

      (visual-outer-foreground   "#1d2b53") (visual-outer-background   "#ffa300")
      (visual-inner-foreground   "#ab5236") (visual-inner-background   "#7e2553")
      (visual-center-foreground  "#ab5236") (visual-center-background  "#1d2b53")

      (replace-outer-foreground  "#1d2b53") (replace-outer-background  "#ff77a8")
      (replace-inner-foreground  "#ab5236") (replace-inner-background  "#7e2553")
      (replace-center-foreground "#ab5236") (replace-center-background "#1d2b53")

      (emacs-outer-foreground    "#1d2b53") (emacs-outer-background    "#ab5236")
      (emacs-inner-foreground    "#ab5236") (emacs-inner-background    "#7e2553")
      (emacs-center-foreground   "#ab5236") (emacs-center-background   "#1d2b53")

      (inactive1-foreground      "#1d2b53") (inactive1-background      "#1d2b53")
      (inactive2-foreground      "#ab5236") (inactive2-background      "#1d2b53")
      (inactive3-foreground      "#5f574f") (inactive3-background      "#1d2b53"))

  (airline-themes-set-deftheme 'airline-base16_pico)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_pico)
;;; airline-base16_pico-theme.el ends here
