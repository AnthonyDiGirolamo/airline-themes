
;;; Code:

(deftheme airline-base16_ia_dark
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#222222") (normal-outer-background   "#b8b8b8")
      (normal-inner-foreground   "#b8b8b8") (normal-inner-background   "#1d414d")
      (normal-center-foreground  "#b8b8b8") (normal-center-background  "#222222")

      (insert-outer-foreground   "#222222") (insert-outer-background   "#83a471")
      (insert-inner-foreground   "#b8b8b8") (insert-inner-background   "#1d414d")
      (insert-center-foreground  "#b8b8b8") (insert-center-background  "#222222")

      (visual-outer-foreground   "#222222") (visual-outer-background   "#d86868")
      (visual-inner-foreground   "#b8b8b8") (visual-inner-background   "#1d414d")
      (visual-center-foreground  "#b8b8b8") (visual-center-background  "#222222")

      (replace-outer-foreground  "#222222") (replace-outer-background  "#b98eb2")
      (replace-inner-foreground  "#b8b8b8") (replace-inner-background  "#1d414d")
      (replace-center-foreground "#b8b8b8") (replace-center-background "#222222")

      (emacs-outer-foreground    "#222222") (emacs-outer-background    "#b8b8b8")
      (emacs-inner-foreground    "#b8b8b8") (emacs-inner-background    "#1d414d")
      (emacs-center-foreground   "#b8b8b8") (emacs-center-background   "#222222")

      (inactive1-foreground      "#222222") (inactive1-background      "#222222")
      (inactive2-foreground      "#b8b8b8") (inactive2-background      "#222222")
      (inactive3-foreground      "#cccccc") (inactive3-background      "#222222"))

  (airline-themes-set-deftheme 'airline-base16_ia_dark)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_ia_dark)
;;; airline-base16_ia_dark-theme.el ends here
