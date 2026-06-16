## Zestawy dźwięków

**Language:** [English](soundsets.md) | Polski

- [Rozszerzone zestawy dźwięków dla NPC](#rozszerzone-zestawy-dźwięków-dla-npc)
- [Komplementy i przytyki](#komplementy-i-przytyki)
- [Brak komentarzy o udanym ukryciu się w cieniu](#brak-komentarzy-o-udanym-ukryciu-się-w-cieniu)
- [Udostępnienie zestawów dźwięków NPC dla postaci gracza](#udostępnienie-zestawów-dźwięków-npc-dla-postaci-gracza)

### Rozszerzone zestawy dźwięków dla NPC

- [Dodaj tylko brakujące kwestie](#dodaj-tylko-brakujące-kwestie)
- [Preferuj dźwięki z BG1](#preferuj-dźwięki-z-bg1)
- [Preferuj dźwięki z BG2](#preferuj-dźwięki-z-bg2)

Ten komponent rozszerza zestawy dźwięków niektórych NPC, wykorzystując ich kwestie z BG1 w BG2 i odwrotnie.

Przykład: Jaheira w BG1 ma tylko jeden okrzyk bojowy: „Za poległych!”. W BG2 ma dwa dodatkowe:

```
- „Gryź ziemię, upadła istoto!”
- „Matka natura daje życie i ona je odbiera!”
```

Ten komponent dodaje te kwestie Jaheirze w BG1. Dodaje też jedną dodatkową linię z dialogu mówionego. W efekcie zarówno BG1, jak i BG2 Jaheira ma łącznie cztery okrzyki bojowe:

```
- Za poległych!
- Gryź ziemię, upadła istoto!
- Matka natura daje życie i ona je odbiera!
- Teraz umrzesz naprawdę!
```

W niektórych przypadkach zestaw dźwięków jest zbyt duży, by zmieścić wszystko naraz – stąd trzy warianty instalacji:

#### Dodaj tylko brakujące kwestie

Dodaje tylko to, czego brakuje. Po przejściu między BG1/BG2 zestawy dźwięków mogą się zmienić.

#### Preferuj dźwięki z BG1

Zachowuje styl BG1. Po przejściu między grami zestawy dźwięków pozostają spójne.

#### Preferuj dźwięki z BG2

Zachowuje styl BG2. Po przejściu między grami zestawy dźwięków pozostają spójne.

Jeśli opis wydaje się zbyt zagmatwany, a chcesz po prostu więcej kwestii dźwiękowych – wybierz „Dodaj tylko brakujące kwestie”.

### Komplementy i przytyki

- [Przywróć](#przywróć)
- [Przywróć i dostosuj do liczby FPS](#przywróć-i-dostosuj-do-liczby-fps)
- [Wyłącz](#wyłącz)

Interakcje między członkami drużyny w BG1 nie opierały się na klasycznych rozmowach, lecz na krótkich, spontanicznych komentarzach – pochwałach i obelgach – pojawiających się nad głowami postaciami w czasie rzeczywistym bez okna dialogowego.

Przykłady:

```
- Jaheira: „Jesteś zabawny w ten »co z tobą, u licha« łagodny sposób.”
- Edwin: „Uważaj, co do mnie mówisz, albo twe słowa wrócą do ciebie na czubku mojego buta!”
```

Ten komponent pozwala przywrócić tę funkcję również w części BG2, tylko w instalacjach BGT/EET.

#### Przywróć

Przywraca pochwały i obelgi w BG2 oraz lekko rozszerza je w BG1.

#### Przywróć i dostosuj do liczby FPS

Oryginalne BG1 działało w 30 FPS, a wyzwalacze pochwał i obelg były do tego dostosowane. BG2 może działać nawet w 90 FPS, co czasem powoduje nakładanie się kwestii. Ta opcja dostosowuje je do aktualnej liczby FPS.

*Uwaga: na Linuxie i Macu wymagany jest wine w PATH.*

#### Wyłącz

Wyłącza pochwały i obelgi, jeśli ktoś woli, by drużyna była mniej gadatliwa. Nie wpływa to na zwykłe rozmowy kompanów.

### Brak komentarzy o udanym ukryciu się w cieniu

Wyłącza kwestie dźwiękowe wypowiadane przez towarzyszy, gdy są w trybie ukrycia w cieniu, na przykład Yoshimo mówiący „Cały świat jest ślepy, gdy przechodzę obok”. Przydatne, jeśli używasz skryptów zwiadu złodzieja, ponieważ notoryczne odzywki potrafią szybko stać się irytujące.

### Udostępnienie zestawów dźwięków NPC dla postaci gracza

Pozwala używać zestawów dźwięków oryginalnych NPC BioWare jako głosu głównej postaci.
