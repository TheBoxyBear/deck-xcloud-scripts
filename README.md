# deck-xcloud-scripts
Set of simple shell scripts for creating xCloud web based shortcuts for Steam Deck or other Linux handhelds.

## Setup
1. Copy the `.sh` files from this repo to your Home directory. (Download from GitHub or run `git clone https://github.com/TheBoxyBear/deck-xcloud-scripts` in Konsole)
2. Check the file permissions on the scripts to ensure you are able to run them as a program
3. Install Mcirosoft Edge from flatpak or the Discover store
4. Run the `xcloud-setup` script. This will configure Edge to recogize controller input as well as open a browser window for the next step
5. In the newly open window, navigate to **Settings>Appearance>Browser behavior and features** and disable **Always show scrollbars**
6. Right-click `xcloud.sh` and select **Add to Steam** Launching this shortcut will open the xCloud home page in a fullscreen view

## Adding game shortcuts
1. Find the game ID. It will at the end of the url on a game's page as a set of random letters and numbers
2. Right-click `xcloud.sh` and select **Add to Steam**
3. Open the Steam shortcut properties on the newly created duplicate shortcut and add the game ID as a launch option
4. Set the game title as the shortcut name

## Adding artwork
1. Install Decky Loader from https://decky.xyz/
2. From gaming mode, install the SteamGridDB plugin
3. Navigate to shortcut and select **Change Artwork...**. This will pull artwork from SteamGridDB to apply based on the shortcut name

## Using remote play
1. Find your remote play console ID. It will be the sequence of letters and numebrs at the end of the url when in a remtoe play session
2. Add `xhome.sh` to Steam
3. Add your console ID as a launch option

## Bonus features
- Add `browser.sh` to Steam to add Microsoft Edge to your library
- Add `kiosk.sh` to Steam and give it a url as a launch option to convert any web app into a Steam app

## How it works:
- `browser.sh` launches Microsoft Edge through the flatpak command, forwarding any command-line arguments to the browser
- `kiosk.sh` calls `browser.sh` with a url received as argument, adding various switches to configure Edge in kiosk mode optimized for Deck
- `xcloud.sh` calls `kiosk.sh` with the xCloud launch page as a url, forwarding the first argument as a game ID for shortcuts.

## Troubleshooting
**I accidentally launched the kiosk or xcloud script from desktop mode and I can't exit**
1. Press L5 at the back of the Steam Deck to unfocus from the window
2. If this fails, hold Start+Back until Steam notifies you of a controller layout change from Controller to Desktop, then press L5 again

**The scripts aren't running/are showing errors**
Ensure the scripts are located under the Home directory, specifically `/home/deck/` for Steam Deck.

**Xbox is showing an error page**
Verify the game/console ID is correct, then try again. It may also be an issue on Xbox's end.

**During setup, I am not seeing the option *Always hide scrollbars***
1. Close all Edge windows
2. Run `xcloud-setup.sh` again, then disable the setting through the window opened by the script. The script launches Edge with special configuration to make this setting available.
