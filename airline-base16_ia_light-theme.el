
;;; Code:

(deftheme airline-base16_ia_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#dedede") (normal-outer-background   "#767676")
      (normal-inner-foreground   "#767676") (normal-inner-background   "#bde5f2")
      (normal-center-foreground  "#767676") (normal-center-background  "#dedede")

      (insert-outer-foreground   "#dedede") (insert-outer-background   "#38781c")
      (insert-inner-foreground   "#767676") (insert-inner-background   "#bde5f2")
      (insert-center-foreground  "#767676") (insert-center-background  "#dedede")

      (visual-outer-foreground   "#dedede") (visual-outer-background   "#c43e18")
      (visual-inner-foreground   "#767676") (visual-inner-background   "#bde5f2")
      (visual-center-foreground  "#767676") (visual-center-background  "#dedede")

      (replace-outer-foreground  "#dedede") (replace-outer-background  "#a94598")
      (replace-inner-foreground  "#767676") (replace-inner-background  "#bde5f2")
      (replace-center-foreground "#767676") (replace-center-background "#dedede")

      (emacs-outer-foreground    "#dedede") (emacs-outer-background    "#767676")
      (emacs-inner-foreground    "#767676") (emacs-inner-background    "#bde5f2")
      (emacs-center-foreground   "#767676") (emacs-center-background   "#dedede")

      (inactive1-foreground      "#dedede") (inactive1-background      "#dedede")
      (inactive2-foreground      "#767676") (inactive2-background      "#dedede")
      (inactive3-foreground      "#181818") (inactive3-background      "#dedede"))

  (airline-themes-set-deftheme 'airline-base16_ia_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_ia_light)
;;; airline-base16_ia_light-theme.el ends here
