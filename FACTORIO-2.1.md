# Factorio 2.1 migration compatibility

Flow Control 3.2.5 supports the native valve entities used by Valves 3.0.0 on Factorio 2.1.24. Native valves need no hidden companion entities. Older Valves releases still receive their rebuild_all remote call when that interface exists; absent optional integration remains pending.

The original entity/item JSON mappings and recipe/prototype behavior are unchanged. The engine resets recipe/technology states on mod/prototype changes. Native headless regression reproduced the absent interface failure with original 3.2.4; 3.2.5 passed the same configuration handler. A separate 12-entity fixture verifies engine conversion positions, directions, item mappings and recipe unlocks, followed by native fluid operation. Engine type conversion invalidates old LuaEntity references and replaces health/fluid state; this inherited limitation requires separate assessment for old saves containing valves with fluid. No same-type migration bridge has been added.

Original source history/authors and MIT license are retained from snouz/Flow-Control. No graphics or connected-client UI checks are claimed.

Public derivative flow-control-updated 1.0.0 preserves original authorship and license. Native migrates_from retains prototype identities and transfers owned objects; runtime controls adopt the complete original storage root. Literal prototype, setting, remote and metatable identifiers remain unchanged. Shared required dependencies and asset paths use the corresponding public derivative namespace. Original-ID feature validation remains in the private work directory; public native load validation is recorded separately.
