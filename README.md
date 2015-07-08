# airline-themes

This is a port of the themes in vim-airline (https://github.com/bling/vim-airline) to emacs powerline (https://github.com/milkypostman/powerline).

[![airline-demo.gif](https://raw.githubusercontent.com/AnthonyDiGirolamo/airline-themes/master/screenshots/airline-demo.gif)](https://raw.githubusercontent.com/AnthonyDiGirolamo/airline-themes/master/screenshots/airline-demo.gif)

## Features

- Separate colors for each major evil mode (normal, insert, visual, replace, emacs)
- Sets [Helm](https://github.com/emacs-helm/helm) colors
- Works nicely in the gui or terminal

## Helm Colors

[![airline-helm-demo.gif](https://raw.githubusercontent.com/AnthonyDiGirolamo/airline-themes/master/screenshots/airline-helm-demo.gif)](https://raw.githubusercontent.com/AnthonyDiGirolamo/airline-themes/master/screenshots/airline-helm-demo.gif)

## Installation

Install via melpa or clone this repo into your load-path then in your `init.el`:

    (require 'airline-themes)
    (airline-themes-simple)

## Custom Options

- `airline-helm-colors` Set helm colors to match the airline theme.
  - Valid Values: Enabled, Disabled
  - Default: Enabled

- `airline-cursor-colors` Set the cursor color based on the current evil state.
  - Valid Values: Enabled, Disabled
Default: Enabled

`airline-display-directory` Display the currend directory along with the filename.
  - Valid Values: Full, Shortened, Disabled
  - Default: Shortened

## Available Themes

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

