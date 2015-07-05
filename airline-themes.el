;;; airline-theme.el -- Port of the vim-airline themes https://github.com/bling/vim-airline

;; Author: Anthony DiGirolamo <anthony.digirolamo@gmail.com>
;; URL: http://github.com/AnthonyDiGirolamo/airline-themes.el
;; Version: 1.0
;; Keywords: evil, mode-line, powerline, airline, themes
;; Package-Requires: ((evil "1.0.8") (powerline "2.3"))

;;; Commentary:
;;
;; vim-airline themes for emacs powerline
;;

;;; Code:

(require 'evil)
(require 'powerline)

(defface airline-normal-outer  '((t (:foreground "#141413" :background "#aeee00" :weight normal))) "Airline Normal Outer Face"  :group 'powerline)
(defface airline-normal-inner  '((t (:foreground "#f4cf86" :background "#45413b" :weight normal))) "Airline Normal Inner Face"  :group 'powerline)
(defface airline-normal-center '((t (:foreground "#8cffba" :background "#242321" :weight normal))) "Airline Normal Center Face" :group 'powerline)
(defface airline-insert-outer  '((t (:foreground "#141413" :background "#0a9dff" :weight normal))) "Airline Insert Outer Face"  :group 'powerline)
(defface airline-insert-inner  '((t (:foreground "#f4cf86" :background "#005faf" :weight normal))) "Airline Insert Inner Face"  :group 'powerline)
(defface airline-insert-center '((t (:foreground "#0a9dff" :background "#242321" :weight normal))) "Airline Insert Center Face" :group 'powerline)
(defface airline-visual-outer  '((t (:foreground "#141413" :background "#ffa724" :weight normal))) "Airline Visual Outer Face"  :group 'powerline)
(defface airline-visual-inner  '((t (:foreground "#000000" :background "#fade3e" :weight normal))) "Airline Visual Inner Face"  :group 'powerline)
(defface airline-visual-center '((t (:foreground "#000000" :background "#b88853" :weight normal))) "Airline Visual Center Face" :group 'powerline)

(defun airline-theme-badwolf ()
  ""
  (interactive)
  ;; Badwolf
  ;; let s:N1 = [ "#141413" , "#aeee00" , 232 , 154 ] " blackestgravel & lime
  ;; let s:N2 = [ "#f4cf86" , "#45413b" , 222 , 238 ] " dirtyblonde    & deepgravel
  ;; let s:N3 = [ "#8cffba" , "#242321" , 121 , 235 ] " saltwatertaffy & darkgravel
  ;; let s:N4 = [ "#666462" , 241 ]                   " mediumgravel

  ;; let s:I1 = [ "#141413" , "#0a9dff" , 232 , 39  ] " blackestgravel & tardis
  ;; let s:I2 = [ "#f4cf86" , "#005fff" , 222 , 27  ] " dirtyblonde    & facebook
  ;; let s:I3 = [ "#0a9dff" , "#242321" , 39  , 235 ] " tardis         & darkgravel

  ;; let s:V1 = [ "#141413" , "#ffa724" , 232 , 214 ] " blackestgravel & orange
  ;; let s:V2 = [ "#000000" , "#fade3e" , 16  , 221 ] " coal           & dalespale
  ;; let s:V3 = [ "#000000" , "#b88853" , 16  , 137 ] " coal           & toffee
  ;; let s:V4 = [ "#c7915b" , 173 ]                   " coffee

  (let ((normal-outer-foreground  "#141413") (normal-outer-background  "#aeee00")
        (normal-inner-foreground  "#f4cf86") (normal-inner-background  "#45413b")
        (normal-center-foreground "#8cffba") (normal-center-background "#242321")

        (insert-outer-foreground  "#141413") (insert-outer-background  "#0a9dff")
        (insert-inner-foreground  "#f4cf86") (insert-inner-background  "#005faf")
        (insert-center-foreground "#0a9dff") (insert-center-background "#242321")

        (visual-outer-foreground  "#141413") (visual-outer-background  "#ffa724")
        (visual-inner-foreground  "#000000") (visual-inner-background  "#fade3e")
        (visual-center-foreground "#000000") (visual-center-background "#b88853")

        (inactive1-foreground "#45413b") (inactive1-background "#141413")
        (inactive2-foreground "#45413b") (inactive2-background "#242321"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)


(defun airline-theme-light ()
  ""
  (interactive)
  ;; Light
  ;; let s:N1 = [ "#ffffff" , "#005fff" , 255 , 27  ]
  ;; let s:N2 = [ "#000087" , "#00dfff" , 18  , 45  ]
  ;; let s:N3 = [ "#005fff" , "#afffff" , 27  , 159 ]

  ;; let s:I1 = [ "#ffffff" , "#00875f" , 255 , 29  ]
  ;; let s:I2 = [ "#005f00" , "#00df87" , 22  , 42  ]
  ;; let s:I3 = [ "#005f5f" , "#afff87" , 23  , 156 ]

  ;; let s:V1 = [ "#ffffff" , "#ff5f00" , 255 , 202 ]
  ;; let s:V2 = [ "#5f0000" , "#ffaf00" , 52  , 214 ]
  ;; let s:V3 = [ "#df5f00" , "#ffff87" , 166 , 228 ]

  ;; let s:IA1 = [ "#666666" , "#b2b2b2" , 242 , 249 , "" ]
  ;; let s:IA2 = [ "#8a8a8a" , "#d0d0d0" , 245 , 252 , "" ]
  ;; let s:IA3 = [ "#a8a8a8" , "#ffffff" , 248 , 255 , "" ]

  (let ((normal-outer-foreground  "#ffffff") (normal-outer-background  "#005fff")
        (normal-inner-foreground  "#000087") (normal-inner-background  "#00dfff")
        (normal-center-foreground "#005f5f") (normal-center-background "#afffff")

        (insert-outer-foreground  "#ffffff") (insert-outer-background  "#00875f")
        (insert-inner-foreground  "#005f00") (insert-inner-background  "#00df87")
        (insert-center-foreground "#005f5f") (insert-center-background "#afff87")

        (visual-outer-foreground  "#ffffff") (visual-outer-background  "#ff5f00")
        (visual-inner-foreground  "#5f0000") (visual-inner-background  "#ffaf00")
        (visual-center-foreground "#df5f00") (visual-center-background "#ffff87")

        (inactive1-foreground "#8a8a8a") (inactive1-background "#d0d0d0")
        (inactive2-foreground "#a8a8a8") (inactive2-background "#ffffff"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-dark ()
  ""
  (interactive)
  ;; Dark
  ;; let s:N1  = [ "#00005f" , "#dfff00" , 17  , 190 ]
  ;; let s:N2  = [ "#ffffff" , "#444444" , 255 , 238 ]
  ;; let s:N3  = [ "#9cffd3" , "#202020" , 85  , 234 ]

  ;; let s:I1  = [ "#00005f" , "#00dfff" , 17  , 45  ]
  ;; let s:I2  = [ "#ffffff" , "#005fff" , 255 , 27  ]
  ;; let s:I3  = [ "#ffffff" , "#000080" , 15  , 17  ]

  ;; let s:V1  = [ "#000000" , "#ffaf00" , 232 , 214 ]
  ;; let s:V2  = [ "#000000" , "#ff5f00" , 232 , 202 ]
  ;; let s:V3  = [ "#ffffff" , "#5f0000" , 15  , 52  ]

  ;; let s:IA1 = [ "#4e4e4e" , "#1c1c1c" , 239 , 234 , "" ]
  ;; let s:IA2 = [ "#4e4e4e" , "#262626" , 239 , 235 , "" ]
  ;; let s:IA3 = [ "#4e4e4e" , "#303030" , 239 , 236 , "" ]

  ;; (powerline-airline-set-modeline))
  (let ((normal-outer-foreground  "#00005f") (normal-outer-background  "#dfff00")
        (normal-inner-foreground  "#ffffff") (normal-inner-background  "#444444")
        (normal-center-foreground "#9cffd3") (normal-center-background "#202020")

        (insert-outer-foreground  "#00005f") (insert-outer-background  "#00dfff")
        (insert-inner-foreground  "#ffffff") (insert-inner-background  "#005fff")
        (insert-center-foreground "#ffffff") (insert-center-background "#000080")

        (visual-outer-foreground  "#000000") (visual-outer-background  "#ffaf00")
        (visual-inner-foreground  "#000000") (visual-inner-background  "#ff5f00")
        (visual-center-foreground "#ffffff") (visual-center-background "#5f0000")

        (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
        (inactive2-foreground "#4e4e4e") (inactive2-background "#262626"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-powerlineish ()
  ""
  (interactive)
  ;; powerlineish
  ;; let s:N1 = [ "#005f00" , "#afd700" , 22  , 148 ] " darkestgreen   & brightgreen
  ;; let s:N2 = [ "#9e9e9e" , "#303030" , 247 , 236 ] " gray8          & gray2
  ;; let s:N3 = [ "#ffffff" , "#121212" , 231 , 233 ] " white          & gray4

  ;; let s:I1 = [ "#005f5f" , "#ffffff" , 23  , 231 ] " darkestcyan    & white
  ;; let s:I2 = [ "#5fafd7" , "#0087af" , 74  , 31  ] " darkcyan       & darkblue
  ;; let s:I3 = [ "#87d7ff" , "#005f87" , 117 , 24  ] " mediumcyan     & darkestblue

  ;; let s:V1 = [ "#080808" , "#ffaf00" , 232 , 214 ] " gray3          & brightestorange
  ;; let s:N2 = [ "#9e9e9e" , "#303030" , 247 , 236 ] " gray8          & gray2
  ;; let s:N3 = [ "#ffffff" , "#121212" , 231 , 233 ] " white          & gray4

  ;; let s:RE = [ "#ffffff" , "#d70000" , 231 , 160 ] " white          & brightred
  ;; let s:N2 = [ "#9e9e9e" , "#303030" , 247 , 236 ] " gray8          & gray2
  ;; let s:N3 = [ "#ffffff" , "#121212" , 231 , 233 ] " white          & gray4

  (let ((normal-outer-foreground  "#005f00") (normal-outer-background  "#afd700")
        (normal-inner-foreground  "#9e9e9e") (normal-inner-background  "#303030")
        (normal-center-foreground "#ffffff") (normal-center-background "#121212")

        (insert-outer-foreground  "#005f5f") (insert-outer-background  "#ffffff")
        (insert-inner-foreground  "#5fafd7") (insert-inner-background  "#0087af")
        (insert-center-foreground "#87d7ff") (insert-center-background "#005f87")

        (visual-outer-foreground  "#080808") (visual-outer-background  "#ffaf00")
        (visual-inner-foreground  "#9e9e9e") (visual-inner-background  "#303030")
        (visual-center-foreground "#ffffff") (visual-center-background "#121212")

        (inactive1-foreground "#45413b") (inactive1-background "#141413")
        (inactive2-foreground "#45413b") (inactive2-background "#242321"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-wombat ()
  ""
  (interactive)
  ;; let s:N1 = [ "#141413" , "#CAE682" , 232 , 192 ] " mode
  ;; let s:N2 = [ "#CAE682" , "#32322F" , 192 , 236 ] " info
  ;; let s:N3 = [ "#CAE682" , "#242424" , 192 , 234 ] " statusline

  ;; let s:I1 = [ "#141413" , "#FDE76E" , 232 , 227 ]
  ;; let s:I2 = [ "#FDE76E" , "#32322F" , 227 , 236 ]
  ;; let s:I3 = [ "#FDE76E" , "#242424" , 227 , 234 ]

  ;; let s:V1 = [ "#141413" , "#B5D3F3" , 232 , 153 ]
  ;; let s:V2 = [ "#B5D3F3" , "#32322F" , 153 , 236 ]
  ;; let s:V3 = [ "#B5D3F3" , "#242424" , 153 , 234 ]

  ;; Modified modes
  ;; let s:N4 = [ "#86CD74" , 113 ]
  ;; let s:I4 = [ "#FADE3E" , 221 ]
  ;; let s:V4 = [ "#7CB0E6" , 111 ]
  ;; " Replace mode
  ;; let s:R1 = [ "#141413" , "#E5786D" , 232 , 173 ]
  ;; let s:R2 = [ "#E5786D" , "#32322F" , 173 , 236 ]
  ;; let s:R3 = [ "#E5786D" , "#242424" , 173 , 234 ]
  ;; let s:R4 = [ "#E55345" , 203 ]
  ;; " Paste mode
  ;; let s:PA = [ "#94E42C" , 47 ]
  ;; " Info modified
  ;; let s:IM = [ "#40403C" , 238 ]
  ;; " Inactive mode
  ;; let s:IA = [ "#767676" , s:N3[1] , 243 , s:N3[3] , "" ]

  (let ((normal-outer-foreground  "#141413") (normal-outer-background  "#CAE682")
        (normal-inner-foreground  "#CAE682") (normal-inner-background  "#32322F")
        (normal-center-foreground "#CAE682") (normal-center-background "#242424")

        (insert-outer-foreground  "#141413") (insert-outer-background  "#FDE76E")
        (insert-inner-foreground  "#FDE76E") (insert-inner-background  "#32322F")
        (insert-center-foreground "#FDE76E") (insert-center-background "#242424")

        (visual-outer-foreground  "#141413") (visual-outer-background  "#B5D3F3")
        (visual-inner-foreground  "#B5D3F3") (visual-inner-background  "#32322F")
        (visual-center-foreground "#B5D3F3") (visual-center-background "#242424")

        (inactive1-foreground "#45413b") (inactive1-background "#141413")
        (inactive2-foreground "#767676") (inactive2-background "#242424"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

;;;###autoload
(defun powerline-airline-set-modeline ()
  "Set the airline mode-line-format"
  (interactive)
  (setq-default mode-line-format
                '("%e"
                  (:eval
                   (let* ((active (powerline-selected-window-active))
                          (separator-left (intern (format "powerline-%s-%s"
                                                          (powerline-current-separator)
                                                          (car powerline-default-separator-dir))))
                          (separator-right (intern (format "powerline-%s-%s"
                                                           (powerline-current-separator)
                                                           (cdr powerline-default-separator-dir))))
                          (mode-line-face (if active 'mode-line 'mode-line-inactive))
                          (visual-block (and (evil-visual-state-p)
                                             (eq evil-visual-selection 'block)))
                          (visual-line (and (evil-visual-state-p)
                                            (eq evil-visual-selection 'line)))
                          (current-evil-state-string (upcase (concat (symbol-name evil-state)
                                                                     (cond (visual-block "-BLOCK")
                                                                           (visual-line "-LINE")))))

                          ;; Left Hand Side
                          (outer-face (cond ((eq evil-state (intern "normal"))
                                             (if (powerline-selected-window-active) 'airline-normal-outer 'powerline-inactive1))
                                            ((eq evil-state (intern "insert"))
                                             (if (powerline-selected-window-active) 'airline-insert-outer 'powerline-inactive1))
                                            ((eq evil-state (intern "visual"))
                                             (if (powerline-selected-window-active) 'airline-visual-outer 'powerline-inactive1))
                                            (t
                                             (if (powerline-selected-window-active) 'airline-normal-outer 'powerline-inactive1))))
                          (inner-face (cond ((eq evil-state (intern "normal"))
                                             (if (powerline-selected-window-active) 'airline-normal-inner 'powerline-inactive2))
                                            ((eq evil-state (intern "insert"))
                                             (if (powerline-selected-window-active) 'airline-insert-inner 'powerline-inactive2))
                                            ((eq evil-state (intern "visual"))
                                             (if (powerline-selected-window-active) 'airline-visual-inner 'powerline-inactive2))
                                            (t
                                             (if (powerline-selected-window-active) 'airline-normal-inner 'powerline-inactive2))))
                          (center-face (cond ((eq evil-state (intern "normal"))
                                              (if (powerline-selected-window-active) 'airline-normal-center 'powerline-inactive2))
                                             ((eq evil-state (intern "insert"))
                                              (if (powerline-selected-window-active) 'airline-insert-center 'powerline-inactive2))
                                             ((eq evil-state (intern "visual"))
                                              (if (powerline-selected-window-active) 'airline-visual-center 'powerline-inactive2))
                                             (t
                                              (if (powerline-selected-window-active) 'airline-normal-center 'powerline-inactive2))))

                          (lhs (list (when evil-mode
                                       (powerline-raw (concat " " current-evil-state-string " ") outer-face))
                                     (when evil-mode
                                       (funcall separator-left outer-face inner-face))

                                     ;; ;; Separator >
                                     ;; (powerline-raw (char-to-string #x2b81) inner-face 'l)

                                     ;; Git Branch
                                     (powerline-vc inner-face)

                                     ;; Modified string?
                                     (powerline-raw "%*" inner-face 'l)

                                     ;; Separator >
                                     (powerline-raw " " inner-face)
                                     (funcall separator-left inner-face center-face)

                                     ;; Directory
                                     (powerline-raw (shorten-directory default-directory 20)
                                                    center-face 'l)

                                     ;; Buffer ID
                                     ;; (powerline-buffer-id center-face)
                                     (powerline-raw "%b" center-face)

                                     ;; Current Function (which-function-mode)
                                     (when (and (boundp 'which-func-mode) which-func-mode)
                                       ;; (powerline-raw which-func-format 'l nil))
                                       (powerline-raw which-func-format center-face 'l))

                                     ;; ;; Separator >
                                     ;; (powerline-raw " " center-face)
                                     ;; (funcall separator-left mode-line face1)

                                     (when (boundp 'erc-modified-channels-object)
                                       (powerline-raw erc-modified-channels-object center-face 'l))

                                     ;; ;; Separator <
                                     ;; (powerline-raw " " face1)
                                     ;; (funcall separator-right face1 face2)
                                   ))

                          ;; Right Hand Side
                          (rhs (list (powerline-raw global-mode-string center-face 'r)

                                     ;; ;; Separator <
                                     ;; (powerline-raw (char-to-string #x2b83) center-face 'l)

                                     ;; Minor Modes
                                     (powerline-minor-modes center-face 'l)
                                     ;; (powerline-narrow center-face 'l)

                                     ;; Separator <
                                     (powerline-raw (char-to-string #x2b83) center-face 'l)

                                     ;; Major Mode
                                     (powerline-major-mode center-face 'l)
                                     (powerline-process center-face)

                                     ;; Separator <
                                     (powerline-raw " " center-face)
                                     (funcall separator-right center-face inner-face)

                                     ;; Buffer Size
                                     (when powerline-display-buffer-size
                                       (powerline-buffer-size inner-face 'l))

                                     ;; Mule Info
                                     (when powerline-display-mule-info
                                       (powerline-raw mode-line-mule-info inner-face 'l))

                                     (powerline-raw " " inner-face)

                                     ;; Separator <
                                     (funcall separator-right inner-face outer-face)

                                     ;; LN charachter?
                                     (unless window-system
                                       (powerline-raw (char-to-string #x2b61) outer-face 'l))
                                       ;; (powerline-raw (char-to-string #xe0a1) outer-face 'l))

                                     ;; Current Line
                                     (powerline-raw "%4l" outer-face 'l)
                                     (powerline-raw ":" outer-face 'l)
                                     ;; Current Column
                                     (powerline-raw "%3c" outer-face 'r)

                                     ;; % location in file
                                     (powerline-raw "%6p" outer-face 'r))))

                     ;; Combine Left and Right Hand Sides
                     (concat (powerline-render lhs)
                             (powerline-fill center-face (powerline-width rhs))
                             (powerline-render rhs))))))

  ;; (powerline-airline-set-helm-faces)
  (powerline-reset))

;;;###autoload
(defun powerline-airline-set-face-colors ()
  "Set appropriate face attributes"
  (interactive)
  (set-face-attribute 'airline-normal-outer  nil :foreground normal-outer-foreground  :background normal-outer-background)
  (set-face-attribute 'airline-normal-inner  nil :foreground normal-inner-foreground  :background normal-inner-background)
  (set-face-attribute 'airline-normal-center nil :foreground normal-center-foreground :background normal-center-background)

  (set-face-attribute 'airline-insert-outer  nil :foreground insert-outer-foreground  :background insert-outer-background)
  (set-face-attribute 'airline-insert-inner  nil :foreground insert-inner-foreground  :background insert-inner-background)
  (set-face-attribute 'airline-insert-center nil :foreground insert-center-foreground :background insert-center-background)

  (set-face-attribute 'airline-visual-outer  nil :foreground visual-outer-foreground  :background visual-outer-background)
  (set-face-attribute 'airline-visual-inner  nil :foreground visual-inner-foreground  :background visual-inner-background)
  (set-face-attribute 'airline-visual-center nil :foreground visual-center-foreground :background visual-center-background)

  (set-face-attribute 'powerline-inactive1   nil :foreground inactive1-foreground     :background inactive1-background)
  (set-face-attribute 'powerline-inactive2   nil :foreground inactive2-foreground     :background inactive2-background)

  (copy-face 'airline-normal-center 'mode-line)
  (copy-face 'airline-normal-outer  'mode-line-buffer-id)
)

;;;###autoload
(defun powerline-airline-set-cursor-colors ()
  "Set Cursor Colors - only seems to work in the gui"
  (interactive)
  (setq evil-normal-state-cursor normal-outer-background)
  (setq evil-insert-state-cursor insert-outer-background)
  (setq evil-visual-state-cursor visual-outer-background))

;;;###autoload
(defun powerline-airline-set-helm-faces ()
  "Set the airline helm colors"
  (interactive)
  (custom-set-faces
   `(helm-header           ((t ( :foreground ,insert-inner-foreground  :background ,insert-inner-background  :bold t))))
   `(helm-selection        ((t ( :foreground ,insert-outer-foreground  :background ,insert-outer-background  :bold t))))
   `(helm-source-header    ((t ( :foreground ,insert-center-foreground :background ,insert-center-background :bold t))))
   `(helm-candidate-number ((t ( :foreground ,normal-inner-foreground  :background ,normal-inner-background  :bold t))))
   `(helm-selection-line   ((t ( :foreground ,normal-center-foreground :background ,normal-center-background :bold t))))
  )
  ;; These get ignored at boot when the gui is running
  ;; (copy-face 'airline-insert-inner  'helm-header)
  ;; (copy-face 'airline-insert-outer  'helm-selection)
  ;; (copy-face 'airline-insert-center 'helm-source-header)
  ;; (copy-face 'airline-normal-inner  'helm-candidate-number)
  ;; (copy-face 'airline-insert-center 'helm-selection-line)

  ;; (custom-set-faces
  ;;  ;; Helm
  ;; `(helm-header           ((t ( :foreground ,insert-inner-foreground  :background ,insert-inner-background  :bold t))))
  ;; `(helm-selection        ((t ( :foreground ,insert-outer-foreground  :background ,insert-outer-background  :bold t))))
  ;; `(helm-source-header    ((t ( :foreground ,insert-center-foreground :background ,insert-center-background :bold t))))
  ;; `(helm-candidate-number ((t ( :foreground ,normal-inner-foreground  :background ,normal-inner-background  :bold t))))
  ;; `(helm-selection-line   ((t ( :foreground ,normal-center-foreground :background ,normal-center-background :bold t))))
  ;;  `(helm-match                ((t ( :foreground ,green-2 :background ,black-5 :bold t))))
  ;;  `(helm-bookmark-directory   ((t ( :foreground ,blue-1 :background ,black-5 :bold t))))
  ;;  `(helm-bookmark-file        ((t ( :foreground ,yellow-4 :background ,yellow-0))))
  ;;  `(helm-bookmark-info        ((t ( :foreground ,green-4 :background ,green-0))))
  ;;  `(helm-buffer-directory     ((t ( :foreground "#8cffba" :background "#242321" :bold t))))
  ;;  `(helm-buffer-process       ((t ( :foreground ,magenta-2))))
  ;;  `(helm-buffer-saved-out     ((t ( :foreground ,red-2 :background ,black-5))))
  ;;  `(helm-buffer-size          ((t ( :foreground ,orange-2))))
  ;;  `(helm-ff-directory         ((t ( :foreground ,blue-1 :background ,black-5 :bold t))))
  ;;  `(helm-ff-excutable         ((t ( :foreground ,green-1 :background ,black-5 :bold t))))
  ;;  `(helm-ff-file              ((t ( :foreground ,white-1 :background ,black-5))))
  ;;  `(helm-ff-invalid-symlink   ((t ( :foreground ,white-1 :background ,red-2))))
  ;;  `(helm-ff-prefix            ((t ( :foreground ,white-1 :background ,orange-2))))
  ;;  `(helm-grep-cmd-line        ((t ( :foreground ,green-4 :background ,green-00 :bold t))))
  ;;  `(helm-grep-file            ((t ( :foreground ,purple-1))))
  ;;  `(helm-grep-finish          ((t ( :foreground ,green-2))))
  ;;  `(helm-grep-lineno          ((t ( :foreground ,orange-2))))
  ;;  `(helm-grep-match           ((t ( :background ,black-4 :foreground ,yellow-1 :bold t))))
  ;;  `(helm-grep-running         ((t ( :foreground ,red-0 :background nil))))
  ;;  `(helm-lisp-show-completion ((t ( :foreground ,black-3 :background ,green-0))))
  ;;  )
)


(defun shorten-directory (dir max-length)
  "Show up to `max-length' characters of a directory name `dir'."
  (let ((path (reverse (split-string (abbreviate-file-name dir) "/")))
        (output ""))
    (when (and path (equal "" (car path)))
      (setq path (cdr path)))
    (while (and path (< (length output) (- max-length 4)))
      (setq output (concat (car path) "/" output))
      (setq path (cdr path)))
    (when path
      (setq output (concat "<" output)))
    output))

(provide 'airline-themes)
;;; airline-themes.el ends here
