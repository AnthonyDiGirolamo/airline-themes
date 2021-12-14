
;;; Code:

(deftheme airline-base16_atelier_sulphurpool_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#dfe2f1") (normal-outer-background   "#6b7394")
      (normal-inner-foreground   "#6b7394") (normal-inner-background   "#979db4")
      (normal-center-foreground  "#6b7394") (normal-center-background  "#dfe2f1")

      (insert-outer-foreground   "#dfe2f1") (insert-outer-background   "#ac9739")
      (insert-inner-foreground   "#6b7394") (insert-inner-background   "#979db4")
      (insert-center-foreground  "#6b7394") (insert-center-background  "#dfe2f1")

      (visual-outer-foreground   "#dfe2f1") (visual-outer-background   "#c76b29")
      (visual-inner-foreground   "#6b7394") (visual-inner-background   "#979db4")
      (visual-center-foreground  "#6b7394") (visual-center-background  "#dfe2f1")

      (replace-outer-foreground  "#dfe2f1") (replace-outer-background  "#6679cc")
      (replace-inner-foreground  "#6b7394") (replace-inner-background  "#979db4")
      (replace-center-foreground "#6b7394") (replace-center-background "#dfe2f1")

      (emacs-outer-foreground    "#dfe2f1") (emacs-outer-background    "#6b7394")
      (emacs-inner-foreground    "#6b7394") (emacs-inner-background    "#979db4")
      (emacs-center-foreground   "#6b7394") (emacs-center-background   "#dfe2f1")

      (inactive1-foreground      "#dfe2f1") (inactive1-background      "#dfe2f1")
      (inactive2-foreground      "#6b7394") (inactive2-background      "#dfe2f1")
      (inactive3-foreground      "#5e6687") (inactive3-background      "#dfe2f1"))

  (airline-themes-set-deftheme 'airline-base16_atelier_sulphurpool_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_sulphurpool_light)
;;; airline-base16_atelier_sulphurpool_light-theme.el ends here
