# nss_ped_menu _by Night Shift Studio_

Visit our [Discord] / [Homepage] / [Store] !

--------------------------------------------------------------------------------

## Requirements / Dependencies

The following resources are required for `nss_ped_menu` to work:

- [nss_libs]
- [Vorp Framework]

--------------------------------------------------------------------------------

## Changelog

See [CHANGELOG.md] for more information.

--------------------------------------------------------------------------------

## Features

- Diverse Ped Selection: Offers a wide range of ped models, including humans, animals, and mythical creatures.
- In-Game Preview: Players can preview their chosen ped model before finalizing their selection.
- User Permission Control: Access to the ped menu can be restricted based on user permissions.
- Proximity-Based Menu Interaction: The script intelligently closes the menu if a player moves too far from the preview
  point.
- Optimized for VORP CORE: Seamless integration with the VORP CORE framework.
- Debugging Features: Includes debug options for troubleshooting and server management.
- Localization Support: Ready for multi-language support to cater to a diverse player base.
- Never miss updates again: Automatic version check included.
- Know how it works: Everything is documented in detail in the README.md.
- And more...

--------------------------------------------------------------------------------

## Usage

Authorized players can use a designated command to access the ped selection menu. This menu allows them to choose,
preview, and transform into various NPCs (and peds). The script ensures a smooth and user-friendly experience.

--------------------------------------------------------------------------------

## Open ToDo's

- Nothing ;)

--------------------------------------------------------------------------------

## Known issues

- Currently, no known issues.

--------------------------------------------------------------------------------

## Setup script

1. Ensure that the `nss_ped_menu` folder is in your `resources` folder.
2. Rename [config.demo.lua] to `config.lua` and fill in the values.
3. Add `ensure nss_ped_menu` to your `server.cfg`.
4. Customize [peds.lua] to modify the available ped models.
5. Restart your server.

--------------------------------------------------------------------------------

## FAQ

Currently, no FAQ available.

[peds.lua]: ./shared/peds.lua

[config.demo.lua]: ./config.demo.lua

[nss_libs]: https://night-shift-studio.com/nss_libs

[Vorp Framework]: https://github.com/VORPCORE

[Discord]: https://night-shift-studio.com/discord

[Homepage]: https://night-shift-studio.com/

[Store]: https://night-shift-studio.com/store

[CHANGELOG.md]: ./CHANGELOG.md
