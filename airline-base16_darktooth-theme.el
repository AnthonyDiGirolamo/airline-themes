
;;; Code:

(deftheme airline-base16_darktooth
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#32302F") (normal-outer-background   "#928374")
      (normal-inner-foreground   "#928374") (normal-inner-background   "#504945")
      (normal-center-foreground  "#928374") (normal-center-background  "#32302F")

      (insert-outer-foreground   "#32302F") (insert-outer-background   "#95C085")
      (insert-inner-foreground   "#928374") (insert-inner-background   "#504945")
      (insert-center-foreground  "#928374") (insert-center-background  "#32302F")

      (visual-outer-foreground   "#32302F") (visual-outer-background   "#FE8625")
      (visual-inner-foreground   "#928374") (visual-inner-background   "#504945")
      (visual-center-foreground  "#928374") (visual-center-background  "#32302F")

      (replace-outer-foreground  "#32302F") (replace-outer-background  "#8F4673")
      (replace-inner-foreground  "#928374") (replace-inner-background  "#504945")
      (replace-center-foreground "#928374") (replace-center-background "#32302F")

      (emacs-outer-foreground    "#32302F") (emacs-outer-background    "#928374")
      (emacs-inner-foreground    "#928374") (emacs-inner-background    "#504945")
      (emacs-center-foreground   "#928374") (emacs-center-background   "#32302F")

      (inactive1-foreground      "#32302F") (inactive1-background      "#32302F")
      (inactive2-foreground      "#928374") (inactive2-background      "#32302F")
      (inactive3-foreground      "#A89984") (inactive3-background      "#32302F"))

  (airline-themes-set-deftheme 'airline-base16_darktooth)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_darktooth)
;;; airline-base16_darktooth-theme.el ends here
