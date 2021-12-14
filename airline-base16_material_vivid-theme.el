
;;; Code:

(deftheme airline-base16_material_vivid
  "source: https://github.com/vim-airline/vim-airline-themes")

(let ((normal-outer-foreground   "#27292c") (normal-outer-background   "#676c71")
      (normal-inner-foreground   "#676c71") (normal-inner-background   "#323639")
      (normal-center-foreground  "#676c71") (normal-center-background  "#27292c")

      (insert-outer-foreground   "#27292c") (insert-outer-background   "#00e676")
      (insert-inner-foreground   "#676c71") (insert-inner-background   "#323639")
      (insert-center-foreground  "#676c71") (insert-center-background  "#27292c")

      (visual-outer-foreground   "#27292c") (visual-outer-background   "#ff9800")
      (visual-inner-foreground   "#676c71") (visual-inner-background   "#323639")
      (visual-center-foreground  "#676c71") (visual-center-background  "#27292c")

      (replace-outer-foreground  "#27292c") (replace-outer-background  "#673ab7")
      (replace-inner-foreground  "#676c71") (replace-inner-background  "#323639")
      (replace-center-foreground "#676c71") (replace-center-background "#27292c")

      (emacs-outer-foreground    "#27292c") (emacs-outer-background    "#676c71")
      (emacs-inner-foreground    "#676c71") (emacs-inner-background    "#323639")
      (emacs-center-foreground   "#676c71") (emacs-center-background   "#27292c")

      (inactive1-foreground      "#27292c") (inactive1-background      "#27292c")
      (inactive2-foreground      "#676c71") (inactive2-background      "#27292c")
      (inactive3-foreground      "#80868b") (inactive3-background      "#27292c"))

  (airline-themes-set-deftheme 'airline-base16_material_vivid)

  (when airline-cursor-colors
    (setq evil-emacs-state-cursor   emacs-outer-background
          evil-normal-state-cursor  normal-outer-background
          evil-insert-state-cursor  `(bar ,insert-outer-background)
          evil-replace-state-cursor replace-outer-background
          evil-visual-state-cursor  visual-outer-background))
)

(airline-themes-set-modeline)

(provide-theme 'airline-base16_material_vivid)
;;; airline-base16_material_vivid-theme.el ends here
