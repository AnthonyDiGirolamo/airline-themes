
;;; Code:

(deftheme airline-solarized-gui
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/solarized.vim")

(let ((normal-outer-foreground  (face-background 'highlight)) (normal-outer-background  (face-background 'region))
      (normal-inner-foreground  (face-background 'default))   (normal-inner-background  (face-foreground 'fringe))
      (normal-center-foreground (face-foreground 'fringe))    (normal-center-background (face-background 'highlight))

      (insert-outer-foreground  (face-background 'highlight)) (insert-outer-background  (face-foreground 'link))
      (insert-inner-foreground  (face-background 'default))   (insert-inner-background  (face-foreground 'fringe))
      (insert-center-foreground (face-foreground 'fringe))    (insert-center-background (face-background 'highlight))

      (visual-outer-foreground  (face-background 'highlight)) (visual-outer-background  (face-background 'isearch))
      (visual-inner-foreground  (face-background 'default))   (visual-inner-background  (face-foreground 'fringe))
      (visual-center-foreground (face-foreground 'fringe))    (visual-center-background (face-background 'highlight))

      (replace-outer-foreground (face-background 'highlight)) (replace-outer-background (face-foreground 'error))
      (emacs-outer-foreground   (face-background 'highlight)) (emacs-outer-background   (face-foreground 'escape-glyph))

      (inactive1-foreground (face-foreground 'fringe)) (inactive1-background (face-foreground 'highlight))
      (inactive2-foreground (face-foreground 'fringe)) (inactive2-background (face-foreground 'highlight)))

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  insert-outer-background)
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))

  (airline-themes-set-deftheme 'airline-solarized-gui)
)

(airline-themes-set-modeline)

(provide-theme 'airline-solarized-gui)
;;; airline-solarized-gui-theme.el ends here
