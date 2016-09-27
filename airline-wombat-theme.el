
;;; Code:

(deftheme airline-wombat
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/wombat.vim")

(let ((normal-outer-foreground  "#141413") (normal-outer-background  "#CAE682")
      (normal-inner-foreground  "#CAE682") (normal-inner-background  "#32322F")
      (normal-center-foreground "#CAE682") (normal-center-background "#242424")

      (insert-outer-foreground  "#141413") (insert-outer-background  "#FDE76E")
      (insert-inner-foreground  "#FDE76E") (insert-inner-background  "#32322F")
      (insert-center-foreground "#FDE76E") (insert-center-background "#242424")

      (visual-outer-foreground  "#141413") (visual-outer-background  "#B5D3F3")
      (visual-inner-foreground  "#B5D3F3") (visual-inner-background  "#32322F")
      (visual-center-foreground "#B5D3F3") (visual-center-background "#242424")

      (replace-outer-foreground  "#141413") (replace-outer-background  "#E5786D")
      (replace-inner-foreground  "#CAE682") (replace-inner-background  "#32322F")
      (replace-center-foreground "#CAE682") (replace-center-background "#242424")

      (emacs-outer-foreground  "#d7d7ff") (emacs-outer-background  "#5f00af")
      (emacs-inner-foreground  "#CAE682") (emacs-inner-background  "#32322F")
      (emacs-center-foreground "#CAE682") (emacs-center-background "#242424")

      (inactive1-foreground "#45413b") (inactive1-background "#141413")
      (inactive2-foreground "#767676") (inactive2-background "#242424")
      (inactive3-foreground "#767676") (inactive3-background "#242424"))

  (airline-themes-set-deftheme 'airline-wombat)

  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  `(bar ,insert-outer-background))
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background)))
)

(airline-themes-set-modeline)

(provide-theme 'airline-wombat)
;;; airline-wombat-theme.el ends here
