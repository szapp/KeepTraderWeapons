# KeepTraderWeapons

[![Scripts](https://github.com/szapp/KeepTraderWeapons/actions/workflows/scripts.yml/badge.svg)](https://github.com/szapp/KeepTraderWeapons/actions/workflows/scripts.yml)
[![Validation](https://github.com/szapp/KeepTraderWeapons/actions/workflows/validation.yml/badge.svg)](https://github.com/szapp/KeepTraderWeapons/actions/workflows/validation.yml)
[![Build](https://github.com/szapp/KeepTraderWeapons/actions/workflows/build.yml/badge.svg)](https://github.com/szapp/KeepTraderWeapons/actions/workflows/build.yml)
[![GitHub release](https://img.shields.io/github/v/release/szapp/KeepTraderWeapons.svg)](https://github.com/szapp/KeepTraderWeapons/releases/latest)  
[![World of Gothic](https://raw.githubusercontent.com/szapp/patch-template/main/.github/actions/initialization/badges/wog.svg)](https://www.worldofgothic.de/dl/download_619.htm)
[![Spine](https://raw.githubusercontent.com/szapp/patch-template/main/.github/actions/initialization/badges/spine.svg)](https://clockwork-origins.com/spine)
[![Steam Gothic 1](https://img.shields.io/badge/steam-Gothic%201-2a3f5a?logo=steam&labelColor=1b2838)](https://steamcommunity.com/sharedfiles/filedetails/?id=2787676234)
[![Steam Gothic 2](https://img.shields.io/badge/steam-Gothic%202-2a3f5a?logo=steam&labelColor=1b2838)](https://steamcommunity.com/sharedfiles/filedetails/?id=2787675926)

Prevent traders from auto-equipping the best weapons which made them inaccessible during trading (Gothic, Gothic Sequel, Gothic 2 and Gothic 2 NotR)

This is a modular modification (a.k.a. patch or add-on) that can be installed and uninstalled at any time and is virtually compatible with any modification.
It supports <kbd>Gothic 1</kbd>, <kbd>Gothic Sequel</kbd>, <kbd>Gothic II (Classic)</kbd> and <kbd>Gothic II: NotR</kbd>.

<sup>Generated from [szapp/patch-template](https://github.com/szapp/patch-template).</sup>

![Screenshot](https://github.com/szapp/KeepTraderWeapons/assets/20203034/1277de6a-f626-4229-95aa-76cf1d9c7dbe)

## About

This patch prevents traders from auto-equipping the best weapons.
Previously that rendered them inaccessible during trading.

When NPCs are out of sight and at midnight, they automatically re-equip their best melee and ranged weapons.
When the player had traded them a better weapon, they would equip it making it unavailable for trading.
The patch intercepts the automatic weapon equipping and prevents NPCs from equipping the best melee and ranged weapons, if they already have another equipped.

Note, that NPCs merely do no longer *re-equip* their best melee and ranged weapon.
However, unrelated to the fix, if an NPC did *not yet have a weapon* of that type equipped, they will still do so.
This is an important mechanic of the game.
Without it, it may happen that NPCs fight with their fists as the game did not let them equip any weapon at all when they spawned.

## Links

- https://forum.worldofplayers.de/forum/threads/1547087
- https://forum.worldofplayers.de/forum/threads/?p=25954713

## Installation

1. Download the latest release of `KeepTraderWeapons.vdf` from the [releases page](https://github.com/szapp/KeepTraderWeapons/releases/latest).

2. Copy the file `KeepTraderWeapons.vdf` to `[Gothic]\Data\`. To uninstall, remove the file again.

The patch is also available on
- [World of Gothic](https://www.worldofgothic.de/dl/download_619.htm) | [Forum thread](https://forum.worldofplayers.de/forum/threads/1547087)
- [Spine Mod-Manager](https://clockwork-origins.com/spine/)
- [Steam Workshop Gothic 1](https://steamcommunity.com/sharedfiles/filedetails/?id=2787676234)
- [Steam Workshop Gothic 2](https://steamcommunity.com/sharedfiles/filedetails/?id=2787675926)

### Requirements

<table><thead><tr><th>Gothic</th><th>Gothic Sequel</th><th>Gothic II (Classic)</th><th>Gothic II: NotR</th></tr></thead>
<tbody><tr><td><a href="https://www.worldofgothic.de/dl/download_34.htm">Version 1.08k_mod</a></td><td>Version 1.12f</td><td><a href="https://www.worldofgothic.de/dl/download_278.htm">Report version 1.30.0.0</a></td><td><a href="https://www.worldofgothic.de/dl/download_278.htm">Report version 2.6.0.0</a></td></tr></tbody>
<tbody><tr><td colspan="4" align="center"><a href="https://github.com/szapp/Ninja/wiki#wiki-content">Ninja 2.9.15</a> or higher</td></tr></tbody></table>

<!--

If you are interested in writing your own patch, please do not copy this patch!
Instead refer to the PATCH TEMPLATE to build a foundation that is customized to your needs!
The patch template can found at https://github.com/szapp/patch-template.

-->
