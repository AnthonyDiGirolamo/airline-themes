# airline-themes

This is a port of the themes in [vim-airline](https://github.com/bling/vim-airline) to emacs [powerline](https://github.com/milkypostman/powerline).

[![airline-demo.gif](https://raw.githubusercontent.com/AnthonyDiGirolamo/airline-themes/master/screenshots/airline-demo.gif)](https://raw.githubusercontent.com/AnthonyDiGirolamo/airline-themes/master/screenshots/airline-demo.gif)

## Features

- Separate colors for each major evil mode (normal, insert, visual, replace, emacs)
- Can set [Helm](https://github.com/emacs-helm/helm) colors
- Can set the current cursor color based on the current airline theme
- Works nicely in the gui or terminal

## Helm Colors

[![airline-helm-demo.gif](https://raw.githubusercontent.com/AnthonyDiGirolamo/airline-themes/master/screenshots/airline-helm-demo.gif)](https://raw.githubusercontent.com/AnthonyDiGirolamo/airline-themes/master/screenshots/airline-helm-demo.gif)

## Installation

These themes require the `evil` and `powerline` packages. You can install via
melpa or clone this repo into your load-path then in your `init.el`:

    (require 'airline-themes)
    (airline-themes-simple)

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

## Current Themes

    (airline-theme-badwolf)
    (airline-theme-light)
    (airline-theme-dark)
    (airline-theme-powerlineish)
    (airline-theme-wombat)
    (airline-theme-molokai)
    (airline-theme-papercolor)
    (airline-theme-behelit)
    (airline-theme-durant)
    (airline-theme-hybridline)
    (airline-theme-kalisi)
    (airline-theme-kolor)
    (airline-theme-understated)
    (airline-theme-ubaryd)
    (airline-theme-base16-dark-shell)
    (airline-theme-base16-dark-gui)
    (airline-theme-base16-light-gui)
    (airline-theme-solarized-alternate-gui)
    (airline-theme-solarized-gui)
    (airline-theme-sol)
    (airline-theme-simple)
    (airline-theme-silver)
    (airline-theme-serene)
    (airline-theme-raven)
    (airline-theme-luna)
