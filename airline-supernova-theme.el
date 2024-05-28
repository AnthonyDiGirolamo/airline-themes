
;;; Code:

(deftheme airline-supernova
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#262626") (normal-outer-background   "#5FAFAF")
      (normal-inner-foreground   "#D0D0D0") (normal-inner-background   "#585858")
      (normal-center-foreground  "#A8A8A8") (normal-center-background  "#262626")

      (insert-outer-foreground   "#E4E4E4") (insert-outer-background   "#5F0087")
      (insert-inner-foreground   "#D0D0D0") (insert-inner-background   "#585858")
      (insert-center-foreground  "#A8A8A8") (insert-center-background  "#262626")

      (visual-outer-foreground   "#262626") (visual-outer-background   "#0087D7")
      (visual-inner-foreground   "#D0D0D0") (visual-inner-background   "#585858")
      (visual-center-foreground  "#A8A8A8") (visual-center-background  "#262626")

      (replace-outer-foreground  "#E4E4E4") (replace-outer-background  "#87005F")
      (replace-inner-foreground  "#D0D0D0") (replace-inner-background  "#585858")
      (replace-center-foreground "#A8A8A8") (replace-center-background "#262626")

      (emacs-outer-foreground    "#262626") (emacs-outer-background    "#5FAFAF")
      (emacs-inner-foreground    "#D0D0D0") (emacs-inner-background    "#585858")
      (emacs-center-foreground   "#A8A8A8") (emacs-center-background   "#262626")

      (inactive1-foreground      "#D0D0D0") (inactive1-background      "#444444")
      (inactive2-foreground      "#D0D0D0") (inactive2-background      "#444444")
      (inactive3-foreground      "#D0D0D0") (inactive3-background      "#585858"))

  (airline-themes-set-deftheme 'airline-supernova)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-supernova)
;;; airline-supernova-theme.el ends here
