
;;; Code:

(deftheme airline-supernova
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#585858") (normal-outer-background   "#e4e4e4")
      (normal-inner-foreground   "#e4e4e4") (normal-inner-background   "#242e33")
      (normal-center-foreground  "#eeeeee") (normal-center-background  "#1D2529")

      (insert-outer-foreground   "#585858") (insert-outer-background   "#e4e4e4")
      (insert-inner-foreground   "#e4e4e4") (insert-inner-background   "#242e33")
      (insert-center-foreground  "#eeeeee") (insert-center-background  "#1D2529")

      (visual-outer-foreground   "#1D2529") (visual-outer-background   "#e4e4e4")
      (visual-inner-foreground   "#e4e4e4") (visual-inner-background   "#242e33")
      (visual-center-foreground  "#e4e4e4") (visual-center-background  "#1D2529")

      (replace-outer-foreground  "#d7005f") (replace-outer-background  "#e4e4e4")
      (replace-inner-foreground  "#e4e4e4") (replace-inner-background  "#242e33")
      (replace-center-foreground "#eeeeee") (replace-center-background "#1D2529")

      (emacs-outer-foreground    "#585858") (emacs-outer-background    "#e4e4e4")
      (emacs-inner-foreground    "#e4e4e4") (emacs-inner-background    "#242e33")
      (emacs-center-foreground   "#eeeeee") (emacs-center-background   "#1D2529")

      (inactive1-foreground      "#585858") (inactive1-background      "#e4e4e4")
      (inactive2-foreground      "#585858") (inactive2-background      "#e4e4e4")
      (inactive3-foreground      "#e4e4e4") (inactive3-background      "#242e33"))

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
