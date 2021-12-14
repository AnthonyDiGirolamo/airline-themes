
;;; Code:

(deftheme airline-base16_materia
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#2C393F") (normal-outer-background   "#C9CCD3")
      (normal-inner-foreground   "#C9CCD3") (normal-inner-background   "#37474F")
      (normal-center-foreground  "#C9CCD3") (normal-center-background  "#2C393F")

      (insert-outer-foreground   "#2C393F") (insert-outer-background   "#8BD649")
      (insert-inner-foreground   "#C9CCD3") (insert-inner-background   "#37474F")
      (insert-center-foreground  "#C9CCD3") (insert-center-background  "#2C393F")

      (visual-outer-foreground   "#2C393F") (visual-outer-background   "#EA9560")
      (visual-inner-foreground   "#C9CCD3") (visual-inner-background   "#37474F")
      (visual-center-foreground  "#C9CCD3") (visual-center-background  "#2C393F")

      (replace-outer-foreground  "#2C393F") (replace-outer-background  "#82AAFF")
      (replace-inner-foreground  "#C9CCD3") (replace-inner-background  "#37474F")
      (replace-center-foreground "#C9CCD3") (replace-center-background "#2C393F")

      (emacs-outer-foreground    "#2C393F") (emacs-outer-background    "#C9CCD3")
      (emacs-inner-foreground    "#C9CCD3") (emacs-inner-background    "#37474F")
      (emacs-center-foreground   "#C9CCD3") (emacs-center-background   "#2C393F")

      (inactive1-foreground      "#2C393F") (inactive1-background      "#2C393F")
      (inactive2-foreground      "#C9CCD3") (inactive2-background      "#2C393F")
      (inactive3-foreground      "#CDD3DE") (inactive3-background      "#2C393F"))

  (airline-themes-set-deftheme 'airline-base16_materia)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_materia)
;;; airline-base16_materia-theme.el ends here
