
;;; Code:

(deftheme airline-base16_atelier_sulphurpool
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#293256") (normal-outer-background   "#898ea4")
      (normal-inner-foreground   "#898ea4") (normal-inner-background   "#5e6687")
      (normal-center-foreground  "#898ea4") (normal-center-background  "#293256")

      (insert-outer-foreground   "#293256") (insert-outer-background   "#ac9739")
      (insert-inner-foreground   "#898ea4") (insert-inner-background   "#5e6687")
      (insert-center-foreground  "#898ea4") (insert-center-background  "#293256")

      (visual-outer-foreground   "#293256") (visual-outer-background   "#c76b29")
      (visual-inner-foreground   "#898ea4") (visual-inner-background   "#5e6687")
      (visual-center-foreground  "#898ea4") (visual-center-background  "#293256")

      (replace-outer-foreground  "#293256") (replace-outer-background  "#6679cc")
      (replace-inner-foreground  "#898ea4") (replace-inner-background  "#5e6687")
      (replace-center-foreground "#898ea4") (replace-center-background "#293256")

      (emacs-outer-foreground    "#293256") (emacs-outer-background    "#898ea4")
      (emacs-inner-foreground    "#898ea4") (emacs-inner-background    "#5e6687")
      (emacs-center-foreground   "#898ea4") (emacs-center-background   "#293256")

      (inactive1-foreground      "#293256") (inactive1-background      "#293256")
      (inactive2-foreground      "#898ea4") (inactive2-background      "#293256")
      (inactive3-foreground      "#979db4") (inactive3-background      "#293256"))

  (airline-themes-set-deftheme 'airline-base16_atelier_sulphurpool)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_atelier_sulphurpool)
;;; airline-base16_atelier_sulphurpool-theme.el ends here
