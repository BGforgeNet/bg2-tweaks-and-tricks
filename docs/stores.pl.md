## Sklepy

- [Sklepy zawsze kupują towary po tej samej niskiej cenie](#sklepy-zawsze-kupują-towary-po-tej-samej-niskiej-cenie)
- [Eliminacja nadużyć kradzieży w sklepach](#eliminacja-nadużyć-kradzieży-w-sklepach)
- [Nieograniczona liczba zbroi z ankhega u Taeroma](#nieograniczona-liczba-zbroi-z-ankhega-u-taeroma)
- [Porządki w sklepach](#porządki-w-sklepach)
- [Ograniczone zasoby w sklepach](#ograniczone-zasoby-w-sklepach)

### Sklepy zawsze kupują towary po tej samej niskiej cenie

System obniżania cen kupowanych przedmiotów nigdy nie działał w BG tak, jak powinien. Gra przelicza cenę dopiero po kliknięciu przycisku sprzedaży, przez co można było korzystać ze znanego nadużycia: sprzedawać przedmioty większymi partiami, aby uzyskać za nie jak najwyższą cenę. A to oczywiście prowadziło do ciągłego przekładania przedmiotów w ekwipunku.

Ten komponent:

1. Wyłącza obniżanie cen skupu w sklepach. Cena, po jakiej sklep kupuje przedmioty, pozostaje stała niezależnie od tego, ile takich samych przedmiotów ma już na stanie.
2. Ustawia cenę skupu na stałym, niskim poziomie – takim, jakby sklep miał już duży zapas danego towaru i oferował za niego minimalną cenę.

W praktyce oznacza to, że z jednej strony nie trzeba już pilnować, kiedy, co i komu najlepiej sprzedać. Z drugiej strony gracz zdobędzie ogólnie mniej złota. Jeśli często korzystaliście ze sprzedawania przedmiotów partiami, różnica będzie szczególnie odczuwalna.

### Eliminacja nadużyć kradzieży w sklepach

Eliminuje nadużycie związane z nieskończonymi pieniędzmi, które działa na zasadzie ukradnij, sprzedaj, po czym ponownie ukradnij, ponownie sprzedaj itd.

Opcje:

##### Nie można okradać paserów

Możesz kraść u zwykłych kupców, ale nie u tych, którzy sami kupują kradzione przedmioty.

##### Nie można kraść w żadnym sklepie

Całkowicie wyłącza możliwość kradzieży w sklepach.

### Nieograniczona liczba zbroi z ankhega u Taeroma

To trochę absurdalne, że Taerom ciągle narzeka, że interes idzie słabo, a jednocześnie zrobi ci tylko jedną zbroję z ankhega – nawet jeśli masz i pieniądze, i materiały.

Ten komponent pozwala mu wykonać tyle zbroi, ile potrzebujesz.

### Porządki w sklepach

Usuwa różne przedmioty zaśmiecające sklepy. Interfejs sklepu pokazuje tylko 4 przedmioty naraz, a przewijanie szybko staje się irytujące.

- Usuwa niemagiczne buty, bransolety i pasy ze wszystkich sklepów. I tak są bezużyteczne.
- Wiele sklepów sprzedaje wiele kopii tego samego przedmiotu, nie mylić ze stosami, albo przedmioty funkcjonalnie identyczne. Na przykład istnieje kilka rodzajów zwykłych puklerzy, różniących się tylko kolorem. Wszystkie duplikaty i przedmioty identyczne funkcjonalnie są usuwane. Ogólna liczba przedmiotów pozostaje taka sama, więc nie tracisz dostępu do niczego.

### Ograniczone zasoby w sklepach

Posiadanie nieograniczonej liczby czegokolwiek w sklepie wygląda dziwnie. Jeszcze dziwniej, gdy dotyczy to przedmiotów magicznych – zwojów, mikstur itd.

- Liczebność każdego „nieskończonego” przedmiotu w sklepie jest ograniczona do maksymalnie 30. Wyjątek stanowią niemagiczna amunicja i bronie miotane – te pozostają bez zmian.
- Liczebność każdego magicznego nieskończonego przedmiotu jest ograniczona do 10.
