
;;; Code:

(deftheme airline-base16_synth_midnight_dark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#141414") (normal-outer-background   "#BFBBBF")
      (normal-inner-foreground   "#BFBBBF") (normal-inner-background   "#242424")
      (normal-center-foreground  "#BFBBBF") (normal-center-background  "#141414")

      (insert-outer-foreground   "#141414") (insert-outer-background   "#06EA61")
      (insert-inner-foreground   "#BFBBBF") (insert-inner-background   "#242424")
      (insert-center-foreground  "#BFBBBF") (insert-center-background  "#141414")

      (visual-outer-foreground   "#141414") (visual-outer-background   "#E4600E")
      (visual-inner-foreground   "#BFBBBF") (visual-inner-background   "#242424")
      (visual-center-foreground  "#BFBBBF") (visual-center-background  "#141414")

      (replace-outer-foreground  "#141414") (replace-outer-background  "#EA5CE2")
      (replace-inner-foreground  "#BFBBBF") (replace-inner-background  "#242424")
      (replace-center-foreground "#BFBBBF") (replace-center-background "#141414")

      (emacs-outer-foreground    "#141414") (emacs-outer-background    "#BFBBBF")
      (emacs-inner-foreground    "#BFBBBF") (emacs-inner-background    "#242424")
      (emacs-center-foreground   "#BFBBBF") (emacs-center-background   "#141414")

      (inactive1-foreground      "#141414") (inactive1-background      "#141414")
      (inactive2-foreground      "#BFBBBF") (inactive2-background      "#141414")
      (inactive3-foreground      "#DFDBDF") (inactive3-background      "#141414"))

  (airline-themes-set-deftheme 'airline-base16_synth_midnight_dark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_synth_midnight_dark)
;;; airline-base16_synth_midnight_dark-theme.el ends here
