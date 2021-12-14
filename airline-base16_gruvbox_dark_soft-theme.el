
;;; Code:

(deftheme airline-base16_gruvbox_dark_soft
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#3c3836") (normal-outer-background   "#bdae93")
      (normal-inner-foreground   "#bdae93") (normal-inner-background   "#504945")
      (normal-center-foreground  "#bdae93") (normal-center-background  "#3c3836")

      (insert-outer-foreground   "#3c3836") (insert-outer-background   "#b8bb26")
      (insert-inner-foreground   "#bdae93") (insert-inner-background   "#504945")
      (insert-center-foreground  "#bdae93") (insert-center-background  "#3c3836")

      (visual-outer-foreground   "#3c3836") (visual-outer-background   "#fe8019")
      (visual-inner-foreground   "#bdae93") (visual-inner-background   "#504945")
      (visual-center-foreground  "#bdae93") (visual-center-background  "#3c3836")

      (replace-outer-foreground  "#3c3836") (replace-outer-background  "#d3869b")
      (replace-inner-foreground  "#bdae93") (replace-inner-background  "#504945")
      (replace-center-foreground "#bdae93") (replace-center-background "#3c3836")

      (emacs-outer-foreground    "#3c3836") (emacs-outer-background    "#bdae93")
      (emacs-inner-foreground    "#bdae93") (emacs-inner-background    "#504945")
      (emacs-center-foreground   "#bdae93") (emacs-center-background   "#3c3836")

      (inactive1-foreground      "#3c3836") (inactive1-background      "#3c3836")
      (inactive2-foreground      "#bdae93") (inactive2-background      "#3c3836")
      (inactive3-foreground      "#d5c4a1") (inactive3-background      "#3c3836"))

  (airline-themes-set-deftheme 'airline-base16_gruvbox_dark_soft)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_gruvbox_dark_soft)
;;; airline-base16_gruvbox_dark_soft-theme.el ends here
