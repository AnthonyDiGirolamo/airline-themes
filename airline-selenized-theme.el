
;;; Code:

(deftheme airline-selenized
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#184956") (normal-outer-background   "#75b938")
      (normal-inner-foreground   "#adbcbc") (normal-inner-background   "#255b69")
      (normal-center-foreground  "#72898f") (normal-center-background  "#184956")

      (insert-outer-foreground   "#184956") (insert-outer-background   "#4695f7")
      (insert-inner-foreground   "#adbcbc") (insert-inner-background   "#255b69")
      (insert-center-foreground  "#72898f") (insert-center-background  "#184956")

      (visual-outer-foreground   "#184956") (visual-outer-background   "#af88eb")
      (visual-inner-foreground   "#adbcbc") (visual-inner-background   "#255b69")
      (visual-center-foreground  "#72898f") (visual-center-background  "#184956")

      (replace-outer-foreground  "#184956") (replace-outer-background  "#fa5750")
      (replace-inner-foreground  "#adbcbc") (replace-inner-background  "#255b69")
      (replace-center-foreground "#72898f") (replace-center-background "#184956")

      (emacs-outer-foreground    "#184956") (emacs-outer-background    "#75b938")
      (emacs-inner-foreground    "#adbcbc") (emacs-inner-background    "#255b69")
      (emacs-center-foreground   "#72898f") (emacs-center-background   "#184956")

      (inactive1-foreground      "#72898f") (inactive1-background      "#255b69")
      (inactive2-foreground      "#72898f") (inactive2-background      "#255b69")
      (inactive3-foreground      "#72898f") (inactive3-background      "#255b69"))

  (airline-themes-set-deftheme 'airline-selenized)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-selenized)
;;; airline-selenized-theme.el ends here
