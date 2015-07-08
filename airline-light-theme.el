
;;; Code:

(deftheme airline-light
  "source: https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/light.vim")


;;;###autoload
(defun create-airline-theme-light ()
  ""
  (let ((normal-outer-foreground  "#ffffff") (normal-outer-background  "#005fff")
        (normal-inner-foreground  "#000087") (normal-inner-background  "#00dfff")
        (normal-center-foreground "#005f5f") (normal-center-background "#afffff")

        (insert-outer-foreground  "#ffffff") (insert-outer-background  "#00875f")
        (insert-inner-foreground  "#005f00") (insert-inner-background  "#00df87")
        (insert-center-foreground "#005f5f") (insert-center-background "#afff87")

        (visual-outer-foreground  "#ffffff") (visual-outer-background  "#ff5f00")
        (visual-inner-foreground  "#5f0000") (visual-inner-background  "#ffaf00")
        (visual-center-foreground "#df5f00") (visual-center-background "#ffff87")

        (replace-outer-foreground "#005f00") (replace-outer-background "#ff0000")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

        (inactive1-foreground "#8a8a8a") (inactive1-background "#d0d0d0")
        (inactive2-foreground "#a8a8a8") (inactive2-background "#ffffff"))

    (airline-themes-set-deftheme 'airline-light-theme)
  )
)

;;;###autoload
(defun airline-theme-light ()
  (interactive)
  (load-theme 'airline-light)
  (airline-themes-set-cursor-colors)
  (airline-themes-set-modeline)
)

(provide-theme 'airline-light)
;;; airline-light-theme.el ends here
