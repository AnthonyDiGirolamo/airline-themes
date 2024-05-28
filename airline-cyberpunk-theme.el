
;;; Code:

(deftheme airline-cyberpunk
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#0197DD") (normal-outer-background   "#FFD302")
      (normal-inner-foreground   "#666666") (normal-inner-background   "#414C3B")
      (normal-center-foreground  "#0197DD") (normal-center-background  "#FFD302")

      (insert-outer-foreground   "#FFD302") (insert-outer-background   "#0197DD")
      (insert-inner-foreground   "#666666") (insert-inner-background   "#414C3B")
      (insert-center-foreground  "#FFD302") (insert-center-background  "#0197DD")

      (visual-outer-foreground   "#191919") (visual-outer-background   "#408000")
      (visual-inner-foreground   "#666666") (visual-inner-background   "#414C3B")
      (visual-center-foreground  "#191919") (visual-center-background  "#408000")

      (replace-outer-foreground  "#191919") (replace-outer-background  "#FF0000")
      (replace-inner-foreground  "#666666") (replace-inner-background  "#414C3B")
      (replace-center-foreground "#191919") (replace-center-background "#FF0000")

      (emacs-outer-foreground    "#0197DD") (emacs-outer-background    "#FFD302")
      (emacs-inner-foreground    "#666666") (emacs-inner-background    "#414C3B")
      (emacs-center-foreground   "#0197DD") (emacs-center-background   "#FFD302")

      (inactive1-foreground      "#191919") (inactive1-background      "#414C3B")
      (inactive2-foreground      "#666666") (inactive2-background      "#414C3B")
      (inactive3-foreground      "#414C3B") (inactive3-background      "#191919"))

  (airline-themes-set-deftheme 'airline-cyberpunk)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-cyberpunk)
;;; airline-cyberpunk-theme.el ends here
