
;;; Code:

(deftheme airline-light
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/light.vim")

(let ((normal-outer-foreground  "#ffffff") (normal-outer-background  "#005fff")
      (normal-inner-foreground  "#000087") (normal-inner-background  "#00dfff")
      (normal-center-foreground "#005f5f") (normal-center-background "#afffff")

      (insert-outer-foreground  "#ffffff") (insert-outer-background  "#00875f")
      (insert-inner-foreground  "#005f00") (insert-inner-background  "#00df87")
      (insert-center-foreground "#005f5f") (insert-center-background "#afff87")

      (visual-outer-foreground  "#ffffff") (visual-outer-background  "#ff5f00")
      (visual-inner-foreground  "#5f0000") (visual-inner-background  "#ffaf00")
      (visual-center-foreground "#df5f00") (visual-center-background "#ffff87")

      (replace-outer-foreground  "#005f00") (replace-outer-background  "#ff0000")
      (replace-inner-foreground  "#000087") (replace-inner-background  "#00dfff")
      (replace-center-foreground "#005f5f") (replace-center-background "#afffff")

      (emacs-outer-foreground  "#ffffff") (emacs-outer-background  "#875fff")
      (emacs-inner-foreground  "#5f00af") (emacs-inner-background  "#af87ff")
      (emacs-center-foreground "#5f00ff") (emacs-center-background "#d7afff")

      (inactive1-foreground "#8a8a8a") (inactive1-background "#d0d0d0")
      (inactive2-foreground "#a8a8a8") (inactive2-background "#e4e4e4")
      (inactive3-foreground "#a8a8a8") (inactive3-background "#eeeeee"))

  (airline-themes-set-deftheme 'airline-light)

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  `(bar ,insert-outer-background))
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))
)

(airline-themes-set-modeline)

(provide-theme 'airline-light)
;;; airline-light-theme.el ends here
