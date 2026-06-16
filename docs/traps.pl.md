## Pułapki

**Language:** [English](traps.md) | Polski

Eksplorowanie lochów w grach na silniku Infinity Engine potrafi być męczące, zwłaszcza jeśli to miejsce dobrze znane, a gracz musi co chwilę czekać, aż Wykrycie pułapek „zaskoczy”.

Tu znajdziesz kilka komponentów zmieniających działanie pułapek:

- [Natychmiastowe wykrywanie](#natychmiastowe-wykrywanie)
- [Zwiększ zasięg wykrywania](#zwiększ-zasięg-wykrywania)
- [Przypomnienia o pułapkach](#przypomnienia-o-pułapkach)
- [Intuicyjne wykrywanie pułapek](#intuicyjne-wykrywanie-pułapek)
- [Komponent główny](#komponent-główny)
- [Poprawki pułapek](#poprawki-pułapek)

### Natychmiastowe wykrywanie

Wszystkie pułapki zostaną wykryte niemal natychmiast – o ile postać wykrywająca ma wystarczająco wysoki poziom umiejętności.

### Zwiększ zasięg wykrywania

Zwiększa zasięg wykrywania pułapek do granicy pola widzenia.

### Przypomnienia o pułapkach

Po wykryciu pułapki wyświetli się na ekranie stosowna informacja – w zależności od wybranej opcji może pokazywać:

- jej typ albo
- po prostu napis „Pułapka”.

### Intuicyjne wykrywanie pułapek

Członkowie drużyny potrafią wyczuć pułapkę – zauważyć, że coś jest nie tak, i ewentualnie zareagować, zanim pułapka zostanie formalnie wykryta dzięki umiejętnościom złodzieja.

Do wyboru jest:

- intuicja działająca tylko poza walką
- lub taka, która wykrywa pułapki również w trakcie walki.

Na podstawie intuicji można wykonać kilka działań:

- Pauzowanie gry może nastąpić tylko przy pułapkach znajdujących się na ziemi albo przy wszystkich pułapkach. To nie to samo co opcja gry „pułapka wykryta” – tam pauza następuje po wykryciu. Tutaj pauza pojawia się wcześniej, gdy postać tylko podejrzewa, że coś jest nie tak.
- Automatyczne włączenie Znajdowania pułapek, jeśli klasa postaci na to pozwala.
- Wyśrodkowanie ekranu na postaci albo na podejrzanej lokalizacji.
- Odtworzenie dźwięku wykrycia pułapki.

### Komponent główny

Do działania wcześniejszych komponentów dotyczących pułapek wymagany jest Komponent główny. Wyliczone wcześniej komponenty tej sekcji instalowane po zainstalowaniu komponentu głównego nie będą działać.

### Poprawki pułapek

Różne drobne poprawki dotyczące pułapek. To jedyny komponent Ulepszonych Pułapek, który nie wymaga Komponentu głównego.

- W oryginale Horrory Bitewne Davaeorna można było ominąć rozbrajając odpowiednie pułapki, co było dość absurdalne i prawdopodobnie było przeoczeniem twórców. Teraz te pułapki są niewykrywalne i nierozbrajalne.
- Nierozbrajalna pułapka, czyli ołtarz na 3. poziomie Wieży Durlaga, staje się możliwa do usunięcia.
