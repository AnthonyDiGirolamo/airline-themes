# airline-themes

[![MELPA](http://melpa-stable.milkbox.net/packages/airline-themes-badge.svg)](http://melpa-stable.milkbox.net/#/airline-themes)

[![MELPA](http://melpa.org/packages/airline-themes-badge.svg)](http://melpa.org/#/airline-themes)

This is a port of the themes in [vim-airline](https://github.com/vim-airline/vim-airline) to emacs [powerline](https://github.com/milkypostman/powerline).

[![airline-demo.gif](https://raw.githubusercontent.com/AnthonyDiGirolamo/airline-themes/master/screenshots/airline-demo.gif)](https://raw.githubusercontent.com/AnthonyDiGirolamo/airline-themes/master/screenshots/airline-demo.gif)

## Features

- Separate colors for each major evil mode (normal, insert, visual, replace, emacs)
- Can set [Helm](https://github.com/emacs-helm/helm) colors
- Can set the current cursor color based on the current airline theme
- Works nicely in the gui or terminal

## Eshell Colors

Here is a shot of eshell in use with the prompt set to match the current airline theme (`airline-base16-shell-dark`):

[![airline-eshell-screen1.png](https://raw.githubusercontent.com/AnthonyDiGirolamo/airline-themes/master/screenshots/airline-eshell-screen1.png)](https://raw.githubusercontent.com/AnthonyDiGirolamo/airline-themes/master/screenshots/eshell-screen1.png)

## Helm Colors

Here is a shot of `helm-mini` with the `airline-base16-shell-dark` and
`airline-papercolor` themes.

[![airline-helm-demo.gif](https://raw.githubusercontent.com/AnthonyDiGirolamo/airline-themes/master/screenshots/airline-helm-demo.gif)](https://raw.githubusercontent.com/AnthonyDiGirolamo/airline-themes/master/screenshots/airline-helm-demo.gif)

## Installation

### Requirements

- `powerline`
- `evil` (optional but recommended)

Install via melpa or clone this repo into your load-path and add the following
to your `init.el`

    (require 'airline-themes)
    (load-theme 'airline-light)

If you don't load a theme in your `init.el` then the default `mode-line-format`
doesn't get set at startup and applying a theme may not look right. If things
don't look right after applying a theme run `airline-themes-set-modeline` or
`(kill-local-variable 'mode-line-format))` and it should apply the styling to
the current buffer.

## Custom Options

- `airline-helm-colors` Set helm colors to match the airline theme.<br/>
  Valid Values: Enabled, Disabled<br/>
  Default: Enabled

- `airline-cursor-colors` Set the cursor color based on the current evil state.<br/>
  Valid Values: Enabled, Disabled<br/>
  Default: Enabled

- `airline-display-directory` Display the currend directory along with the filename.<br/>
  Valid Values: Full, Shortened, Disabled<br/>
  Default: Shortened

- `airline-shortened-directory-length` Set the desired directory length.<br/>
  Default: 30

- `airline-eshell-colors` Set eshell prompt colors to match the airline theme.<br/>
  Valid Values: Enabled, Disabled<br/>
  Default: Enabled

- **Glyph Variables**

  These variables control which UTF glyphs are used on the modeline. They
  require a powerline patched font. Head over to https://github.com/powerline/fonts if
  you need one.

  Depending on your font, you may need to set the correct glyph character. Here
  are the ones used by airline themes. The default characters are in the
  vim-powerline column.

      | Variable Name                        | powerline   | vim-powerline (default) |
      |--------------------------------------+-------------+-------------------------|
      | airline-utf-glyph-separator-left     | ''  #xe0b0 | '⮀'  #x2b80             |
      | airline-utf-glyph-separator-right    | ''  #xe0b2 | '⮂'  #x2b82             |
      | airline-utf-glyph-subseparator-left  | ''  #xe0b1 | '⮁'  #x2b81             |
      | airline-utf-glyph-subseparator-right | ''  #xe0b3 | '⮃'  #x2b83             |
      | airline-utf-glyph-branch             | ''  #xe0a0 | '⭠'  #x2b60             |
      | airline-utf-glyph-readonly           | ''  #xe0a2 | '⭤'  #x2b64             |
      | airline-utf-glyph-linenumber         | ''  #xe0a1 | '⭡'  #x2b61             |

  If your font characters don't look right try setting them to the powerline utf
  glyphs by adding this to your init.el:

      (setq powerline-utf-8-separator-left        #xe0b0
            powerline-utf-8-separator-right       #xe0b2
            airline-utf-glyph-separator-left      #xe0b0
            airline-utf-glyph-separator-right     #xe0b2
            airline-utf-glyph-subseparator-left   #xe0b1
            airline-utf-glyph-subseparator-right  #xe0b3
            airline-utf-glyph-branch              #xe0a0
            airline-utf-glyph-readonly            #xe0a2
            airline-utf-glyph-linenumber          #xe0a1)
