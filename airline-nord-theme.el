;;; airline-nord --- Summary
;;; Commentary: Airline theme for nord or doom-nord color palette.
;;; Code:

(deftheme airline-nord
  "source: https://github.com/hlissner/emacs-doom-theme")

(let ((normal-outer-foreground   "#373E4C") (normal-outer-background   "#80A0C2")
      (normal-inner-foreground   "#88C0D0") (normal-inner-background   "#4C566A")
      (normal-center-foreground  "#88C0D0") (normal-center-background  "#4C566A")

      (insert-outer-foreground   "#373E4C") (insert-outer-background   "#A2BF8A")
      (insert-inner-foreground   "#88C0D0") (insert-inner-background   "#4C566A")
      (insert-center-foreground  "#88C0D0") (insert-center-background  "#4C566A")

      (visual-outer-foreground   "#373E4C") (visual-outer-background   "#8EBCBB")
      (visual-inner-foreground   "#88C0D0") (visual-inner-background   "#4C566A")
      (visual-center-foreground  "#88C0D0") (visual-center-background  "#4C566A")

      (replace-outer-foreground  "#373E4C") (replace-outer-background  "#C16069")
      (replace-inner-foreground  "#88C0D0") (replace-inner-background  "#4C566A")
      (replace-center-foreground "#88C0D0") (replace-center-background "#4C566A")

      (emacs-outer-foreground    "#373E4C") (emacs-outer-background    "#B58DAE")
      (emacs-inner-foreground    "#88C0D0") (emacs-inner-background    "#4C566A")
      (emacs-center-foreground   "#88C0D0") (emacs-center-background   "#4C566A")

      (inactive1-foreground      "#9099AB") (inactive1-background      "#4C566A")
      (inactive2-foreground      "#9099AB") (inactive2-background      "#4C566A")
      (inactive3-foreground      "#9099AB") (inactive3-background      "#4C566A"))

  (airline-themes-set-deftheme 'airline-nord)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
  )

(airline-themes-set-modeline)

(provide-theme 'airline-nord)
;;; airline-nord-theme.el ends here
