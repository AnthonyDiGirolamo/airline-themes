
;;; Code:

(deftheme airline-nord_minimal
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#81a1c1") (normal-outer-background   "#434c5e")
      (normal-inner-foreground   "#81a1c1") (normal-inner-background   "#434c5e")
      (normal-center-foreground  "#81a1c1") (normal-center-background  "#434c5e")

      (insert-outer-foreground   "#81a1c1") (insert-outer-background   "#434c5e")
      (insert-inner-foreground   "#81a1c1") (insert-inner-background   "#434c5e")
      (insert-center-foreground  "#81a1c1") (insert-center-background  "#434c5e")

      (visual-outer-foreground   "#81a1c1") (visual-outer-background   "#434c5e")
      (visual-inner-foreground   "#81a1c1") (visual-inner-background   "#434c5e")
      (visual-center-foreground  "#81a1c1") (visual-center-background  "#434c5e")

      (replace-outer-foreground  "#81a1c1") (replace-outer-background  "#434c5e")
      (replace-inner-foreground  "#81a1c1") (replace-inner-background  "#434c5e")
      (replace-center-foreground "#81a1c1") (replace-center-background "#434c5e")

      (emacs-outer-foreground    "#81a1c1") (emacs-outer-background    "#434c5e")
      (emacs-inner-foreground    "#81a1c1") (emacs-inner-background    "#434c5e")
      (emacs-center-foreground   "#81a1c1") (emacs-center-background   "#434c5e")

      (inactive1-foreground      "#81a1c1") (inactive1-background      "#434c5e")
      (inactive2-foreground      "#81a1c1") (inactive2-background      "#434c5e")
      (inactive3-foreground      "#81a1c1") (inactive3-background      "#434c5e"))

  (airline-themes-set-deftheme 'airline-nord_minimal)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-nord_minimal)
;;; airline-nord_minimal-theme.el ends here
