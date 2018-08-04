;;; airline-nord --- Summary
;;; Commentary: Airline theme for nord or doom-nord color palette.
;;; Code:

(deftheme airline-nord
  "source: https://github.com/hlissner/emacs-doom-theme")

(let ((normal-outer-foreground   "#373E4C") (normal-outer-background   "#80A0C2")
      (normal-inner-foreground   "#D8DEE9") (normal-inner-background   "#2C333F")
      (normal-center-foreground  "#D8DEE9") (normal-center-background  "#2C333F")

      (insert-outer-foreground   "#373E4C") (insert-outer-background   "#A2BF8A")
      (insert-inner-foreground   "#D8DEE9") (insert-inner-background   "#2C333F")
      (insert-center-foreground  "#D8DEE9") (insert-center-background  "#2C333F")

      (visual-outer-foreground   "#373E4C") (visual-outer-background   "#8EBCBB")
      (visual-inner-foreground   "#D8DEE9") (visual-inner-background   "#2C333F")
      (visual-center-foreground  "#D8DEE9") (visual-center-background  "#2C333F")

      (replace-outer-foreground  "#373E4C") (replace-outer-background  "#C16069")
      (replace-inner-foreground  "#D8DEE9") (replace-inner-background  "#2C333F")
      (replace-center-foreground "#D8DEE9") (replace-center-background "#2C333F")

      (emacs-outer-foreground    "#373E4C") (emacs-outer-background    "#B58DAE")
      (emacs-inner-foreground    "#D8DEE9") (emacs-inner-background    "#2C333F")
      (emacs-center-foreground   "#D8DEE9") (emacs-center-background   "#2C333F")

      (inactive1-foreground      "#9099AB") (inactive1-background      "#242832")
      (inactive2-foreground      "#9099AB") (inactive2-background      "#2E3440")
      (inactive3-foreground      "#9099AB") (inactive3-background      "#2E3440"))

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
