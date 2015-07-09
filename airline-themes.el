;;; airline-themes.el --- vim-airline themes for emacs powerline

;; Author: Anthony DiGirolamo <anthony.digirolamo@gmail.com>
;; URL: http://github.com/AnthonyDiGirolamo/airline-themes.el
;; Version: 1.0
;; Keywords: evil, mode-line, powerline, airline, themes
;; Package-Requires: ((powerline "2.3"))

;;; Commentary:
;;
;; vim-airline themes https://github.com/bling/vim-airline for emacs powerline https://github.com/milkypostman/powerline
;;

;;; Code:

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

;;;###autoload
(defcustom airline-helm-colors t
  "Set helm colors to match the airline theme.

Valid Values: Enabled, Disabled"
  :group 'airline-themes
  :type '(choice (const :tag "Enabled" t)
                 (const :tag "Disabled" nil)))

;;;###autoload
(defcustom airline-cursor-colors t
  "Set the cursor color based on the current evil state.

Valid Values: Enabled, Disabled"
  :group 'airline-themes
  :type '(choice (const :tag "Enabled" t)
                 (const :tag "Disabled" nil)))

;;;###autoload
(defcustom airline-display-directory 'airline-directory-shortened
  "Display the currend directory along with the filename.

Valid Values: Full, Shortened, Disabled"
  :group 'airline-themes
  :type '(choice (const :tag "Full" airline-directory-full)
                 (const :tag "Shortened" airline-directory-shortened)
                 (const :tag "Disabled" nil)))

;;;###autoload
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
                                         (t                                 'airline-normal-inner))
                                 'airline-normal-inner)
                             'powerline-inactive2))

                          (center-face
                           (if (powerline-selected-window-active)
                               (if (featurep 'evil)
                                   (cond ((eq evil-state (intern "normal")) 'airline-normal-center)
                                         ((eq evil-state (intern "insert")) 'airline-insert-center)
                                         ((eq evil-state (intern "visual")) 'airline-visual-center)
                                         (t                                 'airline-normal-center))
                                 'airline-normal-center)
                             'powerline-inactive2))

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

                                     ;; Git Branch
                                     (powerline-vc inner-face)

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

                          (lhs (append lhs-mode lhs-rest))

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
  (powerline-reset)
  (kill-local-variable 'mode-line-format))

;;;###autoload
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
   `(airline-emacs-outer   ((t ( :foreground ,emacs-outer-foreground   :background ,emacs-outer-background))))
   `(powerline-inactive1   ((t ( :foreground ,inactive1-foreground     :background ,inactive1-background))))
   `(powerline-inactive2   ((t ( :foreground ,inactive2-foreground     :background ,inactive2-background))))
   `(mode-line             ((t ( :foreground ,normal-center-foreground :background ,normal-center-background :box nil :underline nil :overline nil))))
   `(mode-line-inactive    ((t ( :foreground ,inactive1-foreground     :background ,inactive1-background     :box nil :underline nil :overline nil))))
   `(mode-line-buffer-id   ((t ( :foreground ,normal-outer-foreground  :background ,normal-outer-background  :box nil :underline nil :overline nil))))
   `(minibuffer-prompt     ((t ( :foreground ,normal-outer-foreground  :background ,normal-outer-background  :box nil))))
  ))

;;;###autoload
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
