;;; airline-themes.el --- vim-airline themes for emacs powerline

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

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

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

;; ;;;###autoload
;; (defun airline-theme-badwolf ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/badwolf.vim

;;   (let ((normal-outer-foreground  "#141413") (normal-outer-background  "#aeee00")
;;         (normal-inner-foreground  "#f4cf86") (normal-inner-background  "#45413b")
;;         (normal-center-foreground "#8cffba") (normal-center-background "#242321")

;;         (insert-outer-foreground  "#141413") (insert-outer-background  "#0a9dff")
;;         (insert-inner-foreground  "#f4cf86") (insert-inner-background  "#005faf")
;;         (insert-center-foreground "#0a9dff") (insert-center-background "#242321")

;;         (visual-outer-foreground  "#141413") (visual-outer-background  "#ffa724")
;;         (visual-inner-foreground  "#000000") (visual-inner-background  "#fade3e")
;;         (visual-center-foreground "#000000") (visual-center-background "#b88853")

;;         (replace-outer-foreground "#141413") (replace-outer-background "#ff9eb8")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#45413b") (inactive1-background "#141413")
;;         (inactive2-foreground "#45413b") (inactive2-background "#242321"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-light ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/light.vim

;;   (let ((normal-outer-foreground  "#ffffff") (normal-outer-background  "#005fff")
;;         (normal-inner-foreground  "#000087") (normal-inner-background  "#00dfff")
;;         (normal-center-foreground "#005f5f") (normal-center-background "#afffff")

;;         (insert-outer-foreground  "#ffffff") (insert-outer-background  "#00875f")
;;         (insert-inner-foreground  "#005f00") (insert-inner-background  "#00df87")
;;         (insert-center-foreground "#005f5f") (insert-center-background "#afff87")

;;         (visual-outer-foreground  "#ffffff") (visual-outer-background  "#ff5f00")
;;         (visual-inner-foreground  "#5f0000") (visual-inner-background  "#ffaf00")
;;         (visual-center-foreground "#df5f00") (visual-center-background "#ffff87")

;;         (replace-outer-foreground "#005f00") (replace-outer-background "#ff0000")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#8a8a8a") (inactive1-background "#d0d0d0")
;;         (inactive2-foreground "#a8a8a8") (inactive2-background "#ffffff"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-dark ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/dark.vim

;;   (let ((normal-outer-foreground  "#00005f") (normal-outer-background  "#dfff00")
;;         (normal-inner-foreground  "#ffffff") (normal-inner-background  "#444444")
;;         (normal-center-foreground "#9cffd3") (normal-center-background "#202020")

;;         (insert-outer-foreground  "#00005f") (insert-outer-background  "#00dfff")
;;         (insert-inner-foreground  "#ffffff") (insert-inner-background  "#005fff")
;;         (insert-center-foreground "#ffffff") (insert-center-background "#000080")

;;         (visual-outer-foreground  "#000000") (visual-outer-background  "#ffaf00")
;;         (visual-inner-foreground  "#000000") (visual-inner-background  "#ff5f00")
;;         (visual-center-foreground "#ffffff") (visual-center-background "#5f0000")

;;         (replace-outer-foreground "#ffffff") (replace-outer-background "#af0000")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
;;         (inactive2-foreground "#4e4e4e") (inactive2-background "#262626"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-powerlineish ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/powerlineish.vim

;;   (let ((normal-outer-foreground  "#005f00") (normal-outer-background  "#afd700")
;;         (normal-inner-foreground  "#9e9e9e") (normal-inner-background  "#303030")
;;         (normal-center-foreground "#ffffff") (normal-center-background "#121212")

;;         (insert-outer-foreground  "#005f5f") (insert-outer-background  "#ffffff")
;;         (insert-inner-foreground  "#5fafd7") (insert-inner-background  "#0087af")
;;         (insert-center-foreground "#87d7ff") (insert-center-background "#005f87")

;;         (visual-outer-foreground  "#080808") (visual-outer-background  "#ffaf00")
;;         (visual-inner-foreground  "#9e9e9e") (visual-inner-background  "#303030")
;;         (visual-center-foreground "#ffffff") (visual-center-background "#121212")

;;         (replace-outer-foreground "#ffffff") (replace-outer-background "#d70000")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#45413b") (inactive1-background "#141413")
;;         (inactive2-foreground "#45413b") (inactive2-background "#242321"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-wombat ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/wombat.vim

;;   (let ((normal-outer-foreground  "#141413") (normal-outer-background  "#CAE682")
;;         (normal-inner-foreground  "#CAE682") (normal-inner-background  "#32322F")
;;         (normal-center-foreground "#CAE682") (normal-center-background "#242424")

;;         (insert-outer-foreground  "#141413") (insert-outer-background  "#FDE76E")
;;         (insert-inner-foreground  "#FDE76E") (insert-inner-background  "#32322F")
;;         (insert-center-foreground "#FDE76E") (insert-center-background "#242424")

;;         (visual-outer-foreground  "#141413") (visual-outer-background  "#B5D3F3")
;;         (visual-inner-foreground  "#B5D3F3") (visual-inner-background  "#32322F")
;;         (visual-center-foreground "#B5D3F3") (visual-center-background "#242424")

;;         (replace-outer-foreground "#141413") (replace-outer-background "#E5786D")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#45413b") (inactive1-background "#141413")
;;         (inactive2-foreground "#767676") (inactive2-background "#242424"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-molokai ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/molokai.vim

;;   (let ((normal-outer-foreground  "#080808") (normal-outer-background  "#e6db74")
;;         (normal-inner-foreground  "#f8f8f0") (normal-inner-background  "#232526")
;;         (normal-center-foreground "#f8f8f0") (normal-center-background "#465457")

;;         (insert-outer-foreground  "#080808") (insert-outer-background  "#66d9ef")
;;         (insert-inner-foreground  "#f8f8f0") (insert-inner-background  "#232526")
;;         (insert-center-foreground "#f8f8f0") (insert-center-background "#465457")

;;         (visual-outer-foreground  "#080808") (visual-outer-background  "#fd971f")
;;         (visual-inner-foreground  "#f8f8f0") (visual-inner-background  "#232526")
;;         (visual-center-foreground "#f8f8f0") (visual-center-background "#465457")

;;         (replace-outer-foreground "#080808") (replace-outer-background "#ef5939")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#1b1d1e") (inactive1-background "#465457")
;;         (inactive2-foreground "#1b1d1e") (inactive2-background "#465457"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-papercolor ()
;;   ""
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/papercolor.vim

;;   (interactive)
;;   (let ((normal-outer-foreground  "#585858") (normal-outer-background  "#e4e4e4")
;;         (normal-inner-foreground  "#e4e4e4") (normal-inner-background  "#0087af")
;;         (normal-center-foreground "#eeeeee") (normal-center-background "#005f87")

;;         (insert-outer-foreground  "#585858") (insert-outer-background  "#e4e4e4")
;;         (insert-inner-foreground  "#e4e4e4") (insert-inner-background  "#0087af")
;;         (insert-center-foreground "#eeeeee") (insert-center-background "#005f87")

;;         (visual-outer-foreground  "#005f87") (visual-outer-background  "#e4e4e4")
;;         (visual-inner-foreground  "#005f87") (visual-inner-background  "#0087af")
;;         (visual-center-foreground "#e4e4e4") (visual-center-background "#005f87")

;;         (replace-outer-foreground "#d7005f") (replace-outer-background "#e4e4e4")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#585858") (inactive1-background "#e4e4e4")
;;         (inactive2-foreground "#585858") (inactive2-background "#e4e4e4"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors-center)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-behelit ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/behelit.vim

;;   (let ((normal-outer-foreground  "#121212") (normal-outer-background  "#5f87ff")
;;         (normal-inner-foreground  "#5f87ff") (normal-inner-background  "#262626")
;;         (normal-center-foreground "#5f87ff") (normal-center-background "#1c1c1c")

;;         (insert-outer-foreground  "#121212") (insert-outer-background  "#00ff87")
;;         (insert-inner-foreground  "#5f87ff") (insert-inner-background  "#262626")
;;         (insert-center-foreground "#5f87ff") (insert-center-background "#1c1c1c")

;;         (visual-outer-foreground  "#121212") (visual-outer-background  "#5fff5f")
;;         (visual-inner-foreground  "#5f87ff") (visual-inner-background  "#262626")
;;         (visual-center-foreground "#5f87ff") (visual-center-background "#1c1c1c")

;;         (replace-outer-foreground "#121212") (replace-outer-background "#d70057")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
;;         (inactive2-foreground "#4e4e4e") (inactive2-background "#262626"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-durant ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/durant.vim

;;   (let ((normal-outer-foreground  "#005f00") (normal-outer-background  "#afd700")
;;         (normal-inner-foreground  "#93a1a1") (normal-inner-background  "#586e75")
;;         (normal-center-foreground "#93a1a1") (normal-center-background "#073642")

;;         (insert-outer-foreground  "#ffffff") (insert-outer-background  "#00875f")
;;         (insert-inner-foreground  "#9e9e9e") (insert-inner-background  "#303030")
;;         (insert-center-foreground "#87d7ff") (insert-center-background "#005f87")

;;         (visual-outer-foreground  "#1a1a18") (visual-outer-background  "#ffffff")
;;         (visual-inner-foreground  "#ffffff") (visual-inner-background  "#44403a")
;;         (visual-center-foreground "#90a680") (visual-center-background "#2e2d2a")

;;         (replace-outer-foreground "#9e9e9e") (replace-outer-background "#af0000")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
;;         (inactive2-foreground "#4e4e4e") (inactive2-background "#262626"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-hybridline ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/hybridline.vim

;;   (let ((normal-outer-foreground  "#282a2e") (normal-outer-background  "#c5c8c6")
;;         (normal-inner-foreground  "#c5c8c6") (normal-inner-background  "#373b41")
;;         (normal-center-foreground "#ffffff") (normal-center-background "#282a2e")

;;         (insert-outer-foreground  "#005f5f") (insert-outer-background  "#8abeb7")
;;         (insert-inner-foreground  "#c5c8c6") (insert-inner-background  "#0087af")
;;         (insert-center-foreground "#ffffff") (insert-center-background "#005f87")

;;         (visual-outer-foreground  "#000000") (visual-outer-background  "#de935f")
;;         (visual-inner-foreground  "#c5c8c6") (visual-inner-background  "#373b41")
;;         (visual-center-foreground "#ffffff") (visual-center-background "#282a2e")

;;         (replace-outer-foreground "#000000") (replace-outer-background "#cc6666")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
;;         (inactive2-foreground "#4e4e4e") (inactive2-background "#262626"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-kalisi ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/kalisi.vim

;;   (let ((normal-outer-foreground  "#005f00") (normal-outer-background  "#afd700")
;;         (normal-inner-foreground  "#afd700") (normal-inner-background  "#005f00")
;;         (normal-center-foreground "#b5b5b5") (normal-center-background "#222222")

;;         (insert-outer-foreground  "#ffffff") (insert-outer-background  "#e80000")
;;         (insert-inner-foreground  "#ff0000") (insert-inner-background  "#5f0000")
;;         (insert-center-foreground "#b5b5b5") (insert-center-background "#222222")

;;         (visual-outer-foreground  "#0087ff") (visual-outer-background  "#ffffff")
;;         (visual-inner-foreground  "#005faf") (visual-inner-background  "#5fafff")
;;         (visual-center-foreground "#87d7ff") (visual-center-background "#005faf")

;;         (replace-outer-foreground "#5f005f") (replace-outer-background "#d75fff")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#857b6f") (inactive1-background "#303032")
;;         (inactive2-foreground "#857b6f") (inactive2-background "#303032"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-kolor ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/kolor.vim

;;   (let ((normal-outer-foreground  "#e2e2e2") (normal-outer-background  "#4f3598")
;;         (normal-inner-foreground  "#ff5fd7") (normal-inner-background  "#242322")
;;         (normal-center-foreground "#e2e2e2") (normal-center-background "#4a4a4a")

;;         (insert-outer-foreground  "#242322") (insert-outer-background  "#7eaefd")
;;         (insert-inner-foreground  "#75d7d8") (insert-inner-background  "#242322")
;;         (insert-center-foreground "#e2e2e2") (insert-center-background "#4a4a4a")

;;         (visual-outer-foreground  "#242322") (visual-outer-background  "#e6987a")
;;         (visual-inner-foreground  "#dbc570") (visual-inner-background  "#242322")
;;         (visual-center-foreground "#e2e2e2") (visual-center-background "#4a4a4a")

;;         (replace-outer-foreground "#75d7d8") (replace-outer-background "#005154")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#b2b2b2") (inactive1-background "#4a4a4a")
;;         (inactive2-foreground "#b2b2b2") (inactive2-background "#4a4a4a"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-understated ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/understated.vim

;;   (let ((normal-outer-foreground  "#FFFFFF") (normal-outer-background  "#5F87FF")
;;         (normal-inner-foreground  "#AFAF87") (normal-inner-background  "#5F5F5F")
;;         (normal-center-foreground "#AFAF87") (normal-center-background "#5F5F5F")

;;         (insert-outer-foreground  "#FFFFFF") (insert-outer-background  "#87AF5F")
;;         (insert-inner-foreground  "#AFAF87") (insert-inner-background  "#5F5F5F")
;;         (insert-center-foreground "#AFAF87") (insert-center-background "#5F5F5F")

;;         (visual-outer-foreground  "#FFFFFF") (visual-outer-background  "#AF5F00")
;;         (visual-inner-foreground  "#AFAF87") (visual-inner-background  "#5F5F5F")
;;         (visual-center-foreground "#AFAF87") (visual-center-background "#5F5F5F")

;;         (replace-outer-foreground "#ff0000") (replace-outer-background "#870000")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
;;         (inactive2-foreground "#4e4e4e") (inactive2-background "#1c1c1c"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-ubaryd ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/ubaryd.vim

;;   (let ((normal-outer-foreground  "#141413") (normal-outer-background  "#c7b386")
;;         (normal-inner-foreground  "#c7b386") (normal-inner-background  "#45413b")
;;         (normal-center-foreground "#b88853") (normal-center-background "#242321")

;;         (insert-outer-foreground  "#1a1a18") (insert-outer-background  "#fade3e")
;;         (insert-inner-foreground  "#c7b386") (insert-inner-background  "#45413b")
;;         (insert-center-foreground "#f4cf86") (insert-center-background "#242321")

;;         (visual-outer-foreground  "#1c1b1a") (visual-outer-background  "#9a4820")
;;         (visual-inner-foreground  "#000000") (visual-inner-background  "#88633f")
;;         (visual-center-foreground "#88633f") (visual-center-background "#c7b386")

;;         (replace-outer-foreground "#1a1a18") (replace-outer-background "#c7915b")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#45413b") (inactive1-background "#242321")
;;         (inactive2-foreground "#45413b") (inactive2-background "#242321"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-base16-dark-shell ()
;;   "Designed for use with base16-shell

;; url: https://github.com/chriskempson/base16-shell"
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/base16.vim

;;   (let ((normal-outer-foreground  "color-18") (normal-outer-background  "blue")
;;         (normal-inner-foreground  "color-20") (normal-inner-background  "color-19")
;;         (normal-center-foreground "color-20") (normal-center-background "color-18")

;;         (insert-outer-foreground  "color-18") (insert-outer-background  "green")
;;         (insert-inner-foreground  "green")    (insert-inner-background  "black")
;;         (insert-center-foreground "color-20") (insert-center-background "color-18")

;;         (visual-outer-foreground  "color-18") (visual-outer-background  "color-16")
;;         (visual-inner-foreground  "color-16") (visual-inner-background  "black")
;;         (visual-center-foreground "color-20") (visual-center-background "color-18")

;;         (replace-outer-foreground "color-18") (replace-outer-background "red")
;;         (emacs-outer-foreground   "color-18") (emacs-outer-background   "magenta")

;;         (inactive1-foreground "color-19") (inactive1-background "color-18")
;;         (inactive2-foreground "color-19") (inactive2-background "color-18"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-base16-dark-gui ()
;;   "Designed for use with the base16 emacs color schemes in the gui

;; url: https://github.com/mkaito/base16-emacs"
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/base16.vim

;;   (let ((normal-outer-foreground  (face-background 'highlight))          (normal-outer-background  (face-foreground 'link))
;;         (normal-inner-foreground  (face-foreground 'font-lock-doc-face)) (normal-inner-background  (face-background 'fringe))
;;         (normal-center-foreground (face-foreground 'font-lock-doc-face)) (normal-center-background (face-background 'highlight))

;;         (insert-outer-foreground  (face-background 'highlight))          (insert-outer-background  (face-foreground 'success))
;;         (insert-inner-foreground  (face-foreground 'success))            (insert-inner-background  (face-background 'default))
;;         (insert-center-foreground (face-foreground 'font-lock-doc-face)) (insert-center-background (face-background 'highlight))

;;         (visual-outer-foreground  (face-background 'highlight))          (visual-outer-background  (face-foreground 'warning))
;;         (visual-inner-foreground  (face-foreground 'warning))            (visual-inner-background  (face-background 'default))
;;         (visual-center-foreground (face-foreground 'font-lock-doc-face)) (visual-center-background (face-background 'highlight))

;;         (replace-outer-foreground (face-background 'highlight)) (replace-outer-background (face-foreground 'error))
;;         (emacs-outer-foreground   (face-background 'highlight)) (emacs-outer-background   (face-foreground 'link-visited))

;;         (inactive1-foreground (face-foreground 'font-lock-doc-face)) (inactive1-background (face-foreground 'highlight))
;;         (inactive2-foreground (face-foreground 'font-lock-doc-face)) (inactive2-background (face-foreground 'highlight)))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-base16-light-gui ()
;;   "Designed for use with the base16 emacs color schemes in the gui

;; url: https://github.com/mkaito/base16-emacs"
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/base16.vim

;;   (let ((normal-outer-foreground  (face-background 'default)) (normal-outer-background  (face-foreground 'link))
;;         (normal-inner-foreground  (face-background 'fringe))  (normal-inner-background  (face-foreground 'rainbow-delimiters-depth-9-face))
;;         (normal-center-foreground (face-background 'fringe))  (normal-center-background (face-foreground 'mode-line-emphasis))
;;         (ansi-color-names-vector)

;;         (insert-outer-foreground  (face-background 'highlight)) (insert-outer-background  (face-foreground 'success))
;;         (insert-inner-foreground  (face-foreground 'success))   (insert-inner-background  (face-background 'default))
;;         (insert-center-foreground (face-background 'fringe))    (insert-center-background (face-foreground 'mode-line-emphasis))

;;         (visual-outer-foreground  (face-background 'highlight)) (visual-outer-background  (face-foreground 'warning))
;;         (visual-inner-foreground  (face-foreground 'warning))   (visual-inner-background  (face-background 'default))
;;         (visual-center-foreground (face-background 'fringe))    (visual-center-background (face-foreground 'mode-line-emphasis))

;;         (replace-outer-foreground (face-background 'highlight)) (replace-outer-background (face-foreground 'error))
;;         (emacs-outer-foreground   (face-background 'highlight)) (emacs-outer-background   (face-foreground 'link-visited))

;;         (inactive1-foreground (face-foreground 'font-lock-doc-face)) (inactive1-background (face-foreground 'mode-line-emphasis))
;;         (inactive2-foreground (face-foreground 'font-lock-doc-face)) (inactive2-background (face-foreground 'mode-line-emphasis)))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-solarized-alternate-gui ()
;;   ""
;;   (interactive)
;;   (let ((normal-outer-foreground  (face-background 'highlight)) (normal-outer-background  (face-foreground 'font-lock-function-name-face))
;;         (normal-inner-foreground  (face-foreground 'fringe))    (normal-inner-background  (face-background 'fringe))
;;         (normal-center-foreground (face-foreground 'highlight)) (normal-center-background (face-background 'highlight))

;;         (insert-outer-foreground  (face-background 'highlight)) (insert-outer-background  (face-foreground 'success))
;;         (insert-inner-foreground  (face-foreground 'success))   (insert-inner-background  (face-background 'fringe))
;;         (insert-center-foreground (face-foreground 'highlight)) (insert-center-background (face-background 'highlight))

;;         (visual-outer-foreground  (face-background 'highlight))          (visual-outer-background  (face-foreground 'font-lock-doc-face))
;;         (visual-inner-foreground  (face-foreground 'font-lock-doc-face)) (visual-inner-background  (face-background 'fringe))
;;         (visual-center-foreground (face-foreground 'highlight))          (visual-center-background (face-background 'highlight))

;;         (replace-outer-foreground (face-background 'highlight)) (replace-outer-background (face-foreground 'error))
;;         (emacs-outer-foreground   (face-background 'highlight)) (emacs-outer-background   (face-foreground 'escape-glyph))

;;         (inactive1-foreground (face-foreground 'fringe)) (inactive1-background (face-foreground 'highlight))
;;         (inactive2-foreground (face-foreground 'fringe)) (inactive2-background (face-foreground 'highlight)))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-solarized-gui ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/solarized.vim

;;   (let ((normal-outer-foreground  (face-background 'highlight)) (normal-outer-background  (face-background 'region))
;;         (normal-inner-foreground  (face-background 'default))   (normal-inner-background  (face-foreground 'fringe))
;;         (normal-center-foreground (face-foreground 'fringe))    (normal-center-background (face-background 'highlight))

;;         (insert-outer-foreground  (face-background 'highlight)) (insert-outer-background  (face-foreground 'link))
;;         (insert-inner-foreground  (face-background 'default))   (insert-inner-background  (face-foreground 'fringe))
;;         (insert-center-foreground (face-foreground 'fringe))    (insert-center-background (face-background 'highlight))

;;         (visual-outer-foreground  (face-background 'highlight)) (visual-outer-background  (face-background 'isearch))
;;         (visual-inner-foreground  (face-background 'default))   (visual-inner-background  (face-foreground 'fringe))
;;         (visual-center-foreground (face-foreground 'fringe))    (visual-center-background (face-background 'highlight))

;;         (replace-outer-foreground (face-background 'highlight)) (replace-outer-background (face-foreground 'error))
;;         (emacs-outer-foreground   (face-background 'highlight)) (emacs-outer-background   (face-foreground 'escape-glyph))

;;         (inactive1-foreground (face-foreground 'fringe)) (inactive1-background (face-foreground 'highlight))
;;         (inactive2-foreground (face-foreground 'fringe)) (inactive2-background (face-foreground 'highlight)))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-sol ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/sol.vim

;;   (let ((normal-outer-foreground  "#343434") (normal-outer-background  "#a0a0a0")
;;         (normal-inner-foreground  "#343434") (normal-inner-background  "#b3b3b3")
;;         (normal-center-foreground "#343434") (normal-center-background "#c7c7c7")

;;         (insert-outer-foreground  "#eeeeee") (insert-outer-background  "#09643f")
;;         (insert-inner-foreground  "#343434") (insert-inner-background  "#a3a3a3")
;;         (insert-center-foreground "#343434") (insert-center-background "#b0b0b0")

;;         (visual-outer-foreground  "#ffff9a") (visual-outer-background  "#ff6003")
;;         (visual-inner-foreground  "#343434") (visual-inner-background  "#a3a3a3")
;;         (visual-center-foreground "#343434") (visual-center-background "#b0b0b0")

;;         (replace-outer-foreground "#eeeeee") (replace-outer-background "#ff2121")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#777777") (inactive1-background "#c7c7c7")
;;         (inactive2-foreground "#777777") (inactive2-background "#c7c7c7"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-simple ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/simple.vim

;;   (let ((normal-outer-foreground  "#080808") (normal-outer-background  "#00dfff")
;;         (normal-inner-foreground  "#ff5f00") (normal-inner-background  "#1c1c1c")
;;         (normal-center-foreground "#767676") (normal-center-background "#080808")

;;         (insert-outer-foreground  "#080808") (insert-outer-background  "#5fff00")
;;         (insert-inner-foreground  "#ff5f00") (insert-inner-background  "#1c1c1c")
;;         (insert-center-foreground "#767676") (insert-center-background "#080808")

;;         (visual-outer-foreground  "#080808") (visual-outer-background  "#dfdf00")
;;         (visual-inner-foreground  "#ff5f00") (visual-inner-background  "#1c1c1c")
;;         (visual-center-foreground "#767676") (visual-center-background "#080808")

;;         (replace-outer-foreground "#080808") (replace-outer-background "#af0000")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#4e4e4e") (inactive1-background "#1c1c1c")
;;         (inactive2-foreground "#4e4e4e") (inactive2-background "#080808"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-silver ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/silver.vim

;;   (let ((normal-outer-foreground  "#414141") (normal-outer-background  "#e1e1e1")
;;         (normal-inner-foreground  "#414141") (normal-inner-background  "#e1e1e1")
;;         (normal-center-foreground "#414141") (normal-center-background "#e1e1e1")

;;         (insert-outer-foreground  "#0d935c") (insert-outer-background  "#e1e1e1")
;;         (insert-inner-foreground  "#0d935c") (insert-inner-background  "#e1e1e1")
;;         (insert-center-foreground "#0d935c") (insert-center-background "#e1e1e1")

;;         (visual-outer-foreground  "#0000b3") (visual-outer-background  "#e1e1e1")
;;         (visual-inner-foreground  "#0000b3") (visual-inner-background  "#e1e1e1")
;;         (visual-center-foreground "#0000b3") (visual-center-background "#e1e1e1")

;;         (replace-outer-foreground "#b30000") (replace-outer-background "#e1e1e1")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#a1a1a1") (inactive1-background "#dddddd")
;;         (inactive2-foreground "#a1a1a1") (inactive2-background "#dddddd"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors-foreground)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-serene ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/serene.vim

;;   (let ((normal-outer-foreground  "#00dfff") (normal-outer-background  "#080808")
;;         (normal-inner-foreground  "#ff5f00") (normal-inner-background  "#080808")
;;         (normal-center-foreground "#767676") (normal-center-background "#080808")

;;         (insert-outer-foreground  "#5fff00") (insert-outer-background  "#080808")
;;         (insert-inner-foreground  "#ff5f00") (insert-inner-background  "#080808")
;;         (insert-center-foreground "#767676") (insert-center-background "#080808")

;;         (visual-outer-foreground  "#dfdf00") (visual-outer-background  "#080808")
;;         (visual-inner-foreground  "#ff5f00") (visual-inner-background  "#080808")
;;         (visual-center-foreground "#767676") (visual-center-background "#080808")

;;         (replace-outer-foreground "#5fff00") (replace-outer-background "#af0000")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#4e4e4e") (inactive1-background "#080808")
;;         (inactive2-foreground "#4e4e4e") (inactive2-background "#303030"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors-foreground)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-raven ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/raven.vim

;;   (let ((normal-outer-foreground  "#c8c8c8") (normal-outer-background  "#2e2e2e")
;;         (normal-inner-foreground  "#c8c8c8") (normal-inner-background  "#2e2e2e")
;;         (normal-center-foreground "#c8c8c8") (normal-center-background "#2e2e2e")

;;         (insert-outer-foreground  "#11c279") (insert-outer-background  "#2e2e2e")
;;         (insert-inner-foreground  "#11c279") (insert-inner-background  "#2e2e2e")
;;         (insert-center-foreground "#11c279") (insert-center-background "#2e2e2e")

;;         (visual-outer-foreground  "#6565ff") (visual-outer-background  "#2e2e2e")
;;         (visual-inner-foreground  "#6565ff") (visual-inner-background  "#2e2e2e")
;;         (visual-center-foreground "#6565ff") (visual-center-background "#2e2e2e")

;;         (replace-outer-foreground "#e60000") (replace-outer-background "#2e2e2e")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#5e5e5e") (inactive1-background "#222222")
;;         (inactive2-foreground "#5e5e5e") (inactive2-background "#222222"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors-foreground)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

;; ;;;###autoload
;; (defun airline-theme-luna ()
;;   ""
;;   (interactive)
;;   ;; https://github.com/bling/vim-airline/blob/master/autoload/airline/themes/luna.vim

;;   (let ((normal-outer-foreground  "#ffffff") (normal-outer-background  "#005252")
;;         (normal-inner-foreground  "#ffffff") (normal-inner-background  "#003f3f")
;;         (normal-center-foreground "#ffffff") (normal-center-background "#002b2b")

;;         (insert-outer-foreground  "#ffffff") (insert-outer-background  "#789f00")
;;         (insert-inner-foreground  "#ffffff") (insert-inner-background  "#003f3f")
;;         (insert-center-foreground "#ffffff") (insert-center-background "#002b2b")

;;         (visual-outer-foreground  "#ffff9a") (visual-outer-background  "#ff8036")
;;         (visual-inner-foreground  "#ffffff") (visual-inner-background  "#003f3f")
;;         (visual-center-foreground "#ffffff") (visual-center-background "#002b2b")

;;         (replace-outer-foreground "#ffffff") (replace-outer-background "#920000")
;;         (emacs-outer-foreground   "#d7d7ff") (emacs-outer-background   "#5f00af")

;;         (inactive1-foreground "#4e4e4e") (inactive1-background "#002b2b")
;;         (inactive2-foreground "#4e4e4e") (inactive2-background "#002b2b"))

;;     (airline-themes-set-face-colors)
;;     (airline-themes-set-cursor-colors)
;;     (airline-themes-set-helm-faces)
;;   )
;;   (airline-themes-set-modeline)
;; )

(defun airline-themes-set-modeline ()
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
(defun airline-theme-light ()
  (interactive)
  (load-theme 'airline-light)
  ;; (airline-themes-set-cursor-colors)
  (airline-themes-set-modeline)
)

(defun airline-themes-set-deftheme (theme-name)
  "Set appropriate face attributes"

  (custom-theme-set-faces
   theme-name
   `(which-func            ((t ( :foreground ,normal-center-foreground :background ,normal-center-background :bold t))))

   (when airline-helm-colors
     `(helm-header           ((t ( :foreground ,insert-inner-foreground  :background ,insert-inner-background  :bold t))))
     `(helm-selection        ((t ( :foreground ,insert-outer-foreground  :background ,insert-outer-background  :bold t))))
     `(helm-source-header    ((t ( :foreground ,insert-center-foreground :background ,insert-center-background :bold t))))
     `(helm-candidate-number ((t ( :foreground ,normal-inner-foreground  :background ,normal-inner-background  :bold t))))
     `(helm-selection-line   ((t ( :foreground ,normal-center-foreground :background ,normal-center-background :bold t)))))

   `(airline-normal-outer  ((t ( :foreground normal-outer-foreground  :background normal-outer-background))))
   `(airline-normal-inner  ((t ( :foreground normal-inner-foreground  :background normal-inner-background))))
   `(airline-normal-center ((t ( :foreground normal-center-foreground :background normal-center-background))))
   `(airline-insert-outer  ((t ( :foreground insert-outer-foreground  :background insert-outer-background))))
   `(airline-insert-inner  ((t ( :foreground insert-inner-foreground  :background insert-inner-background))))
   `(airline-insert-center ((t ( :foreground insert-center-foreground :background insert-center-background))))
   `(airline-visual-outer  ((t ( :foreground visual-outer-foreground  :background visual-outer-background))))
   `(airline-visual-inner  ((t ( :foreground visual-inner-foreground  :background visual-inner-background))))
   `(airline-visual-center ((t ( :foreground visual-center-foreground :background visual-center-background))))
   `(airline-replace-outer ((t ( :foreground replace-outer-foreground :background replace-outer-background))))
   `(airline-emacs-outer   ((t ( :foreground emacs-outer-foreground   :background emacs-outer-background))))
   `(powerline-inactive1   ((t ( :foreground inactive1-foreground     :background inactive1-background))))
   `(powerline-inactive2   ((t ( :foreground inactive2-foreground     :background inactive2-background))))
   `(mode-line             ((t ( :foreground normal-center-foreground :background normal-center-background :box nil :underline nil :overline nil))))
   `(mode-line-inactive    ((t ( :foreground inactive1-foreground     :background inactive1-background     :box nil :underline nil :overline nil))))
   `(mode-line-buffer-id   ((t ( :foreground normal-outer-foreground  :background normal-outer-background  :box nil :underline nil :overline nil))))
   `(minibuffer-prompt     ((t ( :foreground normal-outer-foreground  :background normal-outer-background  :box nil))))
  )
)

(defun airline-themes-set-cursor-colors ()
  "Set Cursor Colors - only seems to work in the gui"
  (interactive)
  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-background)
     (setq evil-insert-state-cursor  insert-outer-background)
     (setq evil-replace-state-cursor replace-outer-background)
     (setq evil-visual-state-cursor  visual-outer-background))))

(defun airline-themes-set-cursor-colors-foreground ()
  "Set Cursor Colors - only seems to work in the gui"
  (interactive)
  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-outer-foreground)
     (setq evil-insert-state-cursor  insert-outer-foreground)
     (setq evil-replace-state-cursor replace-outer-foreground)
     (setq evil-visual-state-cursor  visual-outer-foreground))))

(defun airline-themes-set-cursor-colors-center ()
  "Set Cursor Colors - only seems to work in the gui"
  (interactive)
  (when airline-cursor-colors
    (progn
     (setq evil-emacs-state-cursor   emacs-outer-background)
     (setq evil-normal-state-cursor  normal-center-background)
     (setq evil-insert-state-cursor  insert-center-background)
     (setq evil-replace-state-cursor replace-outer-foreground)
     (setq evil-visual-state-cursor  visual-center-background))))

(defun airline-themes-set-helm-faces ()
  "Set the airline helm colors"
  (interactive)
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
