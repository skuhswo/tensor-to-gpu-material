# Datenblatt: Palmer Penguins (Rohdaten, Projektaufgabe LE04)

## Quelle

- Datei `penguins_raw.csv`: Feldbeobachtungen an drei Pinguinarten auf drei Inseln des Palmer-Archipels (Antarktis), Palmer Station Long Term Ecological Research, Saisons 2007/08 bis 2009/10. Erhoben von Kristen B. Gorman, veröffentlicht in Gorman, Williams, Fraser: *Ecological sexual dimorphism and environmental variability within a community of Antarctic penguins (genus Pygoscelis)*, PLoS ONE 9(3), 2014. Die Datei ist die unveränderte Rohdatentabelle aus dem R-Paket palmerpenguins (Horst, Hill, Gorman, 2020), abgerufen von https://raw.githubusercontent.com/allisonhorst/palmerpenguins/main/inst/extdata/penguins_raw.csv.
- Lizenz: CC0 1.0 (Public Domain Dedication). Die Daten dürfen ohne Einschränkung weitergegeben werden; die Quellenangabe ist eine Höflichkeit, keine Bedingung.
- 344 Zeilen, 17 Spalten, fehlende Werte als `NA`. Keine Eingriffe; die Datei wird so verwendet, wie sie veröffentlicht ist.
- SHA-256: `144f623143c9360fd77322a4f86acb06dc198814dbd2669724c63e6457b907bd`

## Spalten

| Spalte | Bedeutung | Werte |
|---|---|---|
| `studyName` | Erhebungssaison | `PAL0708`, `PAL0809`, `PAL0910` |
| `Sample Number` | laufende Nummer innerhalb einer Saison und Art | 1 bis 152 |
| `Species` | Art mit lateinischem Namen | `Adelie Penguin (Pygoscelis adeliae)`, `Gentoo penguin (Pygoscelis papua)`, `Chinstrap penguin (Pygoscelis antarctica)` |
| `Region` | Region | immer `Anvers` |
| `Island` | Insel | `Biscoe`, `Dream`, `Torgersen` |
| `Stage` | Lebensphase bei der Beobachtung | immer `Adult, 1 Egg Stage` |
| `Individual ID` | Kennung des Tiers innerhalb der Saison | 190 verschiedene Werte, eindeutig erst zusammen mit `studyName` |
| `Clutch Completion` | Gelege mit zwei Eiern beobachtet | `Yes`, `No` |
| `Date Egg` | Datum des ersten Eis | 2007-11-09 bis 2009-12-01 |
| `Culmen Length (mm)` | Schnabellänge (Firstlänge) | 32.1 bis 59.6, 2 fehlend |
| `Culmen Depth (mm)` | Schnabeltiefe | 13.1 bis 21.5, 2 fehlend |
| `Flipper Length (mm)` | Flossenlänge, ganzzahlig | 172 bis 231, 2 fehlend |
| `Body Mass (g)` | Körpermasse | 2700 bis 6300, 2 fehlend |
| `Sex` | Geschlecht | `MALE`, `FEMALE`, 11 fehlend |
| `Delta 15 N (o/oo)` | Stickstoff-Isotopenverhältnis aus Blutproben | 14 fehlend |
| `Delta 13 C (o/oo)` | Kohlenstoff-Isotopenverhältnis aus Blutproben | 13 fehlend |
| `Comments` | Feldnotiz zur Beobachtung | 290 leer; die übrigen erklären fehlende Werte, etwa `Adult not sampled.` oder `Not enough blood for isotopes.` |

Zwei Tiere (Saison 2007/08, Nummer 4; Saison 2009/10, Nummer 120) haben keine Messwerte, der Kommentar lautet `Adult not sampled.`. Es gibt keine doppelten Zeilen.

## Verwendung

Die Projektaufgabe zu LE04 bereinigt diese Tabelle nach einem selbst formulierten Vertrag (Arten als Kurznamen `Adelie`, `Chinstrap`, `Gentoo`, Maße als Zahlenspalten ohne Lücken, Kategorien `island` und `sex`) und speichert die bereinigte Fassung als Übergabe an LE05. Isotopenwerte, Kennungen, Kommentare und die konstanten Spalten werden dabei entfernt.
