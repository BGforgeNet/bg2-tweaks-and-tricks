## Rozgrywka i zmiany zasad

Zmiany dotyczące różnych zasad, opcji walki itd.

- [Uczciwe walki](#uczciwe-walki)
  - [Zmiany tylko dla wybranych przeciwników](#zmiany-tylko-dla-wybranych-przeciwników)
  - [Usuń również nieupuszczalne przedmioty dające przeciwnikom nieuczciwą przewagę](#usuń-również-nieupuszczalne-przedmioty-dające-przeciwnikom-nieuczciwą-przewagę)
- [Ograniczenia nabijania PD](#ograniczenia-nabijania-pd)
- [Karsomir nie może zostać wykradziony](#karsomir-nie-może-zostać-wykradziony)
- [Prawdziwe Wielkie mistrzostwo według zasad PnP](#prawdziwe-wielkie-mistrzostwo-według-zasad-pnp)
- [Rozsądne ograniczenia wieloklasowe](#rozsądne-ograniczenia-wieloklasowe)

### Uczciwe walki

W grze zdarzają się sytuacje, że przeciwnicy mają statystyki albo zdolności, które są po prostu nieuczciwe albo kompletnie nierealistyczne.

Czasem robi się tak po to, żeby gracz nie mógł obejść fabuły, a czasem bez żadnego sensownego powodu. Jeśli jednak chcesz stanąć z nimi do uczciwej walki, ten komponent to umożliwia.

#### Zmiany tylko dla wybranych przeciwników

- Arkanis Gath, strażnik Renala – teraz możesz z nim walczyć.
- Bayard, poszukiwacz przygód w piwnicy Wieży Durlaga – usunięto wrodzoną odporność na magię.
- Borda, oszukujący kupiec-mag z BG1 – usunięto 100% odporności na magię.
- Dushai, niziołek, poszukiwacz przygód z Brody Ulgotha – usunięto wrodzoną odporność na ogień i magię.
- Drizzt, wersja BG1 – KP, rzuty obronne, odporności i liczby ataków na rundę obniżone do wersji PnP. Nadal jest potężny jak na BG1, ale już nie absurdalnie.
- Laskal, druid cienia z Kniei Otulisko – nie jest już niewinny, bo atakuje pierwszy.
- Kahrk, najpotężniejszy ogrzy-mag – usunięto Odbicie czaru.
- Malchor Harpell, przyjaciel Drizzta, który więzi całą drużynę bez możliwości ucieczki. Teraz możesz z nim walczyć.
- Phandalyn, fanatyczny paladyn z Wrot Baldura – nie jest już niewinny, bo atakuje pierwszy.
- Shandalar, arcymag z Brody Ulgotha – usunięto 90% wszystkich odporności, nie jest już niewinny.
  **Uwaga:** to nie daje mu lepszego AI – użyj moda typu SCS, jeśli chcesz, by walka była wyzwaniem.
- Winski Perorate w labiryncie – nie jest już niewinny.

Jeśli zepsujesz fabułę, zabijając kluczowego NPC, to już wyłącznie twoja odpowiedzialność. Stosuj z rozwagą.

#### Usuń również nieupuszczalne przedmioty dające przeciwnikom nieuczciwą przewagę

Oprócz powyższej listy, wiele stworzeń w grze nosi przedmioty, które dają im różne ochrony i premie, takie jak Klosz niewrażliwości mniejszej, Szybkość itd. Kahrk jest jednym z najbardziej znanych przykładów, ale nie jedynym.

Twórcy prawdopodobnie chcieli w ten sposób zrekompensować słabe AI, jednak dziś istnieje wiele modów poprawiających AI, takich jak SCS, który pozwala przeciwnikom również się prebuffować. Przy silnym AI dodatkowe darmowe ochrony są nieuzasadnione i zwyczajnie niesprawiedliwe.

Ten komponent usuwa wszystkie takie przedmioty ze wszystkich stworzeń.

To komponent dla zaawansowanych użytkowników – nie został gruntownie przetestowany. Stosuj z rozwagą.

### Ograniczenia nabijania PD

Wyłącza możliwość nabijania PD w najczęściej wykorzystywanych miejscach BG1:

- Jaskinia z wiwernami
- Jaskinia z golemami
- Jaskinia z ankhegami
- Pułapka z kościanym wojownikiem w Wieży Durlaga

### Karsomir nie może zostać wykradziony

Naprawdę myślisz, że możesz ukraść ogromny miecz oburęczny starożytnemu czerwonemu smokowi? Daj spokój, Bilbo, bądź poważny.

### Prawdziwe Wielkie mistrzostwo według zasad PnP

Powszechnie wiadomo, że Wielkie mistrzostwo zostało „dla zachowania balansu” osłabione w BG2. Istnieje mod W. Weimera, który przywraca je do oryginalnej, nieosłabionej wersji; jest też opcja pozyskania Wielkiego mistrzostwa przez postacie wieloklasowe.

W PnP nie każdy wojownik powinien móc zostać Wielkim mistrzem. Jest to dostępne tylko dla wojowników jednoklasowych. Prawdopodobnie dotyczy to także postaci z podklasami. Niestety w BG2 prawie wszystkie klasy podstawowe są słabsze niż dostępne podklasy.

W PnP Prawdziwe mistrzostwo prawie podwaja szansę na trafienie krytyczne, obniżając wymóg rzutu z 18+ do 16+. Nie da się tego jednak zaimplementować w silniku Infinity.

Zamiast tego komponent wprowadza następujące zmiany:

1. Wielkie mistrzostwo (5 punktów) daje 1 dodatkowy atak więcej niż Specjalizacja, czyli „nieosłabioną” wersję, jak w Baldurdash i Tweaks Anthology. Tylko wojownik jednoklasowy może osiągnąć Wielkie mistrzostwo. Są od tego dwa wyjątki:
   - Łucznik może osiągnąć Wielkie mistrzostwo w łukach i kuszach.
   - Kensai może osiągnąć Wielkie mistrzostwo w mieczach. Miecze nie obejmują sztyletów. Kensai jest ograniczony do 2 punktów w innych broniach do walki wręcz.
2. Prawdziwe mistrzostwo (4 punkty) daje 0,5 dodatkowego ataku więcej niż Specjalizacja, czyli o 0,5 mniej niż Wielkie mistrzostwo. Tylko wojownicy mogą osiągnąć Prawdziwe mistrzostwo.
3. Berserker i kensai nie otrzymują już premii do TraK0 i obrażeń wynikających z podklas przy używaniu miotanych wersji broni, takich jak topory do rzucania.
4. Inne kombinacje klas i biegłości pozostają bez zmian.

Daje to pewną zachętę, by zacząć jako wojownik jednoklasowy lub nawet dwuklasować do wojownika.

### Rozsądne ograniczenia wieloklasowe

Z jakiegoś powodu niektóre klasy są dostępne dla danej rasy, ale ich kombinacje wieloklasowe już nie. Na przykład niziołek może być kapłanem i złodziejem, ale nie kapłanem/złodziejem. Prawdopodobnie zrobiono to dla „balansu”. Nie wiem, czy tak jest w PnP, a jeśli tak – jak to tam wyjaśniono, ale wydaje się to dziwne.

Ten komponent pozwala każdej rasie wybrać dowolną kombinację wieloklasową, o ile rasa ma dostęp do wszystkich klas w tej kombinacji.
