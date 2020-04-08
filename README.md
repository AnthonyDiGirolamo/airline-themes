# airline-themes

[![MELPA](http://melpa-stable.milkbox.net/packages/airline-themes-badge.svg)](http://melpa-stable.milkbox.net/#/airline-themes)
[![MELPA](http://melpa.org/packages/airline-themes-badge.svg)](http://melpa.org/#/airline-themes)

This is a port of the themes in
[vim-airline](https://github.com/vim-airline/vim-airline-themes)
to emacs [powerline](https://github.com/milkypostman/powerline).

[![airline-demo.gif](/screenshots/airline-demo.gif)](/screenshots/airline-demo.gif)

## Features

- Separate colors for each major evil mode (normal, insert, visual, replace, emacs)
- Can set [Helm](https://github.com/emacs-helm/helm) colors
- Can set the current cursor color based on the current airline theme
- Works nicely in the gui or terminal

## Installation

### Requirements

- `powerline`
- `evil` (optional but recommended)

Install via melpa or clone this repo into your load-path and add the following
to your `init.el`

``` emacs-lisp
(require 'airline-themes)
(load-theme 'airline-light t)
```

If you don't load a theme in your `init.el` then the default `mode-line-format`
doesn't get set at startup and applying a theme may not look right. If things
don't look right after applying a theme run `airline-themes-set-modeline` or
`(kill-local-variable 'mode-line-format))` and it should apply the styling to
the current buffer.

## Custom Options

Run `M-x customize-group airline-themes` to see and set all options with
suggestions. Here are all the options for copy-pasting:

``` emacs-lisp
;; Hide Evil and buffer state on inactive buffers.
;; Valid Values: t (hidden), nil (shown)
(setq airline-hide-state-on-inactive-buffers t)

;; "Hide eyebrowse indicator on inactive buffers.
;; Valid Values: t (hidden), nil (shown)"
(setq airline-hide-eyebrowse-on-inactive-buffers t)

;; Hide vc branch on inactive buffers:
;; Valid Values: t (hidden), nil (shown)
(setq airline-hide-vc-branch-on-inactive-buffers nil)

;; Set eshell prompt colors to match the airline theme.
;; Valid Values: t (enabled), nil (disabled)
(setq airline-eshell-colors t)

;; Set helm colors to match the airline theme.
;; Valid Values: t (enabled), nil (disabled)
(setq airline-helm-colors t)

;; Set the cursor color based on the current evil state.
;; Valid Values: t (enabled), nil (disabled)
(setq airline-cursor-colors t)

;; Display the currend directory along with the filename.
;; Valid Values: 'airline-directory-full
;;               'airline-directory-shortened
;;               nil (disabled)
(setq airline-display-directory nil)

;; Max directory length to display when using 'airline-directory-shortened
(setq airline-shortened-directory-length 30)

;; Unicode character choices
(setq airline-utf-glyph-separator-left #x2b80
      airline-utf-glyph-separator-right #x2b82
      airline-utf-glyph-subseparator-left #x2b81
      airline-utf-glyph-subseparator-right #x2b83
      airline-utf-glyph-branch #x2b60
      airline-utf-glyph-readonly #x2b64
      airline-utf-glyph-linenumber #x2630)

;; You may also wish to force powerline to use utf8 character separators
(setq powerline-default-separator 'utf-8)
(setq powerline-utf-8-separator-left  #x2b80
      powerline-utf-8-separator-right #x2b82)
```

### Glyph Variables

The `airline-utf-glyph-*` variables control which UTF glyphs are used on the
modeline. They require a powerline patched font. Head over to
https://github.com/powerline/fonts if you need one.

Depending on your font, you may need to set the correct glyph character. If
your font characters don't look right try running
`M-x customize-group airline-themes` and choose some characters that look right
with your font. Some default options have been added so you can pick what looks
good.

[![customize-group.png](/screenshots/customize-group.png)](/screenshots/customize-group.png)

## Screenshots

### Eshell Colors

Here is a shot of eshell in use with the prompt set to match the current airline theme (`airline-base16-shell-dark`):

[![airline-eshell-screen1.png](/screenshots/airline-eshell-screen1.png)](/screenshots/eshell-screen1.png)

### Helm Colors

Here is a shot of `helm-mini` with the `airline-base16-shell-dark` and
`airline-papercolor` themes.

[![airline-helm-demo.gif](/screenshots/airline-helm-demo.gif)](/screenshots/airline-helm-demo.gif)
