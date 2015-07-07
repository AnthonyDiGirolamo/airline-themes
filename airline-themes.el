;;; airline-theme.el -- Port of the vim-airline themes https://github.com/bling/vim-airline

;; Author: Anthony DiGirolamo <anthony.digirolamo@gmail.com>
;; URL: http://github.com/AnthonyDiGirolamo/airline-themes.el
;; Version: 1.0
;; Keywords: evil, mode-line, powerline, airline, themes
;; Package-Requires: ((evil "1.0.8") (powerline "2.3"))

;;; Commentary:
;;
;; vim-airline themes https://github.com/bling/vim-airline for emacs powerline https://github.com/milkypostman/powerline
;;

;;; Code:

(require 'evil)
(require 'powerline)

(defface airline-normal-outer  '((t (:foreground "#141413" :background "#aeee00" :weight normal))) "Airline Normal Outer Face"  :group 'airline-themes)
(defface airline-normal-inner  '((t (:foreground "#f4cf86" :background "#45413b" :weight normal))) "Airline Normal Inner Face"  :group 'airline-themes)
(defface airline-normal-center '((t (:foreground "#8cffba" :background "#242321" :weight normal))) "Airline Normal Center Face" :group 'airline-themes)
(defface airline-insert-outer  '((t (:foreground "#141413" :background "#0a9dff" :weight normal))) "Airline Insert Outer Face"  :group 'airline-themes)
(defface airline-insert-inner  '((t (:foreground "#f4cf86" :background "#005faf" :weight normal))) "Airline Insert Inner Face"  :group 'airline-themes)
(defface airline-insert-center '((t (:foreground "#0a9dff" :background "#242321" :weight normal))) "Airline Insert Center Face" :group 'airline-themes)
(defface airline-visual-outer  '((t (:foreground "#141413" :background "#ffa724" :weight normal))) "Airline Visual Outer Face"  :group 'airline-themes)
(defface airline-visual-inner  '((t (:foreground "#000000" :background "#fade3e" :weight normal))) "Airline Visual Inner Face"  :group 'airline-themes)
(defface airline-visual-center '((t (:foreground "#000000" :background "#b88853" :weight normal))) "Airline Visual Center Face" :group 'airline-themes)
(defface airline-replace-outer '((t (:foreground "#141413" :background "#aeee00" :weight normal))) "Airline Replace Outer Face" :group 'airline-themes)
(defface airline-emacs-outer   '((t (:foreground "#d7d7ff" :background "#5f00af" :weight normal))) "Airline Emacs Outer Face"   :group 'airline-themes)

(defcustom airline-helm-colors t
  "Set helm colors to match the airline theme.

Valid Values: Enabled, Disabled"
  :group 'airline-themes
  :type '(choice (const :tag "Enabled" t)
                 (const :tag "Disabled" nil)))

(defcustom airline-cursor-colors t
  "Set the cursor color based on the current evil state.

Valid Values: Enabled, Disabled"
  :group 'airline-themes
  :type '(choice (const :tag "Enabled" t)
                 (const :tag "Disabled" nil)))

(defcustom airline-display-directory 'airline-directory-shortened
  "Display the currend directory along with the filename.

Valid Values: Full, Shortened, Disabled"
  :group 'airline-themes
  :type '(choice (const :tag "Full" airline-directory-full)
                 (const :tag "Shortened" airline-directory-shortened)
                 (const :tag "Disabled" nil)))

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

  ;; let s:PA = [ '#f4cf86' , 222 ]                   " dirtyblonde
  ;; let s:RE = [ '#ff9eb8' , 211 ]                   " dress
  ;; let s:IA = [ s:N3[1] , s:N2[1] , s:N3[3] , s:N2[3] , '' ]

  ;; let g:airline#themes#badwolf#palette.accents = {
  ;;       \ 'red': [ '#ff2c4b' , '' , 196 , '' , '' ]

  ;; let g:airline#themes#badwolf#palette.normal_modified = {
  ;;       \ 'airline_b': [ s:N2[0]   , s:N4[0]   , s:N2[2]   , s:N4[1]   , ''     ] ,
  ;;       \ 'airline_c': [ s:V1[1]   , s:N2[1]   , s:V1[3]   , s:N2[3]   , ''     ] }
  ;; let g:airline#themes#badwolf#palette.insert_modified = {
  ;;       \ 'airline_c': [ s:V1[1]   , s:N2[1]   , s:V1[3]   , s:N2[3]   , ''     ] }
  ;; let g:airline#themes#badwolf#palette.insert_paste = {
  ;;       \ 'airline_a': [ s:I1[0]   , s:PA[0]   , s:I1[2]   , s:PA[1]   , ''     ] }
  ;; let g:airline#themes#badwolf#palette.visual_modified = {
  ;;       \ 'airline_c': [ s:V3[0]   , s:V4[0]   , s:V3[2]   , s:V4[1]   , ''     ] }
  ;; let g:airline#themes#badwolf#palette.inactive_modified = {
  ;;       \ 'airline_c': [ s:V1[1]   , ''        , s:V1[3]   , ''        , ''     ] }

  (let ((normal-outer-foreground  "#141413") (normal-outer-background  "#aeee00")
        (normal-inner-foreground  "#f4cf86") (normal-inner-background  "#45413b")
        (normal-center-foreground "#8cffba") (normal-center-background "#242321")

        (insert-outer-foreground  "#141413") (insert-outer-background  "#0a9dff")
        (insert-inner-foreground  "#f4cf86") (insert-inner-background  "#005faf")
        (insert-center-foreground "#0a9dff") (insert-center-background "#242321")

        (visual-outer-foreground  "#141413") (visual-outer-background  "#ffa724")
        (visual-inner-foreground  "#000000") (visual-inner-background  "#fade3e")
        (visual-center-foreground "#000000") (visual-center-background "#b88853")

        (replace-outer-foreground "#141413") (replace-outer-background "#ff9eb8")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

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

  ;; let g:airline#themes#light#palette.insert_paste = {
  ;;       \ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,

  ;; let g:airline#themes#light#palette.normal_modified = {
  ;;       \ 'airline_c': [ '#df0000' , '#ffdfdf' , 160     , 224     , ''     ] ,
  ;; let g:airline#themes#light#palette.insert_modified = {
  ;;       \ 'airline_c': [ '#df0000' , '#ffdfdf' , 160     , 224     , ''     ] ,
  ;; let g:airline#themes#light#palette.visual_modified = {
  ;;       \ 'airline_c': [ '#df0000' , '#ffdfdf' , 160     , 224     , ''     ] ,
  ;; let g:airline#themes#light#palette.inactive_modified = {
  ;;       \ 'airline_c': [ '#df0000' , ''        , 160     , ''      , ''     ] ,

  ;; let g:airline#themes#light#palette.replace.airline_a = [ s:I2[0]   , '#ff0000' , s:I1[2] , 196     , ''     ]

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

  ;; let g:airline#themes#dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
  ;;       \ [ '#d7d7ff' , '#5f00af' , 189 , 55  , ''     ],
  ;;       \ [ '#ffffff' , '#875fd7' , 231 , 98  , ''     ],
  ;;       \ [ '#5f00af' , '#ffffff' , 55  , 231 , 'bold' ])

  ;; let g:airline#themes#dark#palette.insert_paste = {
  ;;       \ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,

  ;; let g:airline#themes#dark#palette.normal_modified = {
  ;;       \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
  ;; let g:airline#themes#dark#palette.insert_modified = {
  ;;       \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
  ;; let g:airline#themes#dark#palette.visual_modified = {
  ;;       \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
  ;; let g:airline#themes#dark#palette.inactive_modified = {
  ;;       \ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,

  ;; let g:airline#themes#dark#palette.replace.airline_a = [ s:I2[0]   , '#af0000' , s:I2[2] , 124     , ''     ]

  ;; let g:airline#themes#dark#palette.accents = {
  ;;       \ 'red': [ '#ff0000' , '' , 160 , ''  ]

  (let ((normal-outer-foreground  "#00005f") (normal-outer-background  "#dfff00")
        (normal-inner-foreground  "#ffffff") (normal-inner-background  "#444444")
        (normal-center-foreground "#9cffd3") (normal-center-background "#202020")

        (insert-outer-foreground  "#00005f") (insert-outer-background  "#00dfff")
        (insert-inner-foreground  "#ffffff") (insert-inner-background  "#005fff")
        (insert-center-foreground "#ffffff") (insert-center-background "#000080")

        (visual-outer-foreground  "#000000") (visual-outer-background  "#ffaf00")
        (visual-inner-foreground  "#000000") (visual-inner-background  "#ff5f00")
        (visual-center-foreground "#ffffff") (visual-center-background "#5f0000")

        (replace-outer-foreground "#ffffff") (replace-outer-background "#af0000")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

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

        (replace-outer-foreground "#ffffff") (replace-outer-background "#d70000")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

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

        (replace-outer-foreground "#141413") (replace-outer-background "#E5786D")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

        (inactive1-foreground "#45413b") (inactive1-background "#141413")
        (inactive2-foreground "#767676") (inactive2-background "#242424"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-molokai ()
  ""
  (interactive)
  ;; let s:N1 = [ "#080808" , "#e6db74" , 232 , 144 ] " mode
  ;; let s:N2 = [ "#f8f8f0" , "#232526" , 253 , 16  ] " info
  ;; let s:N3 = [ "#f8f8f0" , "#465457" , 253 , 67  ] " statusline

  ;; let s:I1 = [ "#080808" , "#66d9ef" , 232 , 81 ]
  ;; let s:I2 = [ "#f8f8f0" , "#232526" , 253 , 16 ]
  ;; let s:I3 = [ "#f8f8f0" , "#465457" , 253 , 67 ]

  ;; let s:V1 = [ "#080808" , "#fd971f" , 232 , 208 ]
  ;; let s:V2 = [ "#f8f8f0" , "#232526" , 253 , 16  ]
  ;; let s:V3 = [ "#f8f8f0" , "#465457" , 253 , 67  ]

  ;; let g:airline#themes#molokai#palette.normal_modified = {
  ;;       \ 'airline_c': [ '#080808' , '#e6db74' , 232 , 144 , '' ] ,
  ;; let g:airline#themes#molokai#palette.insert_modified = {
  ;;       \ 'airline_c': [ '#080808' , '#66d9ef' , 232 , 81 , '' ] ,
  ;; let g:airline#themes#molokai#palette.visual_modified = {
  ;;       \ 'airline_c': [ '#080808' , '#fd971f' , 232 , 208 , '' ] ,
  ;; let g:airline#themes#molokai#palette.accents = {
  ;;       \ 'red': [ '#66d9ef' , '' , 81 , '' , '' ],

  ;; " Replace mode
  ;; let g:airline#themes#molokai#palette.replace = copy(g:airline#themes#molokai#palette.insert)
  ;; let g:airline#themes#molokai#palette.replace.airline_a = [ s:I1[0]   , '#ef5939' , s:I1[2] , 166     , ''     ]
  ;; let g:airline#themes#molokai#palette.replace_modified = {
  ;;       \ 'airline_c': [ '#080808' , '#ef5939' , 232 , 166 , '' ] ,
  ;; " Inactive
  ;; let s:IA = [ '#1b1d1e' , '#465457' , 233 , 67 , '' ]
  ;; let g:airline#themes#molokai#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  ;; let g:airline#themes#molokai#palette.inactive_modified = {
  ;;       \ 'airline_c': [ '#f8f8f0' , ''        , 253 , ''  , '' ] ,
  ;; " CtrlP
  ;; let g:airline#themes#molokai#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
  ;;       \ [ '#f8f8f0' , '#465457' , 253 , 67  , ''     ] ,
  ;;       \ [ '#f8f8f0' , '#232526' , 253 , 16  , ''     ] ,
  ;;       \ [ '#080808' , '#e6db74' , 232 , 144 , 'bold' ] )

  (let ((normal-outer-foreground  "#080808") (normal-outer-background  "#e6db74")
        (normal-inner-foreground  "#f8f8f0") (normal-inner-background  "#232526")
        (normal-center-foreground "#f8f8f0") (normal-center-background "#465457")

        (insert-outer-foreground  "#080808") (insert-outer-background  "#66d9ef")
        (insert-inner-foreground  "#f8f8f0") (insert-inner-background  "#232526")
        (insert-center-foreground "#f8f8f0") (insert-center-background "#465457")

        (visual-outer-foreground  "#080808") (visual-outer-background  "#fd971f")
        (visual-inner-foreground  "#f8f8f0") (visual-inner-background  "#232526")
        (visual-center-foreground "#f8f8f0") (visual-center-background "#465457")

        (replace-outer-foreground "#080808") (replace-outer-background "#ef5939")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

        (inactive1-foreground "#1b1d1e") (inactive1-background "#465457")
        (inactive2-foreground "#1b1d1e") (inactive2-background "#465457"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-papercolor ()
  ""
  ;; let s:N1 = [ "#585858" , "#e4e4e4" , 240 , 254 ] " Mode
  ;; let s:N2 = [ "#e4e4e4" , "#0087af" , 254 , 31  ] " Info
  ;; let s:N3 = [ "#eeeeee" , "#005f87" , 255 , 24  ] " StatusLine

  ;; let s:I1 = [ "#585858" , "#e4e4e4" , 240 , 254 ] " Mode
  ;; let s:I2 = [ "#e4e4e4" , "#0087af" , 254 , 31  ] " Info
  ;; let s:I3 = [ "#eeeeee" , "#005f87" , 255 , 24  ] " StatusLine

  ;; let s:V1 = [ "#005f87",  "#e4e4e4", 24,  254 ]
  ;; let s:V2 = [ "",         "#0087af", "",  31  ]
  ;; let s:V3 = [ "#e4e4e4",  "#005f87", 254, 24  ]

  ;; let g:airline#themes#papercolor#palette.normal_modified = {
  ;;       \ 'airline_c': [ '#eeeeee' , '#005f87' , 255 , 24 , '' ] ,
  ;; let g:airline#themes#papercolor#palette.insert_modified = {
  ;;       \ 'airline_c': [ '#eeeeee' , '#005f87' , 255 , 24 , '' ] ,
  ;; let g:airline#themes#papercolor#palette.visual_modified = {
  ;;       \ 'airline_c': [ '#e4e4e4', '#005f87', 254, 24  ] ,
  ;; let g:airline#themes#papercolor#palette.accents = {
  ;;       \ 'red': [ '#66d9ef' , '' , 81 , '' , '' ],

  ;; " Replace Mode:
  ;; let g:airline#themes#papercolor#palette.replace = copy(g:airline#themes#papercolor#palette.insert)
  ;; let g:airline#themes#papercolor#palette.replace.airline_a = [ '#d7005f'   , '#e4e4e4' , 161 , 254, ''     ]
  ;; let g:airline#themes#papercolor#palette.replace_modified = {
  ;;       \ 'airline_c': [ '#eeeeee' , '#005f87' , 255 , 24 , '' ] ,
  ;; " Inactive:
  ;; let s:IA = [ '#585858' , '#e4e4e4' , 240 , 254 , '' ]
  ;; let g:airline#themes#papercolor#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  ;; let g:airline#themes#papercolor#palette.inactive_modified = {
  ;;       \ 'airline_c': [ '#585858' , '#e4e4e4' , 240 , 254 , '' ] ,
  ;; " CtrlP:
  ;; let g:airline#themes#papercolor#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
  ;;       \ [ '#e4e4e4' , '#005f87' , 254 , 24  , ''     ] ,
  ;;       \ [ '#e4e4e4' , '#0087af' , 254 , 31  , ''     ] ,
  ;;       \ [ '#585858' , '#e4e4e4' , 240 , 254 , 'bold' ] )

  (interactive)
  (let ((normal-outer-foreground  "#585858") (normal-outer-background  "#e4e4e4")
        (normal-inner-foreground  "#e4e4e4") (normal-inner-background  "#0087af")
        (normal-center-foreground "#eeeeee") (normal-center-background "#005f87")

        (insert-outer-foreground  "#585858") (insert-outer-background  "#e4e4e4")
        (insert-inner-foreground  "#e4e4e4") (insert-inner-background  "#0087af")
        (insert-center-foreground "#eeeeee") (insert-center-background "#005f87")

        (visual-outer-foreground  "#005f87") (visual-outer-background  "#e4e4e4")
        (visual-inner-foreground  "#005f87") (visual-inner-background  "#0087af")
        (visual-center-foreground "#e4e4e4") (visual-center-background "#005f87")

        (replace-outer-foreground "#d7005f") (replace-outer-background "#e4e4e4")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

        (inactive1-foreground "#585858") (inactive1-background "#e4e4e4")
        (inactive2-foreground "#585858") (inactive2-background "#e4e4e4"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors-center)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)


(defun airline-theme-behelit ()
  ""
  (interactive)
  ;; let s:N1 = [ "#121212", "#5f87ff", 233, 69  ]
  ;; let s:N2 = [ "#5f87ff", "#262626", 69 , 235 ]
  ;; let s:N3 = [ "#5f87ff", "#1c1c1c", 69 , 234, "bold" ]

  ;; let s:I1 = [ "#121212", "#00ff87", 233, 48  ]
  ;; let s:I2 = [ "#5f87ff", "#262626", 69 , 235 ]
  ;; let s:I3 = [ "#5f87ff", "#1c1c1c", 69 , 234, "bold" ]

  ;; let s:V1 = [ "#121212", "#5fff5f", 233, 83 ]
  ;; let s:V2 = [ "#5f87ff", "#262626", 69 , 235 ]
  ;; let s:V3 = [ "#5f87ff", "#1c1c1c", 69 , 234, "bold" ]

  ;; let g:airline#themes#behelit#palette.normal_modified = {
  ;;       \ 'airline_c': [ '#d7005f', '#1c1c1c', 161, 234, 'bold' ],
  ;; let g:airline#themes#behelit#palette.insert_paste = {
  ;;       \ 'airline_a': [ "#121212", "#5f5faf", 233, 61, '' ],
  ;;       \ }

  ;; " Replace mode
  ;; let g:airline#themes#behelit#palette.replace = copy(g:airline#themes#behelit#palette.insert)
  ;; let g:airline#themes#behelit#palette.replace.airline_a = [ s:I1[0], '#d70057', s:I1[2], 161, '' ]
  ;; let g:airline#themes#behelit#palette.replace_modified = g:airline#themes#behelit#palette.insert_modified

  ;; " Inactive window
  ;; let s:IA1 = [ "#4e4e4e", "#1c1c1c", 239, 234, "" ]
  ;; let s:IA2 = [ "#4e4e4e", "#262626", 239, 235, "" ]
  ;; let s:IA3 = [ "#4e4e4e", "#1c1c1c", 239, 234, "bold" ]
  ;; let g:airline#themes#behelit#palette.inactive_modified = {
  ;;       \ 'airline_c': [ '#5f5f87', '#1c1c1c', 60, 234, 'bold' ],
  ;; let g:airline#themes#behelit#palette.accents = {
  ;;       \ 'red': [ '#d7005f', '', 161, '' ]
  ;; " Warnings
  ;; let s:WI = [ '#121212', '#d7005f', 233, 161 ]
  (let ((normal-outer-foreground  "#121212") (normal-outer-background  "#5f87ff")
        (normal-inner-foreground  "#5f87ff") (normal-inner-background  "#262626")
        (normal-center-foreground "#5f87ff") (normal-center-background "#1c1c1c")

        (insert-outer-foreground  "#121212") (insert-outer-background  "#00ff87")
        (insert-inner-foreground  "#5f87ff") (insert-inner-background  "#262626")
        (insert-center-foreground "#5f87ff") (insert-center-background "#1c1c1c")

        (visual-outer-foreground  "#121212") (visual-outer-background  "#5fff5f")
        (visual-inner-foreground  "#5f87ff") (visual-inner-background  "#262626")
        (visual-center-foreground "#5f87ff") (visual-center-background "#1c1c1c")

        (replace-outer-foreground "#121212") (replace-outer-background "#d70057")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

        (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
        (inactive2-foreground "#4e4e4e") (inactive2-background "#262626"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-durant ()
  ""
  (interactive)
  ;; let s:N1 = [ "#005f00" , "#afd700" , 22  , 148 ]
  ;; let s:N2 = [ "#93a1a1" , "#586e75" , 245 , 240 ]
  ;; let s:N3 = [ "#93a1a1" , "#073642" , 240 , 233 ]

  ;; let s:I1 = [ "#ffffff" , "#00875f" , 255 , 29  ]
  ;; let s:I2 = [ "#9e9e9e" , "#303030" , 247 , 236 ]
  ;; let s:I3 = [ "#87d7ff" , "#005f87" , 117 , 24  ]

  ;; let s:V1 = [ "#1a1a18" , "#ffffff" , 232 , 255 ]
  ;; let s:V2 = [ "#ffffff" , "#44403a" , 255, 238 ]
  ;; let s:V3 = [ "#90a680" , "#2e2d2a" , 64, 235 ]

  ;; let s:IA1 = [ "#4e4e4e" , "#1c1c1c" , 239 , 234 , "" ]
  ;; let s:IA2 = [ "#4e4e4e" , "#262626" , 239 , 235 , "" ]
  ;; let s:IA3 = [ "#4e4e4e" , "#303030" , 239 , 236 , "" ]

  ;; let g:airline#themes#durant#palette.insert_paste = {
  ;;       \ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
  ;; let g:airline#themes#durant#palette.replace = copy(g:airline#themes#durant#palette.insert)
  ;; let g:airline#themes#durant#palette.replace.airline_a = [ s:I2[0]   , '#af0000' , s:I2[2] , 124     , ''     ]

  ;; let g:airline#themes#durant#normal_modified = {
  ;;       \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
  ;; let g:airline#themes#durant#palette.visual_modified = {
  ;;       \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
  ;; let g:airline#themes#durant#palette.insert_modified = {
  ;;       \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
  ;; let g:airline#themes#durant#palette.inactive_modified = {
  ;;       \ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,

  ;; let g:airline#themes#durant#palette.accents = {
  ;;       \ 'red': [ '#ff0000' , '' , 160 , ''  ]

  ;;   let g:airline#themes#durant#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
  ;;         \ [ '#d7d7ff' , '#5f00af' , 189 , 55  , ''     ],
  ;;         \ [ '#ffffff' , '#875fd7' , 231 , 98  , ''     ],
  ;;         \ [ '#5f00af' , '#ffffff' , 55  , 231 , 'bold' ])

  (let ((normal-outer-foreground  "#005f00") (normal-outer-background  "#afd700")
        (normal-inner-foreground  "#93a1a1") (normal-inner-background  "#586e75")
        (normal-center-foreground "#93a1a1") (normal-center-background "#073642")

        (insert-outer-foreground  "#ffffff") (insert-outer-background  "#00875f")
        (insert-inner-foreground  "#9e9e9e") (insert-inner-background  "#303030")
        (insert-center-foreground "#87d7ff") (insert-center-background "#005f87")

        (visual-outer-foreground  "#1a1a18") (visual-outer-background  "#ffffff")
        (visual-inner-foreground  "#ffffff") (visual-inner-background  "#44403a")
        (visual-center-foreground "#90a680") (visual-center-background "#2e2d2a")

        (replace-outer-foreground "#9e9e9e") (replace-outer-background "#af0000")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

        (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
        (inactive2-foreground "#4e4e4e") (inactive2-background "#262626"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-hybridline ()
  ""
  (interactive)
  ;; let s:N1 = [ "#282a2e" , "#c5c8c6" , "black" , 15      ]
  ;; let s:N2 = [ "#c5c8c6" , "#373b41" , 15      , 8       ]
  ;; let s:N3 = [ "#ffffff" , "#282a2e" , 255     , "black" ]

  ;; let s:I1 = [ "#005f5f" , "#8abeb7" , 23  , 14 ]
  ;; let s:I2 = [ "#c5c8c6" , "#0087af" , 15  , 31 ]
  ;; let s:I3 = [ "#ffffff" , "#005f87" , 255 , 24 ]

  ;; let s:V1 = [ "#000000",  "#de935f", 16, 3]
  ;; let s:V2 = [ "#c5c8c6" , "#373b41" , 15      , 8       ]
  ;; let s:V3 = [ "#ffffff" , "#282a2e" , 255     , "black" ]

  ;; let g:airline#themes#hybridline#palette.normal.airline_a = ['#005f00', '#b5bd68', 22, 10, '']

  ;; let g:airline#themes#hybridline#palette.replace = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  ;; let g:airline#themes#hybridline#palette.replace.airline_a = ['#000000', '#CC6666', 16, 9]

  ;; let g:airline#themes#hybridline#palette.visual = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  ;; let g:airline#themes#hybridline#palette.visual.airline_a = ['#000000', '#de935f', 16, 3]

  ;; let s:IA1 = [ "#4e4e4e" , "#1c1c1c" , 239 , 234 , "" ]
  ;; let s:IA2 = [ "#4e4e4e" , "#262626" , 239 , 235 , "" ]
  ;; let s:IA3 = [ "#4e4e4e" , "#303030" , 239 , 236 , "" ]

  ;; let g:airline#themes#hybridline#palette.insert_paste = {
  ;;             \ 'airline_a': ['#000000', '#ac4142', 16 , 1, ''] ,
  ;; let g:airline#themes#hybridline#palette.accents = {
  ;;       \ 'red': [ '#ff0000' , '' , 160 , ''  ]
  (let ((normal-outer-foreground  "#282a2e") (normal-outer-background  "#c5c8c6")
        (normal-inner-foreground  "#c5c8c6") (normal-inner-background  "#373b41")
        (normal-center-foreground "#ffffff") (normal-center-background "#282a2e")

        (insert-outer-foreground  "#005f5f") (insert-outer-background  "#8abeb7")
        (insert-inner-foreground  "#c5c8c6") (insert-inner-background  "#0087af")
        (insert-center-foreground "#ffffff") (insert-center-background "#005f87")

        (visual-outer-foreground  "#000000") (visual-outer-background  "#de935f")
        (visual-inner-foreground  "#c5c8c6") (visual-inner-background  "#373b41")
        (visual-center-foreground "#ffffff") (visual-center-background "#282a2e")

        (replace-outer-foreground "#000000") (replace-outer-background "#cc6666")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

        (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
        (inactive2-foreground "#4e4e4e") (inactive2-background "#262626"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-kalisi ()
  ""
  (interactive)
  ;; let s:N1 = [ "#005f00" , "#afd700","22","148"]
  ;; let s:N2 = [ "#afd700" , "#005f00","148","22"]
  ;; let s:N3 =   "#b5b5b5"   "#222222"

  ;; let s:I1 = [ "#ffffff" , "#e80000","231","160"]
  ;; let s:I2 = [ "#ff0000" , "#5f0000","196","52"]
  ;; let s:I3 =   "#b5b5b5"   "#222222"

  ;; let s:V1 = [ "#0087ff" , "#ffffff","33","231"]
  ;; let s:V2 = [ "#005faf" , "#5fafff","25","75"]
  ;; let s:V3 = [ "#87d7ff" , "#005faf","117","25"]

  ;; let s:R1 = [ "#d75fff" , "#ffffff","171","231"]
  ;; let s:R2 = [ "#5f005f" , "#d75fff","53","171"]
  ;; let s:R3 = [ "#ff87ff" , "#8700af","213","91"]

  ;; hi StatusLine       guifg=#b5b5b5 guibg=#222222 gui=none term=NONE cterm=NONE
  ;; hi StatusLineNC     guifg=#857b6f guibg=#303032 gui=none

  ;; " Tabline Plugin
  ;; let g:airline#themes#kalisi#palette.tabline = {
  ;; \ 'airline_tab':    ['#bcbcbc', '#005f00','250','22'],
  ;; \ 'airline_tabsel': ['#404042', '#A6DB29','238','148'],
  ;; \ 'airline_tabtype':['#afd700', '#204d20','148','22'],
  ;; \ 'airline_tabfill': s:StatusLine,
  ;; \ 'airline_tabhid': ['#c5c5c5', '#404042','251','238'],
  ;; \ 'airline_tabmod': ['#d7ff00', '#afd700','190','148'],
  ;; \ 'airline_tabmod_unsel':  ['#d7ff00', '#005f00','190','22']
  ;; let g:airline#themes#kalisi#palette.inactive_modified = {
  ;; \ 'airline_c':  ['#d7ff00', s:IA[1],'190',s:IA[3]],
  ;; let g:airline#themes#kalisi#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
  ;; \ s:StatusLine,
  ;; \ ['#afd700', '#005f00','148','22'],
  ;; \ [ '#005f00' , '#afd700' , '22','148']

  (let ((normal-outer-foreground  "#005f00") (normal-outer-background  "#afd700")
        (normal-inner-foreground  "#afd700") (normal-inner-background  "#005f00")
        (normal-center-foreground "#b5b5b5") (normal-center-background "#222222")

        (insert-outer-foreground  "#ffffff") (insert-outer-background  "#e80000")
        (insert-inner-foreground  "#ff0000") (insert-inner-background  "#5f0000")
        (insert-center-foreground "#b5b5b5") (insert-center-background "#222222")

        (visual-outer-foreground  "#0087ff") (visual-outer-background  "#ffffff")
        (visual-inner-foreground  "#005faf") (visual-inner-background  "#5fafff")
        (visual-center-foreground "#87d7ff") (visual-center-background "#005faf")

        (replace-outer-foreground "#5f005f") (replace-outer-background "#d75fff")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

        (inactive1-foreground "#857b6f") (inactive1-background "#303032")
        (inactive2-foreground "#857b6f") (inactive2-background "#303032"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)


(defun airline-theme-kolor ()
  ""
  (interactive)
  ;; let s:N1 = [ "#e2e2e2" , "#4f3598" , 254 , 56  ]
  ;; let s:N2 = [ "#ff5fd7" , "#242322" , 206 , 234 ]
  ;; let s:N3 = [ "#e2e2e2" , "#4a4a4a" , 254 , 238 ]

  ;; let s:I1 = [ "#242322" , "#7eaefd" , 234 , 111 ]
  ;; let s:I2 = [ "#75d7d8" , "#242322" , 80  , 234 ]
  ;; let s:I3 = [ "#e2e2e2" , "#4a4a4a" , 254 , 238 ]

  ;; let s:V1 = [ "#242322" , "#e6987a" , 234 , 180 ]
  ;; let s:V2 = [ "#dbc570" , "#242322" , 186 , 234 ]
  ;; let s:V3 = [ "#e2e2e2" , "#4a4a4a" , 254 , 238 ]

  ;; let s:IA1 = [ "#b2b2b2" , "#4a4a4a" , 247 , 238 , "" ]
  ;; let s:IA2 = [ "#b2b2b2" , "#4a4a4a" , 247 , 238 ]
  ;; let s:IA3 = [ "#b2b2b2" , "#4a4a4a" , 247 , 238 , "" ]

  ;; let g:airline#themes#kolor#palette.replace.airline_a = [ s:I2[0]   , '#005154' , s:I2[2] , 23      , ''     ]
  ;; let g:airline#themes#kolor#palette.normal_modified = {
  ;;       \ 'airline_c': [ '#e2e2e2' , '#4f3598' , 254     , 56      , ''     ] ,
  ;; let g:airline#themes#kolor#palette.insert_modified = {
  ;;       \ 'airline_c': [ '#242322' , '#7eaefd' , 234     , 111     , ''     ] ,
  ;; let g:airline#themes#kolor#palette.visual_modified = {
  ;;       \ 'airline_c': [ '#242322' , '#e6987a' , 234     , 180      , ''     ] ,
  ;; let g:airline#themes#kolor#palette.replace_modified = {
  ;;       \ 'airline_c': [ '#e2e2e2' , '#005154' , 254 , 23  , '' ] ,
  ;; let g:airline#themes#kolor#palette.inactive_modified = {
  ;;       \ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,
  ;; let g:airline#themes#kolor#palette.accents = {
  ;;       \ 'red': [ '#d96e8a' , '' , 168 , ''  ]
  ;; let g:airline#themes#kolor#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
  ;;       \ [ '#e2e2e2' , '#4a4a4a' , 254 , 238 , ''     ],
  ;;       \ [ '#e2e2e2' , '#242322' , 254 , 234 , ''     ],
  ;;       \ [ '#e2e2e2' , '#4f3598' , 254 , 56  , 'bold' ])

  (let ((normal-outer-foreground  "#e2e2e2") (normal-outer-background  "#4f3598")
        (normal-inner-foreground  "#ff5fd7") (normal-inner-background  "#242322")
        (normal-center-foreground "#e2e2e2") (normal-center-background "#4a4a4a")

        (insert-outer-foreground  "#242322") (insert-outer-background  "#7eaefd")
        (insert-inner-foreground  "#75d7d8") (insert-inner-background  "#242322")
        (insert-center-foreground "#e2e2e2") (insert-center-background "#4a4a4a")

        (visual-outer-foreground  "#242322") (visual-outer-background  "#e6987a")
        (visual-inner-foreground  "#dbc570") (visual-inner-background  "#242322")
        (visual-center-foreground "#e2e2e2") (visual-center-background "#4a4a4a")

        (replace-outer-foreground "#75d7d8") (replace-outer-background "#005154")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

        (inactive1-foreground "#b2b2b2") (inactive1-background "#4a4a4a")
        (inactive2-foreground "#b2b2b2") (inactive2-background "#4a4a4a"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-understated ()
  ""
  (interactive)
    ;; let s:N1 = ["#FFFFFF", "#5F87FF", 15, 69]  " Outside blocks in normal mode (mode and file position)
    ;; let s:N2 = ["#AFAF87", "#5F5F5F", 144, 59] " Next blocks inside (branch and file format)
    ;; let s:N3 = ["#AFAF87", "#5F5F5F", 144, 59] " The middle block

    ;; let s:I1 = ["#FFFFFF", "#87AF5F", 15, 107] " Outside blocks in normal mode (mode and file position)
    ;; let s:I2 = ["#AFAF87", "#5F5F5F", 144, 59] " Next blocks inside (branch and file format)
    ;; let s:I3 = ["#AFAF87", "#5F5F5F", 144, 59] " The middle block

    ;; let s:V1 = ["#FFFFFF", "#AF5F00", 15, 130]
    ;; let s:V2 = ["#AFAF87", "#5F5F5F", 144, 59]
    ;; let s:V3 = ["#AFAF87", "#5F5F5F", 144, 59]

    ;; let g:airline#themes#understated#palette.insert_paste = {'airline_c': ['#AFAF87', '#5F5F5F', 144, 59, ''] ,}
    ;; let g:airline#themes#understated#palette.replace.airline_a = ['#FFFFFF', '#870000', 15, 88, '']

    ;; let s:V1 = ['#080808', '#FFAF00', 232, 214]
    ;; let s:IA1 = ['#4E4E4E', '#1C1C1C', 239, 234, '']
    ;; let s:IA2 = ['#4E4E4E', '#1C1C1C', 239, 234, '']
    ;; let s:IA3 = ['#4E4E4E', '#1C1C1C', 239, 234, '']

    ;; let g:airline#themes#understated#palette.normal_modified = {'airline_c': ['#ffffff', '#5f005f', 144, 59, 'bold'] ,}
    ;; let g:airline#themes#understated#palette.insert_modified = {'airline_c': ['#AFAF87', '#5F5F5F', 144, 59, 'bold'] ,}
    ;; let g:airline#themes#understated#palette.replace_modified = {'airline_c': ['#AFAF87', '#5F5F5F', 144, 59, 'bold'] ,}
    ;; let g:airline#themes#understated#palette.visual_modified = {'airline_c': [ '#AFAF87', '#5f005f', 144, 59, 'bold'] ,}
    ;; let g:airline#themes#understated#palette.inactive_modified = {'airline_c': ['#4E4E4E', '', 239, '', 'bold'] ,}

    ;; let g:airline#themes#understated#palette.accents = {'red': ['#FF0000', '', 88, '']}

    ;; let g:airline#themes#understated#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
    ;;       \ ['#FFFFFF', '#1C1C1C', 15, 234, '' ],
    ;;       \ ['#FFFFFF', '#262626', 15, 235, '' ],
    ;;       \ ['#FFFFFF', '#303030', 15, 236, 'bold'])

  (let ((normal-outer-foreground  "#FFFFFF") (normal-outer-background  "#5F87FF")
        (normal-inner-foreground  "#AFAF87") (normal-inner-background  "#5F5F5F")
        (normal-center-foreground "#AFAF87") (normal-center-background "#5F5F5F")

        (insert-outer-foreground  "#FFFFFF") (insert-outer-background  "#87AF5F")
        (insert-inner-foreground  "#AFAF87") (insert-inner-background  "#5F5F5F")
        (insert-center-foreground "#AFAF87") (insert-center-background "#5F5F5F")

        (visual-outer-foreground  "#FFFFFF") (visual-outer-background  "#AF5F00")
        (visual-inner-foreground  "#AFAF87") (visual-inner-background  "#5F5F5F")
        (visual-center-foreground "#AFAF87") (visual-center-background "#5F5F5F")

        (replace-outer-foreground "#ff0000") (replace-outer-background "#870000")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

        (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
        (inactive2-foreground "#4e4e4e") (inactive2-background "#1c1c1c"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-ubaryd ()
  ""
  (interactive)

  ;; let s:N1 = [ "#141413" , "#c7b386" , 232 , 252 ] " blackestgravel & bleaksand
  ;; let s:N2 = [ "#c7b386" , "#45413b" , 252, 238 ] " bleaksand & deepgravel
  ;; let s:N3 = [ "#b88853" , "#242321" , 137, 235 ] " toffee & darkgravel

  ;; let s:I1 = [ "#1a1a18" , "#fade3e" , 232 , 221 ] " blackestgravel & warmcorn
  ;; let s:I2 = [ "#c7b386" , "#45413b" , 252 , 238 ] " bleaksand & deepgravel
  ;; let s:I3 = [ "#f4cf86" , "#242321" , 222 , 235 ] " lighttannedskin & darkgravel

  ;; let s:V1 = [ "#1c1b1a" , "#9a4820" , 233 , 88 ] " blackgravel & warmadobe
  ;; let s:V2 = [ "#000000" , "#88633f" , 16 , 95 ] " coal & cappuccino
  ;; let s:V3 = [ "#88633f" , "#c7b386" , 95 , 252 ] " cappuccino & bleaksand

  ;; let s:N4 = [ "#857f78" , 243 ] " gravel
  ;; let s:V4 = [ "#c14c3d" , 160 ] " tannedumbrella

  ;; let s:RE = [ "#c7915b" , 173 ] " nut ;; " Replace mode

  ;; let s:PA = [ "#f9ef6d" , 154 ] " bleaklemon ;; " Paste mode

  ;; let s:IA = [ s:N2[1], s:N3[1], s:N2[3], s:N3[3], '' ]

  ;; let g:airline#themes#ubaryd#palette.accents = {
  ;;       \ 'red': [ '#ff7400' , '' , 196 , '' , '' ],

  ;; let g:airline#themes#ubaryd#palette.inactive = {
  ;;       \ 'airline_a' : [ s:N2[1] , s:N3[1] , s:N2[3] , s:N3[3] , '' ] }

  ;; let g:airline#themes#ubaryd#palette.normal_modified = {
  ;;       \ 'airline_a' : [ s:N2[0] , s:N4[0] , s:N2[2] , s:N4[1] , '' ] ,
  ;;       \ 'airline_c' : [ s:V1[1] , s:N2[1] , s:V1[3] , s:N2[3] , '' ] }
  ;; let g:airline#themes#ubaryd#palette.insert_modified = {
  ;;       \ 'airline_c' : [ s:V2[1] , s:N2[1] , s:V2[3] , s:N2[3] , '' ] }
  ;; let g:airline#themes#ubaryd#palette.visual_modified = {
  ;;       \ 'airline_c' : [ s:V3[0] , s:V4[0] , s:V3[2] , s:V4[1] , '' ] }
  ;; let g:airline#themes#ubaryd#palette.inactive_modified = {
  ;;       \ 'airline_c' : [ s:V1[1] , ''      , s:V1[3] , ''      , '' ] }

  ;; let g:airline#themes#ubaryd#palette.insert_paste = {
  ;;       \ 'airline_a' : [ s:I1[0] , s:PA[0] , s:I1[2] , s:PA[1] , '' ] }

  (let ((normal-outer-foreground  "#141413") (normal-outer-background  "#c7b386")
        (normal-inner-foreground  "#c7b386") (normal-inner-background  "#45413b")
        (normal-center-foreground "#b88853") (normal-center-background "#242321")

        (insert-outer-foreground  "#1a1a18") (insert-outer-background  "#fade3e")
        (insert-inner-foreground  "#c7b386") (insert-inner-background  "#45413b")
        (insert-center-foreground "#f4cf86") (insert-center-background "#242321")

        (visual-outer-foreground  "#1c1b1a") (visual-outer-background  "#9a4820")
        (visual-inner-foreground  "#000000") (visual-inner-background  "#88633f")
        (visual-center-foreground "#88633f") (visual-center-background "#c7b386")

        (replace-outer-foreground "#1a1a18") (replace-outer-background "#c7915b")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

        (inactive1-foreground "#45413b") (inactive1-background "#242321")
        (inactive2-foreground "#45413b") (inactive2-background "#242321"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-base16-dark-shell ()
  "Designed for use with base16-shell

url: https://github.com/chriskempson/base16-shell"
  (interactive)
  (let ((normal-outer-foreground  "color-18") (normal-outer-background  "blue")
        (normal-inner-foreground  "color-20") (normal-inner-background  "color-19")
        (normal-center-foreground "color-20") (normal-center-background "color-18")

        (insert-outer-foreground  "color-18") (insert-outer-background  "green")
        (insert-inner-foreground  "green")    (insert-inner-background  "black")
        (insert-center-foreground "color-20") (insert-center-background "color-18")

        (visual-outer-foreground  "color-18") (visual-outer-background  "color-16")
        (visual-inner-foreground  "color-16") (visual-inner-background  "black")
        (visual-center-foreground "color-20") (visual-center-background "color-18")

        (replace-outer-foreground "color-18") (replace-outer-background "red")
        (emacs-outer-foreground   "color-18") (emacs-outer-background   "magenta")

        (inactive1-foreground "color-19") (inactive1-background "color-18")
        (inactive2-foreground "color-19") (inactive2-background "color-18"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-base16-dark-gui ()
  "Designed for use with the base16 emacs color schemes in the gui

url: https://github.com/mkaito/base16-emacs"
  (interactive)
  (let ((normal-outer-foreground  (face-background 'highlight))          (normal-outer-background  (face-foreground 'link))
        (normal-inner-foreground  (face-foreground 'font-lock-doc-face)) (normal-inner-background  (face-background 'fringe))
        (normal-center-foreground (face-foreground 'font-lock-doc-face)) (normal-center-background (face-background 'highlight))

        (insert-outer-foreground  (face-background 'highlight))          (insert-outer-background  (face-foreground 'success))
        (insert-inner-foreground  (face-foreground 'success))            (insert-inner-background  (face-background 'default))
        (insert-center-foreground (face-foreground 'font-lock-doc-face)) (insert-center-background (face-background 'highlight))

        (visual-outer-foreground  (face-background 'highlight))          (visual-outer-background  (face-foreground 'warning))
        (visual-inner-foreground  (face-foreground 'warning))            (visual-inner-background  (face-background 'default))
        (visual-center-foreground (face-foreground 'font-lock-doc-face)) (visual-center-background (face-background 'highlight))

        (replace-outer-foreground (face-background 'highlight)) (replace-outer-background (face-foreground 'error))
        (emacs-outer-foreground   (face-background 'highlight)) (emacs-outer-background   (face-foreground 'link-visited))

        (inactive1-foreground (face-foreground 'font-lock-doc-face)) (inactive1-background (face-foreground 'highlight))
        (inactive2-foreground (face-foreground 'font-lock-doc-face)) (inactive2-background (face-foreground 'highlight)))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-base16-light-gui ()
  "Designed for use with the base16 emacs color schemes in the gui

url: https://github.com/mkaito/base16-emacs"
  (interactive)
  (let ((normal-outer-foreground  (face-background 'default)) (normal-outer-background  (face-foreground 'link))
        (normal-inner-foreground  (face-background 'fringe))  (normal-inner-background  (face-foreground 'rainbow-delimiters-depth-9-face))
        (normal-center-foreground (face-background 'fringe))  (normal-center-background (face-foreground 'mode-line-emphasis))
        (ansi-color-names-vector)

        (insert-outer-foreground  (face-background 'highlight)) (insert-outer-background  (face-foreground 'success))
        (insert-inner-foreground  (face-foreground 'success))   (insert-inner-background  (face-background 'default))
        (insert-center-foreground (face-background 'fringe))    (insert-center-background (face-foreground 'mode-line-emphasis))

        (visual-outer-foreground  (face-background 'highlight)) (visual-outer-background  (face-foreground 'warning))
        (visual-inner-foreground  (face-foreground 'warning))   (visual-inner-background  (face-background 'default))
        (visual-center-foreground (face-background 'fringe))    (visual-center-background (face-foreground 'mode-line-emphasis))

        (replace-outer-foreground (face-background 'highlight)) (replace-outer-background (face-foreground 'error))
        (emacs-outer-foreground   (face-background 'highlight)) (emacs-outer-background   (face-foreground 'link-visited))

        (inactive1-foreground (face-foreground 'font-lock-doc-face)) (inactive1-background (face-foreground 'mode-line-emphasis))
        (inactive2-foreground (face-foreground 'font-lock-doc-face)) (inactive2-background (face-foreground 'mode-line-emphasis)))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-solarized-alternate-gui ()
  ""
  (interactive)
  (let ((normal-outer-foreground  (face-background 'highlight)) (normal-outer-background  (face-foreground 'font-lock-function-name-face))
        (normal-inner-foreground  (face-foreground 'fringe))    (normal-inner-background  (face-background 'fringe))
        (normal-center-foreground (face-foreground 'highlight)) (normal-center-background (face-background 'highlight))

        (insert-outer-foreground  (face-background 'highlight)) (insert-outer-background  (face-foreground 'success))
        (insert-inner-foreground  (face-foreground 'success))   (insert-inner-background  (face-background 'fringe))
        (insert-center-foreground (face-foreground 'highlight)) (insert-center-background (face-background 'highlight))

        (visual-outer-foreground  (face-background 'highlight))          (visual-outer-background  (face-foreground 'font-lock-doc-face))
        (visual-inner-foreground  (face-foreground 'font-lock-doc-face)) (visual-inner-background  (face-background 'fringe))
        (visual-center-foreground (face-foreground 'highlight))          (visual-center-background (face-background 'highlight))

        (replace-outer-foreground (face-background 'highlight)) (replace-outer-background (face-foreground 'error))
        (emacs-outer-foreground   (face-background 'highlight)) (emacs-outer-background   (face-foreground 'escape-glyph))

        (inactive1-foreground (face-foreground 'fringe)) (inactive1-background (face-foreground 'highlight))
        (inactive2-foreground (face-foreground 'fringe)) (inactive2-background (face-foreground 'highlight)))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-solarized-gui ()
  ""
  (interactive)
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

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-sol ()
  ""
  (interactive)
  ;; " vim-airline companion theme of Sol
  ;; " (https://github.com/Pychimp/vim-sol)

  ;; let s:N1 = [ "#343434" , "#a0a0a0" , 237 , 248 ]
  ;; let s:N2 = [ "#343434" , "#b3b3b3" , 237 , 250 ]
  ;; let s:N3 = [ "#343434" , "#c7c7c7" , 237 , 252 ]

  ;; let s:I1 = [ "#eeeeee" , "#09643f" , 255 , 30  ]
  ;; let s:I2 = [ "#343434" , "#a3a3a3" , 237 , 249 ]
  ;; let s:I3 = [ "#343434" , "#b0b0b0" , 237 , 250 ]

  ;; let s:V1 = [ "#ffff9a" , "#ff6003" , 222 , 202 ]
  ;; let s:V2 = [ "#343434" , "#a3a3a3" , 237 , 249 ]
  ;; let s:V3 = [ "#343434" , "#b0b0b0" , 237 , 250 ]

  ;; let s:IA = [ "#777777" , "#c7c7c7" , 244 , 251 , "" ]

  ;; let g:airline#themes#sol#palette.accents = {
  ;;       \ 'red': [ '#ffffff' , '' , 231 , '' , '' ],
  ;; let g:airline#themes#sol#palette.insert_paste = {
  ;;       \ 'airline_a': [ s:I1[0]   , '#09643f' , s:I1[2] , 30 , '' ] ,
  ;; let g:airline#themes#sol#palette.normal_modified = {
  ;;       \ 'airline_c': [ '#ffffff' , '#ff6868' , 237 , 209 , '' ] ,
  ;; let g:airline#themes#sol#palette.insert_modified = {
  ;;       \ 'airline_c': [ '#343434' , '#ffdbc7' , 237 , 216 , '' ] ,
  ;; let g:airline#themes#sol#palette.visual_modified = {
  ;;       \ 'airline_c': [ '#343434' , '#ffdbc7' , 237 , 216 , '' ] ,
  ;; let g:airline#themes#sol#palette.inactive_modified = {
  ;;       \ 'airline_c': [ '#ff3535' , '' , 203 , '' , '' ] ,

  ;; let g:airline#themes#sol#palette.replace = copy(g:airline#themes#sol#palette.insert)
  ;; let g:airline#themes#sol#palette.replace.airline_a = [ s:I1[0] , '#ff2121' , s:I1[2] , 196 , '' ]
  ;; let g:airline#themes#sol#palette.replace.airline_z = [ s:I1[0] , '#ff2121' , s:I1[2] , 196 , '' ]

  ;; let g:airline#themes#sol#palette.tabline = {
  ;;       \ 'airline_tab':      ['#343434', '#b3b3b3',  237, 250, ''],
  ;;       \ 'airline_tabsel':   ['#ffffff', '#004b9a',  231, 31 , ''],
  ;;       \ 'airline_tabtype':  ['#343434', '#a0a0a0',  237, 248, ''],
  ;;       \ 'airline_tabfill':  ['#343434', '#c7c7c7',  237, 251, ''],
  ;;       \ 'airline_tabmod':   ['#343434', '#ffdbc7',  237, 216, ''],

  ;; let s:WI = [ '#eeeeee', '#e33900', 255, 166 ]
  ;; let g:airline#themes#sol#palette.normal.airline_warning = [
  ;;      \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]

  ;; let g:airline#themes#sol#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
  ;;       \ [ '#343434' , '#c7c7c7' , 237 , 251 , ''     ] ,
  ;;       \ [ '#343434' , '#b3b3b3' , 237 , 250 , ''     ] ,
  ;;       \ [ '#eeeeee' , '#007fff' , 255 , 27  , ''     ] )

  (let ((normal-outer-foreground  "#343434") (normal-outer-background  "#a0a0a0")
        (normal-inner-foreground  "#343434") (normal-inner-background  "#b3b3b3")
        (normal-center-foreground "#343434") (normal-center-background "#c7c7c7")

        (insert-outer-foreground  "#eeeeee") (insert-outer-background  "#09643f")
        (insert-inner-foreground  "#343434") (insert-inner-background  "#a3a3a3")
        (insert-center-foreground "#343434") (insert-center-background "#b0b0b0")

        (visual-outer-foreground  "#ffff9a") (visual-outer-background  "#ff6003")
        (visual-inner-foreground  "#343434") (visual-inner-background  "#a3a3a3")
        (visual-center-foreground "#343434") (visual-center-background "#b0b0b0")

        (replace-outer-foreground "#eeeeee") (replace-outer-background "#ff2121")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

        (inactive1-foreground "#777777") (inactive1-background "#c7c7c7")
        (inactive2-foreground "#777777") (inactive2-background "#c7c7c7"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-simple ()
  ""
  (interactive)
  ;; let g:airline#themes#simple#palette = {}

  ;; let s:guibg = '#080808'
  ;; let s:guibg2 = '#1c1c1c'
  ;; let s:termbg = 232
  ;; let s:termbg2= 234

  ;; let s:n1 = [ "#080808" , "#00dfff" , s:termbg , 45 ]
  ;; let s:n2 = [ "#ff5f00" , "#1c1c1c", 202 , s:termbg2 ]
  ;; let s:n3 = [ "#767676" , "#080808", 243 , s:termbg]

  ;; let s:i1 = [ "#080808",  "#5fff00" , s:termbg , 82 ]
  ;; let s:i2 = [ "#ff5f00" , "#1c1c1c", 202 , s:termbg2 ]
  ;; let s:i3 = [ "#767676" , "#080808", 243 , s:termbg ]

  ;; let s:v1 = [ "#080808",  "#dfdf00" , s:termbg , 184 ]
  ;; let s:v2 = [ "#ff5f00" , "#1c1c1c", 202 , s:termbg2 ]
  ;; let s:v3 = [ "#767676" , "#080808", 243 , s:termbg ]

  ;; let s:ia  = [ "#4e4e4e" , "#080808"  , 239 , s:termbg  , "" ]
  ;; let s:ia2 = [ "#4e4e4e" , "#1c1c1c" , 239 , s:termbg2 , "" ]

  ;; let g:airline#themes#simple#palette.replace = {
  ;;       \ 'airline_a': [ s:i1[0]   , '#af0000' , s:i1[2] , 124     , ''     ] ,

  ;; let g:airline#themes#simple#palette.normal_modified = {
  ;;       \ 'airline_c': [ '#df0000' , s:#080808, 160     , s:termbg    , ''     ] ,
  ;; let g:airline#themes#simple#palette.insert_paste = {
  ;;       \ 'airline_a': [ s:i1[0]   , '#d78700' , s:i1[2] , 172     , ''     ] ,
  ;; let g:airline#themes#simple#palette.inactive_modified = {
  ;;       \ 'airline_c': [ '#df0000', '', 160, '', '' ] ,

  (let ((normal-outer-foreground  "#080808") (normal-outer-background  "#00dfff")
        (normal-inner-foreground  "#ff5f00") (normal-inner-background  "#1c1c1c")
        (normal-center-foreground "#767676") (normal-center-background "#080808")

        (insert-outer-foreground  "#080808") (insert-outer-background  "#5fff00")
        (insert-inner-foreground  "#ff5f00") (insert-inner-background  "#1c1c1c")
        (insert-center-foreground "#767676") (insert-center-background "#080808")

        (visual-outer-foreground  "#080808") (visual-outer-background  "#dfdf00")
        (visual-inner-foreground  "#ff5f00") (visual-inner-background  "#1c1c1c")
        (visual-center-foreground "#767676") (visual-center-background "#080808")

        (replace-outer-foreground "#080808") (replace-outer-background "#af0000")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

        (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
        (inactive2-foreground "#4e4e4e") (inactive2-background "#080808"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-silver ()
  ""
  (interactive)
  ;; let s:N1 = [ "#414141" , "#e1e1e1" , 59 , 188 ]
  ;; let s:N2 = [ "#414141" , "#e1e1e1" , 59 , 188 ]
  ;; let s:N3 = [ "#414141" , "#e1e1e1" , 59 , 188 ]

  ;; let s:I1 = [ "#0d935c" , "#e1e1e1" , 29 , 188 ]
  ;; let s:I2 = [ "#0d935c" , "#e1e1e1" , 29 , 188 ]
  ;; let s:I3 = [ "#0d935c" , "#e1e1e1" , 29 , 188 ]

  ;; let s:V1 = [ "#0000b3" , "#e1e1e1" , 19 , 188 ]
  ;; let s:V2 = [ "#0000b3" , "#e1e1e1" , 19 , 188 ]
  ;; let s:V3 = [ "#0000b3" , "#e1e1e1" , 19 , 188 ]

  ;; let s:IA = [ "#a1a1a1" , "#dddddd" , 145 , 188 , "" ]

  ;; let g:airline#themes#silver#palette.accents = {
  ;;       \ 'red': [ '#ff2121' , '' , 196 , '' , '' ],
  ;; let g:airline#themes#silver#palette.insert_paste = {
  ;;       \ 'airline_a': [ s:I1[0]   , '#e1e1e1' , s:I1[2] , 188 , '' ] ,

  ;; let g:airline#themes#silver#palette.normal_modified = {
  ;;       \ 'airline_c': [ '#e25000' , '#e1e1e1' , 166 , 188 , '' ] ,
  ;; let g:airline#themes#silver#palette.insert_modified = {
  ;;       \ 'airline_c': [ '#e25000' , '#e1e1e1' , 166 , 188 , '' ] ,
  ;; let g:airline#themes#silver#palette.visual_modified = {
  ;;       \ 'airline_c': [ '#e25000' , '#e1e1e1' , 166 , 188 , '' ] ,
  ;; let g:airline#themes#silver#palette.inactive_modified = {
  ;;       \ 'airline_c': [ '#e25000' , '' , 166 , '' , '' ] ,

  ;; let g:airline#themes#silver#palette.replace.airline_a = [ '#b30000' , s:I1[1] , 124 , s:I1[3] , '' ]
  ;; let g:airline#themes#silver#palette.replace.airline_z = [ '#b30000' , s:I1[1] , 124 , s:I1[3] , '' ]

  ;; let g:airline#themes#silver#palette.tabline = {
  ;;       \ 'airline_tab':      ['#414141' , '#e1e1e1' , 59  , 188 , '' ],
  ;;       \ 'airline_tabsel':   ['#e1e1e1' , '#007599' , 188 , 30  , '' ],
  ;;       \ 'airline_tabtype':  ['#414141' , '#e1e1e1' , 59  , 188 , '' ],
  ;;       \ 'airline_tabfill':  ['#414141' , '#e1e1e1' , 59  , 188 , '' ],
  ;;       \ 'airline_tabmod':   ['#e1e1e1' , '#007599' , 188 , 30  , '' ],

  ;; let s:WI = [ '#ff0000', '#e1e1e1', 196, 188 ]
  ;; let g:airline#themes#silver#palette.normal.airline_warning = [
  ;;      \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]

  ;; let g:airline#themes#silver#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
  ;;       \ [ '#414141' , '#e1e1e1' , 59  , 188 , ''     ] ,
  ;;       \ [ '#414141' , '#e1e1e1' , 59  , 188 , ''     ] ,
  ;;       \ [ '#e1e1e1' , '#007599' , 188 , 30  , ''     ] )
  (let ((normal-outer-foreground  "#414141") (normal-outer-background  "#e1e1e1")
        (normal-inner-foreground  "#414141") (normal-inner-background  "#e1e1e1")
        (normal-center-foreground "#414141") (normal-center-background "#e1e1e1")

        (insert-outer-foreground  "#0d935c") (insert-outer-background  "#e1e1e1")
        (insert-inner-foreground  "#0d935c") (insert-inner-background  "#e1e1e1")
        (insert-center-foreground "#0d935c") (insert-center-background "#e1e1e1")

        (visual-outer-foreground  "#0000b3") (visual-outer-background  "#e1e1e1")
        (visual-inner-foreground  "#0000b3") (visual-inner-background  "#e1e1e1")
        (visual-center-foreground "#0000b3") (visual-center-background "#e1e1e1")

        (replace-outer-foreground "#b30000") (replace-outer-background "#e1e1e1")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

        (inactive1-foreground "#a1a1a1") (inactive1-background "#dddddd")
        (inactive2-foreground "#a1a1a1") (inactive2-background "#dddddd"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors-foreground)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

(defun airline-theme-serene ()
  ""
  (interactive)
  ;; let s:N1 = [ "#00dfff" , "#080808" , 45  , s:termbg ]
  ;; let s:N2 = [ "#ff5f00" , "#080808" , 202 , s:termbg ]
  ;; let s:N3 = [ "#767676" , "#080808" , 7   , s:termbg ]

  ;; let s:I1 = [ "#5fff00" , "#080808" , 82  , s:termbg ]
  ;; let s:I2 = [ "#ff5f00" , "#080808" , 202 , s:termbg ]
  ;; let s:I3 = [ "#767676" , "#080808" , 7   , s:termbg ]

  ;; let s:V1 = [ "#dfdf00" , "#080808" , 184 , s:termbg ]
  ;; let s:V2 = [ "#ff5f00" , "#080808" , 202 , s:termbg ]
  ;; let s:V3 = [ "#767676" , "#080808" , 7   , s:termbg ]

  ;; let s:IA  = [ "#4e4e4e" , "#080808"  , 239 , s:termbg  , "" ]
  ;; let s:IA2 = [ "#4e4e4e" , "#303030" , 239 , s:termsep , "" ]

  ;; let g:airline#themes#serene#palette.normal_modified = {
  ;; \ 'airline_c': [ '#df0000' , '#080808', 160     , s:termbg    , ''     ] ,
  ;; let g:airline#themes#serene#palette.insert_paste = {
  ;; \ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
  ;; let g:airline#themes#serene#palette.replace = {
  ;; \ 'airline_a': [ s:I1[0]   , '#af0000' , s:I1[2] , 124     , ''     ] ,

  (let ((normal-outer-foreground  "#00dfff") (normal-outer-background  "#080808")
        (normal-inner-foreground  "#ff5f00") (normal-inner-background  "#080808")
        (normal-center-foreground "#767676") (normal-center-background "#080808")

        (insert-outer-foreground  "#5fff00") (insert-outer-background  "#080808")
        (insert-inner-foreground  "#ff5f00") (insert-inner-background  "#080808")
        (insert-center-foreground "#767676") (insert-center-background "#080808")

        (visual-outer-foreground  "#dfdf00") (visual-outer-background  "#080808")
        (visual-inner-foreground  "#ff5f00") (visual-inner-background  "#080808")
        (visual-center-foreground "#767676") (visual-center-background "#080808")

        (replace-outer-foreground "#5fff00") (replace-outer-background "#af0000")
        (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

        (inactive1-foreground "#4e4e4e") (inactive1-background "#080808")
        (inactive2-foreground "#4e4e4e") (inactive2-background "#303030"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors-foreground)
    (powerline-airline-set-helm-faces)
  )
  (powerline-airline-set-modeline)
)

;; (defun airline-theme- ()
;;   ""
;;   (interactive)
;;   (let ((normal-outer-foreground  ) (normal-outer-background  )
;;         (normal-inner-foreground  ) (normal-inner-background  )
;;         (normal-center-foreground ) (normal-center-background )

;;         (insert-outer-foreground  ) (insert-outer-background  )
;;         (insert-inner-foreground  ) (insert-inner-background  )
;;         (insert-center-foreground ) (insert-center-background )

;;         (visual-outer-foreground  ) (visual-outer-background  )
;;         (visual-inner-foreground  ) (visual-inner-background  )
;;         (visual-center-foreground ) (visual-center-background )

;;         (replace-outer-foreground ) (replace-outer-background )
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground ) (inactive1-background )
;;         (inactive2-foreground ) (inactive2-background ))

;;     (powerline-airline-set-face-colors)
;;     (powerline-airline-set-cursor-colors)
;;     (powerline-airline-set-helm-faces)
;;   )
;;   (powerline-airline-set-modeline)
;; )

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
                                            ((eq evil-state (intern "replace"))
                                             (if (powerline-selected-window-active) 'airline-replace-outer 'powerline-inactive1))
                                            ((eq evil-state (intern "emacs"))
                                             (if (powerline-selected-window-active) 'airline-emacs-outer 'powerline-inactive1))
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
                                     (when (eq airline-display-directory 'airline-directory-shortened)
                                       (powerline-raw (shorten-directory default-directory 50) center-face 'l))
                                     (when (eq airline-display-directory 'airline-directory-full)
                                       (powerline-raw default-directory center-face 'l))
                                     (when (eq airline-display-directory nil)
                                       (powerline-raw " " center-face))

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

  (set-face-attribute 'airline-replace-outer nil :foreground replace-outer-foreground :background replace-outer-background)
  (set-face-attribute 'airline-emacs-outer   nil :foreground emacs-outer-foreground   :background emacs-outer-background)

  (set-face-attribute 'powerline-inactive1   nil :foreground inactive1-foreground     :background inactive1-background)
  (set-face-attribute 'powerline-inactive2   nil :foreground inactive2-foreground     :background inactive2-background)

  ;; (copy-face 'airline-normal-center 'mode-line)
  (set-face-attribute 'mode-line           nil :foreground normal-center-foreground :background normal-center-background :box nil)
  (set-face-attribute 'mode-line-inactive  nil :foreground inactive1-foreground     :background inactive1-background     :box nil)
  (set-face-attribute 'mode-line-buffer-id nil :foreground normal-outer-foreground  :background normal-outer-background  :box nil)
  (set-face-attribute 'minibuffer-prompt   nil :foreground normal-outer-foreground  :background normal-outer-background  :box nil)
)


;;;###autoload
(defun powerline-airline-set-cursor-colors ()
  "Set Cursor Colors - only seems to work in the gui"
  (interactive)
  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  insert-outer-background)
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background))))

(defun powerline-airline-set-cursor-colors-foreground ()
  "Set Cursor Colors - only seems to work in the gui"
  (interactive)
  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-foreground)
     (setq evil-insert-state-cursor  insert-outer-foreground)
     (setq evil-replace-state-cursor replace-outer-foreground)
     (setq evil-visual-state-cursor  visual-outer-foreground))))

;;;###autoload
(defun powerline-airline-set-cursor-colors-center ()
  "Set Cursor Colors - only seems to work in the gui"
  (interactive)
  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-center-background)
     (setq evil-insert-state-cursor  insert-center-background)
     (setq evil-replace-state-cursor replace-outer-foreground)
     (setq evil-visual-state-cursor  visual-center-background))))

;;;###autoload
(defun powerline-airline-set-helm-faces ()
  "Set the airline helm colors"
  (interactive)
  (custom-set-faces
   ; 'airline-themes
   `(which-func            ((t ( :foreground ,normal-center-foreground :background ,normal-center-background :bold t))))
  )

  (when airline-helm-colors
    (custom-set-faces
     ; 'airline-themes
     `(helm-header           ((t ( :foreground ,insert-inner-foreground  :background ,insert-inner-background  :bold t))))
     `(helm-selection        ((t ( :foreground ,insert-outer-foreground  :background ,insert-outer-background  :bold t))))
     `(helm-source-header    ((t ( :foreground ,insert-center-foreground :background ,insert-center-background :bold t))))
     `(helm-candidate-number ((t ( :foreground ,normal-inner-foreground  :background ,normal-inner-background  :bold t))))
     `(helm-selection-line   ((t ( :foreground ,normal-center-foreground :background ,normal-center-background :bold t))))
    )
  )
)

(defun shorten-directory (dir max-length)
  "Show up to `max-length' characters of a directory name `dir'."
  (let ((path (reverse (split-string (abbreviate-file-name dir) "/")))
        (output ""))
    ;; Remove any empty dirnames
    (when (and path (equal "" (car path)))
      (setq path (cdr path)))

    ;; Shorten trailing path names to one character
    (setq remaining_paths (mapcar
                           (function (lambda (x) (substring x 0 1)))
                           (cdr path)))
    (setq path (cons (car path) remaining_paths))

    (while (and path (< (length output) (- max-length 4)))
      (setq output (concat (car path) "/" output))
      (setq path (cdr path)))
    (when path
      (setq output (concat "<" output)))
    output))

(provide 'airline-themes)
;;; airline-themes.el ends here
