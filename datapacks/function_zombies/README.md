# function_zombies datapack

Minecraft 1.21 datapack. Runtime functions are grouped by namespace and feature; keep function IDs stable unless every caller is updated.

## Layout

`data/<namespace>/function/<domain>/<feature>/<action>.mcfunction`

- `map`: lobby, rounds, shops, perks, powerups, zombies, and map flow.
- `weapon`: gun data and behavior under `range/gun`, melee under `melee`, skills under `range/skill`.
- `zombie`: zombie types, skills, and boss behavior.
- `player_stat`: player setup, lifecycle, death, revive, and persistent stats.
- `system`: shared initialization, reload, and tick dispatch.
- `interaction`, `inventory`, `decoration`, `elemental_effect`, `mainlobby`: focused supporting systems.
- `_` and `_test`: internal/shared helpers and test-only functions; do not use for player-facing feature IDs.
- `minecraft`: vanilla function tags such as `load` and `tick`.

## Editing rules

- Keep each gun's `load`, firing, hit, reload, and skill functions together below `weapon/function/range/gun/gun/<gun>/`.
- Put shared gun behavior in the matching `weapon/function/range/gun/` domain, not in an unrelated feature folder.
- Prefer one feature folder per gameplay system. Put small actions beneath that feature (for example `perk/<perk>/...` or `powerup/pickup/<powerup>.mcfunction`).
- Function names are runtime API: before moving or renaming a function, search and update every `function <namespace>:...` reference, function tag, and generated source.
- Test harness functions belong in the separate `修改区/datapacks/fzb_test` pack. Test scripts and generated audit reports belong in `修改区/测试集`.
- Generated files must be changed through their generator in `修改区/工具`, then regenerated; do not hand-edit generated outputs.

## Validation and deployment

Use `修改区/测试集/测试集清单.md` for the online and offline test entry points. The deployable pack is this directory. The live test server copy is `测试服务器/world/datapacks/function_zombies`; synchronize it from this directory after source changes, then reload the server datapacks.
