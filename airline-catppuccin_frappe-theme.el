
;;; Code:

(deftheme airline-catppuccin_frappe
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#292C3C") (normal-outer-background   "#8CAAEE")
      (normal-inner-foreground   "#8CAAEE") (normal-inner-background   "#51576D")
      (normal-center-foreground  "#C6D0F5") (normal-center-background  "#303446")

      (insert-outer-foreground   "#292C3C") (insert-outer-background   "#81C8BE")
      (insert-inner-foreground   "#81C8BE") (insert-inner-background   "#292C3C")
      (insert-center-foreground  "#C6D0F5") (insert-center-background  "#303446")

      (visual-outer-foreground   "#292C3C") (visual-outer-background   "#CA9EE6")
      (visual-inner-foreground   "#CA9EE6") (visual-inner-background   "#292C3C")
      (visual-center-foreground  "#C6D0F5") (visual-center-background  "#303446")

      (replace-outer-foreground  "#292C3C") (replace-outer-background  "#E78284")
      (replace-inner-foreground  "#8CAAEE") (replace-inner-background  "#51576D")
      (replace-center-foreground "#C6D0F5") (replace-center-background "#303446")

      (emacs-outer-foreground    "#292C3C") (emacs-outer-background    "#8CAAEE")
      (emacs-inner-foreground    "#8CAAEE") (emacs-inner-background    "#51576D")
      (emacs-center-foreground   "#C6D0F5") (emacs-center-background   "#303446")

      (inactive1-foreground      "#8CAAEE") (inactive1-background      "#303446")
      (inactive2-foreground      "#8CAAEE") (inactive2-background      "#303446")
      (inactive3-foreground      "#8CAAEE") (inactive3-background      "#303446"))

  (airline-themes-set-deftheme 'airline-catppuccin_frappe)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-catppuccin_frappe)
;;; airline-catppuccin_frappe-theme.el ends here
