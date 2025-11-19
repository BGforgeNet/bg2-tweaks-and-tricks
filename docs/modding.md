# Modding notes

Various notes for modders.

- [Faster forging dialogs](#faster-forging-dialogs)

## Faster forging dialogs

You can easily add your items to the crafting lists. Copy-paste the example into your mod and edit the APPEND list as necessary. When TnT is installed after your mod, it will see your items in `g_forge.2da` and add them to the corresponding dialogs.

```
<<<<<<<< .../tnt-inlined/g_forge.2da
ITEM    TYPE    PRICE   CROMWELL    CESPENAR    INGREDIENTS
>>>>>>>>
ACTION_IF NOT FILE_EXISTS_IN_GAME ~g_forge.2da~ BEGIN
    COPY ~.../tnt-inlined/g_forge.2da~ ~override/g_forge.2da~
END
APPEND g_forge.2da
~
# Ankheg plate
plat06      armor   5000    1           1           misc12
# Crom Fayer
hamm09      weapon  10000   1           1           scrlag,hamm07,brac06,belt08
# Dagger of the Star
dagg21      weapon  5000    0           1           dagg22,5*misc41
~
```

1. Column names are self-explaining.
1. Lines starting with __#__ are ignored.
1. Ingredients are comma-separated, no spaces.
1. Multiple items of the same type can be required like so: `5*misc41` (5 Star Saphires).
1. `TYPE` can be `armor`, `weapon`, or `trinket`. Each goes into its own dialog tree.
