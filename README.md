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

### All Themes

![/screenshots/themes/theme-001.png](/screenshots/themes/theme-001.png)
![/screenshots/themes/theme-002.png](/screenshots/themes/theme-002.png)
![/screenshots/themes/theme-003.png](/screenshots/themes/theme-003.png)
![/screenshots/themes/theme-004.png](/screenshots/themes/theme-004.png)
![/screenshots/themes/theme-005.png](/screenshots/themes/theme-005.png)
![/screenshots/themes/theme-006.png](/screenshots/themes/theme-006.png)
![/screenshots/themes/theme-007.png](/screenshots/themes/theme-007.png)
![/screenshots/themes/theme-008.png](/screenshots/themes/theme-008.png)
![/screenshots/themes/theme-009.png](/screenshots/themes/theme-009.png)
![/screenshots/themes/theme-010.png](/screenshots/themes/theme-010.png)
![/screenshots/themes/theme-011.png](/screenshots/themes/theme-011.png)
![/screenshots/themes/theme-012.png](/screenshots/themes/theme-012.png)
![/screenshots/themes/theme-013.png](/screenshots/themes/theme-013.png)
![/screenshots/themes/theme-014.png](/screenshots/themes/theme-014.png)
![/screenshots/themes/theme-015.png](/screenshots/themes/theme-015.png)
![/screenshots/themes/theme-016.png](/screenshots/themes/theme-016.png)
![/screenshots/themes/theme-017.png](/screenshots/themes/theme-017.png)
![/screenshots/themes/theme-018.png](/screenshots/themes/theme-018.png)
![/screenshots/themes/theme-019.png](/screenshots/themes/theme-019.png)
![/screenshots/themes/theme-020.png](/screenshots/themes/theme-020.png)
![/screenshots/themes/theme-021.png](/screenshots/themes/theme-021.png)
![/screenshots/themes/theme-022.png](/screenshots/themes/theme-022.png)
![/screenshots/themes/theme-023.png](/screenshots/themes/theme-023.png)
![/screenshots/themes/theme-024.png](/screenshots/themes/theme-024.png)
![/screenshots/themes/theme-025.png](/screenshots/themes/theme-025.png)
![/screenshots/themes/theme-026.png](/screenshots/themes/theme-026.png)
![/screenshots/themes/theme-027.png](/screenshots/themes/theme-027.png)
![/screenshots/themes/theme-028.png](/screenshots/themes/theme-028.png)
![/screenshots/themes/theme-029.png](/screenshots/themes/theme-029.png)
![/screenshots/themes/theme-030.png](/screenshots/themes/theme-030.png)
![/screenshots/themes/theme-031.png](/screenshots/themes/theme-031.png)
![/screenshots/themes/theme-032.png](/screenshots/themes/theme-032.png)
![/screenshots/themes/theme-033.png](/screenshots/themes/theme-033.png)
![/screenshots/themes/theme-034.png](/screenshots/themes/theme-034.png)
![/screenshots/themes/theme-035.png](/screenshots/themes/theme-035.png)
![/screenshots/themes/theme-036.png](/screenshots/themes/theme-036.png)
![/screenshots/themes/theme-037.png](/screenshots/themes/theme-037.png)
![/screenshots/themes/theme-038.png](/screenshots/themes/theme-038.png)
![/screenshots/themes/theme-039.png](/screenshots/themes/theme-039.png)
![/screenshots/themes/theme-040.png](/screenshots/themes/theme-040.png)
![/screenshots/themes/theme-041.png](/screenshots/themes/theme-041.png)
![/screenshots/themes/theme-042.png](/screenshots/themes/theme-042.png)
![/screenshots/themes/theme-043.png](/screenshots/themes/theme-043.png)
![/screenshots/themes/theme-044.png](/screenshots/themes/theme-044.png)
![/screenshots/themes/theme-045.png](/screenshots/themes/theme-045.png)
![/screenshots/themes/theme-046.png](/screenshots/themes/theme-046.png)
![/screenshots/themes/theme-047.png](/screenshots/themes/theme-047.png)
![/screenshots/themes/theme-048.png](/screenshots/themes/theme-048.png)
![/screenshots/themes/theme-049.png](/screenshots/themes/theme-049.png)
![/screenshots/themes/theme-050.png](/screenshots/themes/theme-050.png)
![/screenshots/themes/theme-051.png](/screenshots/themes/theme-051.png)
![/screenshots/themes/theme-052.png](/screenshots/themes/theme-052.png)
![/screenshots/themes/theme-053.png](/screenshots/themes/theme-053.png)
![/screenshots/themes/theme-054.png](/screenshots/themes/theme-054.png)
![/screenshots/themes/theme-055.png](/screenshots/themes/theme-055.png)
![/screenshots/themes/theme-056.png](/screenshots/themes/theme-056.png)
![/screenshots/themes/theme-057.png](/screenshots/themes/theme-057.png)
![/screenshots/themes/theme-058.png](/screenshots/themes/theme-058.png)
![/screenshots/themes/theme-059.png](/screenshots/themes/theme-059.png)
![/screenshots/themes/theme-060.png](/screenshots/themes/theme-060.png)
![/screenshots/themes/theme-061.png](/screenshots/themes/theme-061.png)
![/screenshots/themes/theme-062.png](/screenshots/themes/theme-062.png)
![/screenshots/themes/theme-063.png](/screenshots/themes/theme-063.png)
![/screenshots/themes/theme-064.png](/screenshots/themes/theme-064.png)
![/screenshots/themes/theme-065.png](/screenshots/themes/theme-065.png)
![/screenshots/themes/theme-066.png](/screenshots/themes/theme-066.png)
![/screenshots/themes/theme-067.png](/screenshots/themes/theme-067.png)
![/screenshots/themes/theme-068.png](/screenshots/themes/theme-068.png)
![/screenshots/themes/theme-069.png](/screenshots/themes/theme-069.png)
![/screenshots/themes/theme-070.png](/screenshots/themes/theme-070.png)
![/screenshots/themes/theme-071.png](/screenshots/themes/theme-071.png)
![/screenshots/themes/theme-072.png](/screenshots/themes/theme-072.png)
![/screenshots/themes/theme-073.png](/screenshots/themes/theme-073.png)
![/screenshots/themes/theme-074.png](/screenshots/themes/theme-074.png)
![/screenshots/themes/theme-075.png](/screenshots/themes/theme-075.png)
![/screenshots/themes/theme-076.png](/screenshots/themes/theme-076.png)
![/screenshots/themes/theme-077.png](/screenshots/themes/theme-077.png)
![/screenshots/themes/theme-078.png](/screenshots/themes/theme-078.png)
![/screenshots/themes/theme-079.png](/screenshots/themes/theme-079.png)
![/screenshots/themes/theme-080.png](/screenshots/themes/theme-080.png)
![/screenshots/themes/theme-081.png](/screenshots/themes/theme-081.png)
![/screenshots/themes/theme-082.png](/screenshots/themes/theme-082.png)
![/screenshots/themes/theme-083.png](/screenshots/themes/theme-083.png)
![/screenshots/themes/theme-084.png](/screenshots/themes/theme-084.png)
![/screenshots/themes/theme-085.png](/screenshots/themes/theme-085.png)
![/screenshots/themes/theme-086.png](/screenshots/themes/theme-086.png)
![/screenshots/themes/theme-087.png](/screenshots/themes/theme-087.png)
![/screenshots/themes/theme-088.png](/screenshots/themes/theme-088.png)
![/screenshots/themes/theme-089.png](/screenshots/themes/theme-089.png)
![/screenshots/themes/theme-090.png](/screenshots/themes/theme-090.png)
![/screenshots/themes/theme-091.png](/screenshots/themes/theme-091.png)
![/screenshots/themes/theme-092.png](/screenshots/themes/theme-092.png)
![/screenshots/themes/theme-093.png](/screenshots/themes/theme-093.png)
![/screenshots/themes/theme-094.png](/screenshots/themes/theme-094.png)
![/screenshots/themes/theme-095.png](/screenshots/themes/theme-095.png)
![/screenshots/themes/theme-096.png](/screenshots/themes/theme-096.png)
![/screenshots/themes/theme-097.png](/screenshots/themes/theme-097.png)
![/screenshots/themes/theme-098.png](/screenshots/themes/theme-098.png)
![/screenshots/themes/theme-099.png](/screenshots/themes/theme-099.png)
![/screenshots/themes/theme-100.png](/screenshots/themes/theme-100.png)
![/screenshots/themes/theme-101.png](/screenshots/themes/theme-101.png)
![/screenshots/themes/theme-102.png](/screenshots/themes/theme-102.png)
![/screenshots/themes/theme-103.png](/screenshots/themes/theme-103.png)
![/screenshots/themes/theme-104.png](/screenshots/themes/theme-104.png)
![/screenshots/themes/theme-105.png](/screenshots/themes/theme-105.png)
![/screenshots/themes/theme-106.png](/screenshots/themes/theme-106.png)
![/screenshots/themes/theme-107.png](/screenshots/themes/theme-107.png)
![/screenshots/themes/theme-108.png](/screenshots/themes/theme-108.png)
![/screenshots/themes/theme-109.png](/screenshots/themes/theme-109.png)
![/screenshots/themes/theme-110.png](/screenshots/themes/theme-110.png)
