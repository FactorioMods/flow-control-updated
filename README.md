# Flow Control

This mod has two main features: specific rotatable pipe sections and valves.

## Specific Rotatable Pipe Sections

Using these three new pipe sections you can build almost any pipe layout without worrying about unwanted connections. Each pipe is crafted from one normal pipe, and when mined drops a normal pipe.

- **Elbow**
- **T-Junction**
- **Straight**

![Imgur](https://i.imgur.com/B50vSJ1.png)

## Valves

Valves have been moved to the optional [Valves](https://mods.factorio.com/mod/valves) mod.

## Settings

- **New subgroup for pipe items** (enabled by default): Moves pipes, pumps and valves to a new line in the crafting menu
- **Picked up pipes become base pipes** (enabled by default): When picking up T-Junction, elbow or straight pipes, it reverts back to normal pipes.

## Recommended mods
- [Flow Control for Bob's Logistics](https://mods.factorio.com/mod/flow-control-expanded-bob) | Compatibility mod to add flow control to Bob's pipes and merge valves.
- [Fluid Must Flow](https://mods.factorio.com/mod/FluidMustFlow) | Adds larger pipes and valves.

## Credits
- GotLag
- snouz (new graphics and details)
- stringweasel

## Factorio 2.1 fork

This fork supports Factorio 2.1.24 and current Valves integration without calling the removed valve rebuild interface. It retains the original pipe settings and recipes.

Requires Factorio 2.1.24 or later. Disable `Flow Control` before enabling this fork. Required content and optional integrations are listed in the mod dependencies.

Valve behavior and valve migrations belong to the separate Valves mod. The original Flow Control pipe settings remain available.

[Mod Portal](https://mods.factorio.com/mod/flow-control-updated) · [Source](https://github.com/FactorioMods/flow-control-updated) · [Original mod](https://mods.factorio.com/mod/Flow Control) · [Original source](https://github.com/snouz/Flow-Control)

Original work by GotLag. Maintained by FactorioMods.

## Technical validation

A native Factorio 2.1.24 fixture converted 12 pipe/valve entities across four directions and retained held items and recipe unlocks. Separate flow checks covered forward flow and blocking behavior. These checks do not establish lossless migration of custom old valve health or fluid buffers.
