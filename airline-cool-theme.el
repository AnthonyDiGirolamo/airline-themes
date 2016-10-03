;;; airline-cool --- Summary
;;; Commentary:
;;; Code:

(deftheme airline-cool
  "source: https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/cool.vim")

(let ((normal-outer-foreground  "#585858") (normal-outer-background  "#E4E4E4")
      (normal-inner-foreground  "#E4E4E4") (normal-inner-background  "#0087AF")
      (normal-center-foreground "#EEEEEE") (normal-center-background "#005F87")

      (insert-outer-foreground  "#585858") (insert-outer-background  "#E4E4E4")
      (insert-inner-foreground  "#E4E4E4") (insert-inner-background  "#47AF00")
      (insert-center-foreground "#EEEEEE") (insert-center-background "#2E8700")

      (visual-outer-foreground  "#585858") (visual-outer-background  "#E4E4E4")
      (visual-inner-foreground  "#E4E4E4") (visual-inner-background  "#AF2800")
      (visual-center-foreground "#EEEEEE") (visual-center-background "#872800")

      (replace-outer-foreground "#585858") (replace-outer-background "#E4E4E4")
      (replace-inner-foreground "#E4E4E4") (replace-inner-background "#AF5F00")
      (replace-center-foreground "#EEEEEE") (replace-center-background "#875300")

      ;; " CTRLP
      ;; \ [ '#E4E4E4' , '#00AFA2' , 188 , 37  , ''     ],
      ;; \ [ '#EEEEEE' , '#008787' , 231  , 30 , ''     ],
      ;; \ [ '#585858' , '#E4E4E4' , 59 , 188  , ''     ])

      (emacs-outer-foreground   "#585858") (emacs-outer-background   "#E4E4E4")
      (emacs-inner-foreground   "#E4E4E4") (emacs-inner-background   "#8968cd")
      (emacs-center-foreground  "#EEEEEE") (emacs-center-background  "#5d478b")

      (inactive1-foreground "#585858") (inactive1-background "#E4E4E4")
      (inactive2-foreground "#E4E4E4") (inactive2-background "#466D79")
      (inactive3-foreground "#EEEEEE") (inactive3-background "#324E59"))

  (airline-themes-set-deftheme 'airline-cool)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-center-background
          evil-normal-state-cursor  normal-center-background
          evil-insert-state-cursor  `(bar ,insert-center-background)
          evil-replace-state-cursor replace-center-background
          evil-visual-state-cursor  visual-center-background))
  )

(airline-themes-set-modeline)

(provide-theme 'airline-cool)
;;; airline-cool-theme.el ends here
