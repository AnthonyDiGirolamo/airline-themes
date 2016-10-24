;;; airline-themes.el --- vim-airline themes for emacs powerline

;; Author: Anthony DiGirolamo <anthony.digirolamo@gmail.com>
;; URL: http://github.com/AnthonyDiGirolamo/airline-themes
;; Version: 1.7
;; Keywords: evil, mode-line, powerline, airline, themes
;; Package-Requires: ((powerline "2.3"))

;;; Commentary:
;;
;; vim-airline themes https://github.com/vim-airline/vim-airline for emacs powerline https://github.com/milkypostman/powerline
;;

;;; Code:

(require 'powerline)
(require 'cl-lib)

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
(defface airline-replace-inner  '((t (:foreground "#f4cf86" :background "#45413b" :weight normal))) "Airline Replace Inner Face"  :group 'airline-themes)
(defface airline-replace-center '((t (:foreground "#8cffba" :background "#242321" :weight normal))) "Airline Replace Center Face" :group 'airline-themes)

(defface airline-emacs-outer   '((t (:foreground "#d7d7ff" :background "#5f00af" :weight normal))) "Airline Emacs Outer Face"   :group 'airline-themes)
(defface airline-emacs-inner  '((t (:foreground "#f4cf86" :background "#45413b" :weight normal))) "Airline Emacs Inner Face"  :group 'airline-themes)
(defface airline-emacs-center '((t (:foreground "#8cffba" :background "#242321" :weight normal))) "Airline Emacs Center Face" :group 'airline-themes)

(defface airline-inactive3 '((t (:foreground "#45413b" :background "#242321" :weight normal))) "Airline Inactive Center Face" :group 'airline-themes)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(defcustom airline-shortened-directory-length 30
  "Set the desired directory length."

  :group 'airline-themes
  :type '(integer))

(defcustom airline-eshell-colors t
  "Set eshell prompt colors to match the airline theme.

Valid Values: t (enabled), nil (disabled)"
  :group 'airline-themes
  :type '(choice (const :tag "Enabled" t)
                 (const :tag "Disabled" nil)))

(defcustom airline-helm-colors t
  "Set helm colors to match the airline theme.

Valid Values: t (enabled), nil (disabled)"
  :group 'airline-themes
  :type '(choice (const :tag "Enabled" t)
                 (const :tag "Disabled" nil)))

(defcustom airline-cursor-colors t
  "Set the cursor color based on the current evil state.

Valid Values: t (enabled), nil (disabled)"
  :group 'airline-themes
  :type '(choice (const :tag "Enabled" t)
                 (const :tag "Disabled" nil)))

(defcustom airline-display-directory 'airline-directory-shortened
  "Display the currend directory along with the filename.

Valid Values: airline-directory-full, airline-directory-shortened, nil (disabled)"
  :group 'airline-themes
  :type '(choice (const :tag "Full" airline-directory-full)
                 (const :tag "Shortened" airline-directory-shortened)
                 (const :tag "Disabled" nil)))

(defcustom airline-utf-glyph-separator-left #x2b80
  "The unicode character number used for the left side separator."
  :group 'airline-themes
  :type '(choice (const :tag "powerline #xe0b0"     #xe0b0)
                 (const :tag "vim-powerline #x2b80" #x2b80)))

(defcustom airline-utf-glyph-separator-right #x2b82
  "The unicode character number used for the right side separator."
  :group 'airline-themes
  :type '(choice (const :tag "powerline #xe0b2"     #xe0b2)
                 (const :tag "vim-powerline #x2b82" #x2b82)))

(defcustom airline-utf-glyph-subseparator-left #x2b81
  "The unicode character number used for the left side subseparator."
  :group 'airline-themes
  :type '(choice (const :tag "powerline #xe0b1"     #xe0b1)
                 (const :tag "vim-powerline #x2b81" #x2b81)))

(defcustom airline-utf-glyph-subseparator-right #x2b83
  "The unicode character number used for the right side subseparator."
  :group 'airline-themes
  :type '(choice (const :tag "powerline #xe0b3"     #xe0b3)
                 (const :tag "vim-powerline #x2b83" #x2b83)))

(defcustom airline-utf-glyph-branch #x2b60
  "The unicode character number used for the branch symbol."
  :group 'airline-themes
  :type '(choice (const :tag "powerline #xe0a0"     #xe0a0)
                 (const :tag "vim-powerline #x2b60" #x2b60)))

(defcustom airline-utf-glyph-readonly #x2b64
  "The unicode character number used for the readonly symbol."
  :group 'airline-themes
  :type '(choice (const :tag "powerline #xe0a2"     #xe0a2)
                 (const :tag "vim-powerline #x2b64" #x2b64)))

(defcustom airline-utf-glyph-linenumber #x2b61
  "The unicode character number used for the linenumber symbol."
  :group 'airline-themes
  :type '(choice (const :tag "powerline #xe0a1"     #xe0a1)
                 (const :tag "vim-powerline #x2b61" #x2b61)))

(defun airline-themes-set-eshell-prompt ()
  "Set the eshell prompt"

  (setq eshell-highlight-prompt t
        eshell-prompt-regexp "^ [^#$]* [#$] "
        eshell-prompt-function
        (lambda ()
          (concat
           (propertize (concat " " (eshell/whoami) " ") 'face
                       `(:foreground ,(face-foreground 'airline-insert-outer) :background ,(face-background 'airline-insert-outer)))

           (propertize (concat (char-to-string airline-utf-glyph-separator-left) " ") 'face
                       `(:foreground ,(face-background 'airline-insert-outer) :background ,(face-background 'airline-insert-inner)))


           (if (eq airline-display-directory 'airline-directory-shortened)
             (propertize (concat (airline-shorten-directory (eshell/pwd) airline-shortened-directory-length) " ") 'face
                         `(:foreground ,(face-foreground 'airline-insert-inner) :background ,(face-background 'airline-insert-inner)))
             (propertize (concat (abbreviate-file-name (eshell/pwd)) " ") 'face
                         `(:foreground ,(face-foreground 'airline-insert-inner) :background ,(face-background 'airline-insert-inner)))
           )

           (propertize (concat (char-to-string airline-utf-glyph-separator-left) " ") 'face
                       `(:foreground ,(face-background 'airline-insert-inner) :background ,(face-background 'airline-insert-center)))

           (propertize (concat (airline-curr-dir-git-branch-string (eshell/pwd)) " ") 'face
                       `(:foreground ,(face-foreground 'airline-insert-center) :background ,(face-background 'airline-insert-center)))

           (propertize (concat (char-to-string airline-utf-glyph-separator-left)) 'face
                       `(:foreground ,(face-background 'airline-insert-center)))

           (propertize " $ " 'face `())
           ))))

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
                          (visual-block (if (featurep 'evil)
                                            (and (evil-visual-state-p)
                                                 (eq evil-visual-selection 'block))
                                          nil))
                          (visual-line (if (featurep 'evil)
                                           (and (evil-visual-state-p)
                                                (eq evil-visual-selection 'line))
                                         nil))
                          (current-evil-state-string (if (featurep 'evil)
                                                         (upcase (concat (symbol-name evil-state)
                                                                         (cond (visual-block "-BLOCK")
                                                                               (visual-line "-LINE"))))
                                                       nil))

                          (outer-face
                           (if (powerline-selected-window-active)
                               (if (featurep 'evil)
                                   (cond ((eq evil-state (intern "normal"))  'airline-normal-outer)
                                         ((eq evil-state (intern "insert"))  'airline-insert-outer)
                                         ((eq evil-state (intern "visual"))  'airline-visual-outer)
                                         ((eq evil-state (intern "replace")) 'airline-replace-outer)
                                         ((eq evil-state (intern "emacs"))   'airline-emacs-outer)
                                         (t                                  'airline-normal-outer))
                                 'airline-normal-outer)
                             'powerline-inactive1))

                          (inner-face
                           (if (powerline-selected-window-active)
                               (if (featurep 'evil)
                                   (cond ((eq evil-state (intern "normal")) 'airline-normal-inner)
                                         ((eq evil-state (intern "insert")) 'airline-insert-inner)
                                         ((eq evil-state (intern "visual")) 'airline-visual-inner)
                                         ((eq evil-state (intern "replace")) 'airline-replace-inner)
                                         ((eq evil-state (intern "emacs"))   'airline-emacs-inner)
                                         (t                                 'airline-normal-inner))
                                 'airline-normal-inner)
                             'powerline-inactive2))

                          (center-face
                           (if (powerline-selected-window-active)
                               (if (featurep 'evil)
                                   (cond ((eq evil-state (intern "normal")) 'airline-normal-center)
                                         ((eq evil-state (intern "insert")) 'airline-insert-center)
                                         ((eq evil-state (intern "visual")) 'airline-visual-center)
                                         ((eq evil-state (intern "replace")) 'airline-replace-center)
                                         ((eq evil-state (intern "emacs"))   'airline-emacs-center)
                                         (t                                 'airline-normal-center))
                                 'airline-normal-center)
                             'airline-inactive3))

                          ;; Left Hand Side
                          (lhs-mode (if (featurep 'evil)
                                        (list
                                         ;; Evil Mode Name
                                         (powerline-raw (concat " " current-evil-state-string " ") outer-face)
                                         (funcall separator-left outer-face inner-face)
                                         ;; Modified string
                                         (powerline-raw "%*" inner-face 'l)
                                         )
                                        (list
                                         ;; Modified string
                                         (powerline-raw "%*" outer-face 'l)
                                         ;; Separator >
                                         (powerline-raw " " outer-face)
                                         (funcall separator-left outer-face inner-face))))

                          (lhs-rest (list
                                     ;; ;; Separator >
                                     ;; (powerline-raw (char-to-string #x2b81) inner-face 'l)

                                     ;; Eyebrowse current tab/window config
                                     (if (featurep 'eyebrowse)
                                         (powerline-raw (concat " " (eyebrowse-mode-line-indicator)) inner-face))

                                     ;; Git Branch
                                     (powerline-raw (airline-get-vc) inner-face)

                                     ;; Separator >
                                     (powerline-raw " " inner-face)
                                     (funcall separator-left inner-face center-face)

                                     ;; Directory
                                     (when (eq airline-display-directory 'airline-directory-shortened)
                                       (powerline-raw (airline-shorten-directory default-directory airline-shortened-directory-length) center-face 'l))
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

                          (lhs (append lhs-mode lhs-rest))

                          ;; Right Hand Side
                          (rhs (list (powerline-raw global-mode-string center-face 'r)

                                     ;; ;; Separator <
                                     ;; (powerline-raw (char-to-string #x2b83) center-face 'l)

                                     ;; Minor Modes
                                     (powerline-minor-modes center-face 'l)
                                     ;; (powerline-narrow center-face 'l)

                                     ;; Subseparator <
                                     (powerline-raw (char-to-string airline-utf-glyph-subseparator-right) center-face 'l)

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

                                     ;; LN charachter
                                     (powerline-raw (char-to-string airline-utf-glyph-linenumber) outer-face 'l)

                                     ;; Current Line
                                     (powerline-raw "%4l" outer-face 'l)
                                     (powerline-raw ":" outer-face 'l)
                                     ;; Current Column
                                     (powerline-raw "%3c" outer-face 'r)

                                     ;; % location in file
                                     (powerline-raw "%6p" outer-face 'r)

                                     ;; position in file image
                                     (when powerline-display-hud
                                       (powerline-hud inner-face outer-face)))
                               ))

                     ;; Combine Left and Right Hand Sides
                     (concat (powerline-render lhs)
                             (powerline-fill center-face (powerline-width rhs))
                             (powerline-render rhs))))))
  (powerline-reset)
  (kill-local-variable 'mode-line-format))

(defun airline-themes-set-deftheme (theme-name)
  "Set appropriate face attributes"

  (when airline-eshell-colors
    (airline-themes-set-eshell-prompt))

  (when airline-helm-colors
    (custom-theme-set-faces
     theme-name
     `(helm-header           ((t ( :foreground ,insert-inner-foreground  :background ,insert-inner-background  :bold t))))
     `(helm-selection        ((t ( :foreground ,insert-outer-foreground  :background ,insert-outer-background  :bold t))))
     `(helm-source-header    ((t ( :foreground ,insert-center-foreground :background ,insert-center-background :bold t))))
     `(helm-candidate-number ((t ( :foreground ,normal-inner-foreground  :background ,normal-inner-background  :bold t))))
     `(helm-selection-line   ((t ( :foreground ,normal-center-foreground :background ,normal-center-background :bold t))))))

  (custom-theme-set-faces
   theme-name
   `(which-func            ((t ( :foreground ,normal-center-foreground :background ,normal-center-background :bold t))))

   `(airline-normal-outer  ((t ( :foreground ,normal-outer-foreground  :background ,normal-outer-background))))
   `(airline-normal-inner  ((t ( :foreground ,normal-inner-foreground  :background ,normal-inner-background))))
   `(airline-normal-center ((t ( :foreground ,normal-center-foreground :background ,normal-center-background))))
   `(airline-insert-outer  ((t ( :foreground ,insert-outer-foreground  :background ,insert-outer-background))))
   `(airline-insert-inner  ((t ( :foreground ,insert-inner-foreground  :background ,insert-inner-background))))
   `(airline-insert-center ((t ( :foreground ,insert-center-foreground :background ,insert-center-background))))
   `(airline-visual-outer  ((t ( :foreground ,visual-outer-foreground  :background ,visual-outer-background))))
   `(airline-visual-inner  ((t ( :foreground ,visual-inner-foreground  :background ,visual-inner-background))))
   `(airline-visual-center ((t ( :foreground ,visual-center-foreground :background ,visual-center-background))))
   `(airline-replace-outer ((t ( :foreground ,replace-outer-foreground :background ,replace-outer-background))))
   `(airline-replace-inner  ((t ( :foreground ,replace-inner-foreground  :background ,replace-inner-background))))
   `(airline-replace-center ((t ( :foreground ,replace-center-foreground :background ,replace-center-background))))
   `(airline-emacs-outer   ((t ( :foreground ,emacs-outer-foreground   :background ,emacs-outer-background))))
   `(airline-emacs-inner  ((t ( :foreground ,emacs-inner-foreground  :background ,emacs-inner-background))))
   `(airline-emacs-center ((t ( :foreground ,emacs-center-foreground :background ,emacs-center-background))))
   `(powerline-inactive1   ((t ( :foreground ,inactive1-foreground     :background ,inactive1-background))))
   `(powerline-inactive2   ((t ( :foreground ,inactive2-foreground     :background ,inactive2-background))))
   `(airline-inactive3   ((t ( :foreground ,inactive3-foreground     :background ,inactive3-background))))
   `(mode-line             ((t ( :foreground ,normal-center-foreground :background ,normal-center-background :box nil :underline nil :overline nil))))
   `(mode-line-inactive    ((t ( :foreground ,inactive1-foreground     :background ,inactive1-background     :box nil :underline nil :overline nil))))
   `(mode-line-buffer-id   ((t ( :foreground ,normal-outer-foreground  :background ,normal-outer-background  :box nil :underline nil :overline nil))))
   `(minibuffer-prompt     ((t ( :foreground ,normal-outer-foreground  :background ,normal-outer-background  :box nil))))
  ))

(defun airline-curr-dir-git-branch-string (pwd)
  "Returns current git branch as a string, or the empty string if
PWD is not in a git repo (or the git command is not found)."
  (interactive)
  (if (featurep 'magit)
      (magit-get-current-branch)
    (when (and (not (string-match "^\/ssh:" pwd))
               (eshell-search-path "git")
               (locate-dominating-file pwd ".git"))
      (let ((git-output (shell-command-to-string (concat "cd '" pwd "' && git branch | grep '\\*' | sed -e 's/^\\* //'"))))
        (if (> (length git-output) 0)
            (concat (substring git-output 0 -1))
          "(no branch)")))))

(defun airline-get-vc ()
  "Reimplementation of powerline-vc function to give the same result in gui as the terminal."
  (interactive)
  (when (and (buffer-file-name (current-buffer)) vc-mode)
    (format " %s %s"
            (char-to-string airline-utf-glyph-branch)
            (if (featurep 'magit)
                (magit-get-current-branch)
              (format-mode-line '(vc-mode vc-mode))))))

(defun airline-shorten-directory (dir max-length)
  "Return a shortened version of `DIR'.

Replacing elements with single characters starting from the left to try and get
the path down to `MAX-LENGTH'"

  (let* ((components (split-string (abbreviate-file-name dir) "/"))
         (len (+ (1- (length components))
                 (cl-reduce '+ components :key 'length)))
         (str ""))
    (while (and (> len max-length)
                (cdr components))
      (setq str (concat str (if (= 0 (length (car components)))
                                "/"
                              (string (elt (car components) 0) ?/)))
            len (- len (1- (length (car components))))
            components (cdr components)))
    (concat str (cl-reduce (lambda (a b) (concat a "/" b)) components))
  )
)

(provide 'airline-themes)
;;; airline-themes.el ends here
