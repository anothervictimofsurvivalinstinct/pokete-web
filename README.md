[![Wiki](https://github.com/lxgr-linux/pokete/actions/workflows/main.yml/badge.svg)](https://github.com/lxgr-linux/pokete/actions/workflows/main.yml)
[![Code-Validation](https://github.com/lxgr-linux/pokete/actions/workflows/main_validate.yml/badge.svg)](https://github.com/lxgr-linux/pokete/actions/workflows/main_validate.yml)
[![GitHub-Pages Build](https://github.com/lxgr-linux/pokete/actions/workflows/documentation.yml/badge.svg)](https://github.com/lxgr-linux/pokete/actions/workflows/documentation.yml)
<br>
![Python Version](https://img.shields.io/github/pipenv/locked/python-version/lxgr-linux/pokete)
![License](https://img.shields.io/github/license/lxgr-linux/pokete)
![AUR version](https://img.shields.io/aur/version/pokete-git)
<br>
![Total Lines of Code](https://img.shields.io/tokei/lines/github/lxgr-linux/pokete)
![Open Issues](https://img.shields.io/github/issues/lxgr-linux/pokete)
![Open pull requests](https://img.shields.io/github/issues-pr/lxgr-linux/pokete)
![commit activity](https://img.shields.io/github/commit-activity/m/lxgr-linux/pokete)
![commits since last release](https://img.shields.io/github/commits-since/lxgr-linux/pokete/latest/master?include_prereleases)
![GitHub contributors](https://img.shields.io/github/contributors/lxgr-linux/pokete)

# Pokete -- Grey Edition

![Example](assets/ss/ss01.png)

[See more example pics](assets/pics.md)
## What is it?
Pokete is a small terminal based game in the style of a very popular and old game by Gamefreak.

This is just an addition to https://github.com/lxgr-linux/pokete making it accessible over your local network so you can play it from anywhere

## Upcoming

Raspberry pi compatible image

Fix saving, as currently it only follows the container

## Dependencies
Ya need docker

## Installation Docker
1. Make any changes you need to like: setting your interface to dark mode or light mode in the startapp.sh file or add mods to the mods folder etc.
2. `docker build -t victim/poketeweb .`
3. `docker run --name=poketeweb -d -p 5800:5800 -v /path/to/your/data:/app/data victim/poketeweb`
4. Go to your web browser of choice and head to: http://*YOUR-IP-HERE*:5800 OR http://localhost:5800

## How to play?

Go to your web browser of choice and head to: http://*YOUR-IP-HERE*:5800 OR http://localhost:5800 and get after it man.

See upstream if you need more: https://github.com/lxgr-linux/pokete

See [How to play](HowToPlay.md).

## Game depth
Not only are there Poketes that are stronger than others, but also Poketes with different types, which are effective against some types and ineffective against others.

See upstream for more info: https://github.com/lxgr-linux/pokete

For additional information you can see [wiki](wiki.md) or
[the multi-page wiki](https://lxgr-linux.github.io/pokete/wiki-multi).

## Mods
Mods can be written to extend Pokete. To load a mod, the mod has to be placed in `mods` and mods have to be enabled in the menu.
For an example mod see [example.py](mods/example.py).

add your mod before building the docker image - if you already built then you need to rebuild

## Tips
- In conversations you can very easily skip the text printing by pressing any key
- When you want to see the next text in a conversation: also just press any key
- Don't play on full-screen; the game then starts to be overseeable
- Don't be offended by the other trainers; they may swear at you

## Documentation
- [Documentation for pokete_classes](https://lxgr-linux.github.io/pokete/doc/pokete_classes/index.html)
- [Documentation for pokete_data](https://lxgr-linux.github.io/pokete/doc/pokete_data/index.html)
- [Documentation for the gen-wiki file](https://lxgr-linux.github.io/pokete/doc/gen_wiki.html "gen_wiki.py")
- [Documentation for the prepare_pages file](https://lxgr-linux.github.io/pokete/doc/prepare_pages.html "prepare_pages.py")
- [Documentation for the pokete_general_use_fns](https://lxgr-linux.github.io/pokete/doc/pokete_general_use_fns.html "pokete_general_use_fns.py")
- [Documentation for the main file "pokete.py"](https://lxgr-linux.github.io/pokete/doc/pokete.html "pokete.py")

## Releases
For release information see [Changelog](Changelog.md).

## Contributing
Feel free to contribute what ever you want to this game.
New Pokete contributions are especially welcome, those are located in /pokete_data/poketes.py

To see how to add more poketes/types/attacks to the game, see [the DevGuide](DevGuide.md)

After adding new Poketes and/or Attacks you may want to run
```shell
$ ./gen_wiki.py
```

to regenerate the wiki and adding them to it.

## Trouble shooting
If you're experiencing problems on Japanese systems take a look at [this](https://gist.github.com/z80oolong/c7523367b798bdda094f859342f4c8be).

if you exit the game from the context menu it will shutdown the docker container and it will need to be restarted

Leave an issue here if you're having a problem with the *Docker* image. If you're having issues with the game see the upstream: https://github.com/lxgr-linux/pokete

## Known Issues

None... so far.

## Important note
This is meant to be kept local. Do not expose this to the internet... like at all. Use a vpn to access if it's so important 

