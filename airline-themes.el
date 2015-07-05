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

        (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
        (inactive2-foreground "#4e4e4e") (inactive2-background "#262626"))
                                                               "#303030"
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

        (inactive1-foreground "#b2b2b2") (inactive1-background "#4a4a4a")
        (inactive2-foreground "#b2b2b2") (inactive2-background "#4a4a4a"))

    (powerline-airline-set-face-colors)
    (powerline-airline-set-cursor-colors)
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
                                     (powerline-raw (shorten-directory default-directory 50)
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
(defun powerline-airline-set-cursor-colors-center ()
  "Set Cursor Colors - only seems to work in the gui"
  (interactive)
  (setq evil-normal-state-cursor normal-center-background)
  (setq evil-insert-state-cursor insert-center-background)
  (setq evil-visual-state-cursor visual-center-background))

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
   `(which-func            ((t ( :foreground ,normal-center-foreground :background ,normal-center-background :bold t))))
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
