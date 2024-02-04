## Firefox Profile Launcher Dmenu

Install instructions

1. Copy the `firefox_dmenu` to your `$PATH` and provide execution permission.
```shell
cp firefox_dmenu ~/.local/bin/
chmod +x ~/.local/bin/firefox_dmenu
```
2. If you want to have it in your `drun`, modify the `firefox.desktop` to launch `firefox_dmenu` instead `firefox`. Example can be found in [firefox_desktop](firefox.desktop).