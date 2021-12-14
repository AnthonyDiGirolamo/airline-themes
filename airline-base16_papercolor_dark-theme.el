
;;; Code:

(deftheme airline-base16_papercolor_dark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#af005f") (normal-outer-background   "#5fafd7")
      (normal-inner-foreground   "#5fafd7") (normal-inner-background   "#5faf00")
      (normal-center-foreground  "#5fafd7") (normal-center-background  "#af005f")

      (insert-outer-foreground   "#af005f") (insert-outer-background   "#af87d7")
      (insert-inner-foreground   "#5fafd7") (insert-inner-background   "#5faf00")
      (insert-center-foreground  "#5fafd7") (insert-center-background  "#af005f")

      (visual-outer-foreground   "#af005f") (visual-outer-background   "#5faf5f")
      (visual-inner-foreground   "#5fafd7") (visual-inner-background   "#5faf00")
      (visual-center-foreground  "#5fafd7") (visual-center-background  "#af005f")

      (replace-outer-foreground  "#af005f") (replace-outer-background  "#00afaf")
      (replace-inner-foreground  "#5fafd7") (replace-inner-background  "#5faf00")
      (replace-center-foreground "#5fafd7") (replace-center-background "#af005f")

      (emacs-outer-foreground    "#af005f") (emacs-outer-background    "#5fafd7")
      (emacs-inner-foreground    "#5fafd7") (emacs-inner-background    "#5faf00")
      (emacs-center-foreground   "#5fafd7") (emacs-center-background   "#af005f")

      (inactive1-foreground      "#af005f") (inactive1-background      "#af005f")
      (inactive2-foreground      "#5fafd7") (inactive2-background      "#af005f")
      (inactive3-foreground      "#808080") (inactive3-background      "#af005f"))

  (airline-themes-set-deftheme 'airline-base16_papercolor_dark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_papercolor_dark)
;;; airline-base16_papercolor_dark-theme.el ends here
