# Welcome to Catheedral

This repository contains the source code for Catheedral - an app that works with [Home Assistant](https://www.home-assistant.io/) to provide another interface to the most important parts of your smart home.  Catheedral was developed using [TMS WEB Core](https://www.tmssoftware.com/site/tmswebcore.asp) from [TMS Software](https://www.tmssoftware.com), along with their [Miletus Framework](https://www.tmssoftware.com/site/blog.asp?post=775).  More details about this project can also be found on the TMS Software Blog, starting with this [first post](https://www.tmssoftware.com/site/blog.asp?post=1044). 

<p align="center"><img title="Catheedral Intro" alt="Catheedral Intro" src=https://user-images.githubusercontent.com/41052272/215580606-2c296543-5cbd-4ea7-a4b4-b08712fa439a.gif></p>

TMS WEB Core is a framework that uses Delphi, Visual Studio Code, or Lazarus to transpile Delphi/Pascal code into 100% native JavaScript, HTML and CSS code.  Miletus is a framework, similiar to Electron, that creates platform-specific binaries, supporting Windows, macOS, Linux and Raspberry Pi.  Catheedral has been created in part to run natively on a Raspberry Pi in an embedded context - much like a smart thermostat or a smart panel for your home, while also supporting the usual desktop-style deployments.

## Key Dependencies
As with any modern web application, other JavaScript libraries/dependencies have been used in this project. Most of the time, this is handled via a CDN link (usually JSDelivr) in the Project.html file. In some cases, for performance or other reasons, they may be included directly.
- [TMS WEB Core](https://www.tmssoftware.com/site/tmswebcore.asp) - This is a TMS WEB Core project, after all
- [Home Assistant](https://www.home-assistant.io/) - Need a current Home Assistant server to be of much use
- [Bootstrap](https://getbootstrap.com/) - No introduction needed
- [Tabulator](https://www.tabulator.info) - Fantastic pure JavaScript web data tables
- [Font Awesome](https://www.fontawesome.com) - The very best icons
- [Material Design Icons](https://pictogrammers.com/library/mdi/) - Used throughout Home Assistant
- [Leaflet](https://www.leafletjs.com) - Excellent mapping library
- [OpenStreetMap](https://www.openstreetmap.org) - Mapping tile data
- [Luxon](https://moment.github.io/luxon/#/) - For handling date/time conversions
- [Shoelace](https://shoelace.style/) - Web components, particularly the color picker for lights
- [Peity Vanilla JS](https://github.com/railsjazz/peity_vanilla) - Fast and simple charts
- [Meteocons](https://github.com/basmilius/weather-icons) - Animated Weather Icons by [Bas Milius](https://bas.dev/)

## Additional Notes
While this project is currently under active development, feel free to give it a try and post any issues you encounter.  Or start a discussion if you would like to help steer the project in a particular direction.  Early days yet, so a good time to have your voice heard.  As the project unfolds, additional resources will be made available, including platform binaries, more documentation, demos, and so on.

## Repository Information 
[![Count Lines of Code](https://github.com/500Foods/Catheedral/actions/workflows/main.yml/badge.svg)](https://github.com/500Foods/Catheedral/actions/workflows/main.yml)
<!--CLOC-START -->
```
Last Updated at 2023-11-27 01:52:22 UTC
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Pascal                           2             48             62            160
Delphi Form                      1              0              0             39
Markdown                         1              8              2             39
YAML                             2             11             13             33
HTML                             2              7              0             23
-------------------------------------------------------------------------------
SUM:                             8             74             77            294
-------------------------------------------------------------------------------
```
<!--CLOC-END-->

## Sponsor / Donate / Support
If you find this work interesting, helpful, or valuable, or that it has saved you time, money, or both, please consider directly supporting these efforts financially via [GitHub Sponsors](https://github.com/sponsors/500Foods) or donating via [Buy Me a Pizza](https://www.buymeacoffee.com/andrewsimard500). Also, check out these other [GitHub Repositories](https://github.com/500Foods?tab=repositories&q=&sort=stargazers) that may interest you.
