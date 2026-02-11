# deck-xcloud-scripts
Set of simple shell scripts for creating xCloud web based shortcuts for Steam Deck or other Linux handhelds.

## Setup:

1. Copy the `.sh` files from this repo to your Home directory. (Download from GitHub or run `git clone https://github.com/TheBoxyBear/deck-xcloud-scripts` from Konsole)
2. Check the file permissions on the scripts to ensure you are able to run them as a program
3. Install Mcirosoft Edge from flatpak or the Discover store
4. Run the `xcloud-setup` script once. This is required to make the browser recognize controller input
5. Right-click `xcloud.sh` and select `Add to Steam`

## Adding game shortcuts:

1. Find the game ID. It will at the end of the url on a game's page as a set of random letters and numbers
2. Right-click `xcloud.sh` and select `Add to Steam`
3. Open the Steam shortcut properties on the newly created duplicate shortcut and add the game ID as a launch option
4. Set the game title as the shortcut name

## Adding artwork:
1. Install Decky Loader from https://decky.xyz/
2. From gaming mode, install the SteamGridDB plugin
3. Navigate to shortcut and select `Change Artwork`. This will pull artwork from SteamGridDB to apply based on the shortcut name

## Bonus features:
- Add `browser.sh` to Steam to add Microsoft Edge to your library
- Add `kiosk.sh` to Steam and give it a url as a launch option to convert any web app into a Steam app

## How it works:
- `browser.sh` launches Microsoft Edge through the flatpak command, forwarding any command-line arguments to the browser
- `kiosk.sh` calls `browser.sh` with a url received as argument, adding various switches to configure Edge in kiosk mode optimized for Deck
- `xcloud.sh` calls `kiosk.sh` with the xCloud launch page as a url, forwarding the first argument as a game ID. If no ID is provided, the website redirects you to the xCloud home page (This redirect behavior may break in the future at the will of Xbox)
