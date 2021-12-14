
;;; Code:

(deftheme airline-selenized
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#163945") (normal-outer-background   "#69ad21")
      (normal-inner-foreground   "#9faeae") (normal-inner-background   "#254a57")
      (normal-center-foreground  "#61777c") (normal-center-background  "#163945")

      (insert-outer-foreground   "#163945") (insert-outer-background   "#3a82f8")
      (insert-inner-foreground   "#9faeae") (insert-inner-background   "#254a57")
      (insert-center-foreground  "#61777c") (insert-center-background  "#163945")

      (visual-outer-foreground   "#163945") (visual-outer-background   "#9b72e9")
      (visual-inner-foreground   "#9faeae") (visual-inner-background   "#254a57")
      (visual-center-foreground  "#61777c") (visual-center-background  "#163945")

      (replace-outer-foreground  "#163945") (replace-outer-background  "#f13c3e")
      (replace-inner-foreground  "#9faeae") (replace-inner-background  "#254a57")
      (replace-center-foreground "#61777c") (replace-center-background "#163945")

      (emacs-outer-foreground    "#163945") (emacs-outer-background    "#69ad21")
      (emacs-inner-foreground    "#9faeae") (emacs-inner-background    "#254a57")
      (emacs-center-foreground   "#61777c") (emacs-center-background   "#163945")

      (inactive1-foreground      "#61777c") (inactive1-background      "#254a57")
      (inactive2-foreground      "#61777c") (inactive2-background      "#254a57")
      (inactive3-foreground      "#61777c") (inactive3-background      "#254a57"))

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
