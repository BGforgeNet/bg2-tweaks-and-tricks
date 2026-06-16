# Uwagi dla modderów

**Language:** [English](modding.md) | Polski

Różne uwagi dla modderów.

- [Szybsze dialogi wykuwania przedmiotów](#szybsze-dialogi-wykuwania-przedmiotów)

## Szybsze dialogi wykuwania przedmiotów

Możesz łatwo dodać swoje przedmioty do list wytwarzania. Skopiuj przykład do swojego moda i odpowiednio zmodyfikuj listę `APPEND`. Jeśli TnT zostanie zainstalowany po twoim modzie, wykryje twoje przedmioty w `g_forge.2da` i doda je do odpowiednich dialogów.

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

1. Nazwy kolumn mówią same za siebie.
1. Linie zaczynające się od **#** są ignorowane.
1. Składniki są oddzielane przecinkami, bez spacji.
1. Można wymagać kilku przedmiotów tego samego typu, np. `5*misc41` (5 gwiezdnych szafirów).
1. `TYPE` może mieć wartość `armor`, `weapon` albo `trinket`. Każdy typ trafia do osobnego drzewa dialogowego.
