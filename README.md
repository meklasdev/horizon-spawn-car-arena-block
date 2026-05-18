# horizon-spawn-car-arena-block

![Horizon Logo](https://cdn.discordapp.com/attachments/1390698564811882508/1503784257057718353/Horizon1_2.png?ex=6a0bdbf9&is=6a0a8a79&hm=810f240fe15846bfd30252bd524ecab056324eab94502c88bc256dcca2f6dc8d&)

A FiveM resource that blocks vehicle spawning in configured arena zones.

## Installation

1. Copy this resource into your server `resources` folder.
2. Add `ensure horizon-spawn-car-arena-block` to your `server.cfg`.

## Config

Edit `/config.lua` and update `Config.BlockedSpawnPoints`.

Default points:

- `-80.9576, -3320.3784, 26.4418, 270.1572`
- `-81.7064, -3526.7151, 26.4418, 270.2753`
- `454.3145, -3544.7573, 30.1857, 90.1176`
- `450.5118, -3299.5325, 26.9384, 92.3224`

Each point also supports a `radius` value (default `35.0`) used to block nearby vehicle spawns.
