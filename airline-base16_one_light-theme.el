
;;; Code:

(deftheme airline-base16_one_light
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#f0f0f1") (normal-outer-background   "#696c77")
      (normal-inner-foreground   "#696c77") (normal-inner-background   "#e5e5e6")
      (normal-center-foreground  "#696c77") (normal-center-background  "#f0f0f1")

      (insert-outer-foreground   "#f0f0f1") (insert-outer-background   "#50a14f")
      (insert-inner-foreground   "#696c77") (insert-inner-background   "#e5e5e6")
      (insert-center-foreground  "#696c77") (insert-center-background  "#f0f0f1")

      (visual-outer-foreground   "#f0f0f1") (visual-outer-background   "#d75f00")
      (visual-inner-foreground   "#696c77") (visual-inner-background   "#e5e5e6")
      (visual-center-foreground  "#696c77") (visual-center-background  "#f0f0f1")

      (replace-outer-foreground  "#f0f0f1") (replace-outer-background  "#a626a4")
      (replace-inner-foreground  "#696c77") (replace-inner-background  "#e5e5e6")
      (replace-center-foreground "#696c77") (replace-center-background "#f0f0f1")

      (emacs-outer-foreground    "#f0f0f1") (emacs-outer-background    "#696c77")
      (emacs-inner-foreground    "#696c77") (emacs-inner-background    "#e5e5e6")
      (emacs-center-foreground   "#696c77") (emacs-center-background   "#f0f0f1")

      (inactive1-foreground      "#f0f0f1") (inactive1-background      "#f0f0f1")
      (inactive2-foreground      "#696c77") (inactive2-background      "#f0f0f1")
      (inactive3-foreground      "#383a42") (inactive3-background      "#f0f0f1"))

  (airline-themes-set-deftheme 'airline-base16_one_light)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_one_light)
;;; airline-base16_one_light-theme.el ends here
